Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3B02288DD
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733949954; cv=none; b=g3mLA6C4PsINb0y3K5oN52CcUFNqKQxIyfu/afJCMrqhLE5v1LavxtgIW3OwA3yrof5YttaqndxzF5LrA0gfkFFZnxaesjxfcwAYqJMdqOVDHaPVJZHtHqzhGXNbRfurQ8dPLUhhSVyMO7FqRji8DOoQOYZJhmTHOyplqNwSL1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733949954; c=relaxed/simple;
	bh=hCfgIjVIsf8+fUE0gDliQH5EiEFvjuBgWmujn8WFFVk=;
	h=To:Subject:From:Message-Id:Date; b=mIukS17BWymk/rHH3axSJ3LiPZsC10ig4sSbOASDLkNc786bSKA8vm7+zsoqEX6DfKH6XBX3UqFmIG6fdtbTbfFtaakGLoNEsyN7SV0tDW8t155ts96tsksZrJZUVhWsb4mlXXvR6nrPaMioXnj0gJ5vwmE0DXYigiTZX6rran0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRfd+PGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRfd+PGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3188C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733949953;
	bh=hCfgIjVIsf8+fUE0gDliQH5EiEFvjuBgWmujn8WFFVk=;
	h=To:Subject:From:Date:From;
	b=hRfd+PGnW7gNziVk/ZCUfTBdG37PfmRFLg4pbLnJoKtAnbqQtZ16v18PO+lkFM/2M
	 UqarO2WzkSeBbgAUIASrOYpxS7TMTly+TWzLfcVCIc401tV7kYgH3GCroohT2kwN6+
	 3YC5nEGizXiVNwuZhQ8zM18iYKfRdTSTSQ3tARkRN+DHbd2PlLXkwB5/Sn6YoVtFcI
	 UxSAeCkL10Tju5Tc+TVQvqyNITueU1agmQMRSa/krq9gRhRWfn0NsSZsHHto39Hvwe
	 eTjj9BwI5GWY/XHV5lii+VHypDEsiJc369sTVADYfWNqKIhRma2y/SRit3YQdUUCRJ
	 wjYAsatVvUiWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D97FE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173394995363.2786.9922946278657361351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1a12ae6f5b54cefc86540c5853a0817878e16b84845a9b1f06d543ef4e2294
Date: Wed, 11 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733949953
