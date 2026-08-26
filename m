Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA2B33374F
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787720434; cv=none; b=aPzMpCficej6P9kk4AY1ZL7qiGwMoyciDuLLMyazTSmYDDuH8G3pc9QL61qa4py+4/86UR+bQa9P6msQf61DbxQdeduk36VUCkQEQr/KZMQe1vwBtZc+uxH3S+kUs22t7l0qQjaHbXWQzBFREOhTHcr+C8bj5wMauCyZDhRTsw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787720434; c=relaxed/simple;
	bh=2NPMnETTx/OOO34dll8K/RbB6euVsAeQx35dApv70rg=;
	h=To:Subject:From:Message-Id:Date; b=t7gOc9qOXPS+KtH+AqQfKoM/oDG+K5CFlwySzBPZncAaBsnSQGfgGTGPL7yNfB9XvtYWjwf7XMOfF1cRjbflSta9AY6nCNXdB0NQB45/biNuQe8V0Lt+4x0qQstbSUx+JVC9y4ebPCNzp6tF9RYXDEmqpTvc0swHxYqoJzTeDew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuyVICcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuyVICcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64F8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787720433;
	bh=2NPMnETTx/OOO34dll8K/RbB6euVsAeQx35dApv70rg=;
	h=To:Subject:From:Date:From;
	b=AuyVICcdvH5KQ+ClGvSO3UlRswfPmFOrCRSM7chpIuDMbuWk+SCT5RfrDh2Dko/NJ
	 BpeAueR/OmKvbKndN2ko/+PxXXERamKnrHc0ttPvU9ryyziqiAXQPEN6STTpE73hz9
	 4zBvie5Vce/m+ZtXgsY6YLkunzWKI7ZLseR6rFg8symO9xFNbkH1U3QHTna5cRY6d8
	 L3IU4C6cwWqTA4yYx2VuiRZEyVqKv1ONUU2Zp2RPBqNymBymqDtHueEaM6eImE9Jq7
	 VkDXzv/eYL+1AUTgm7Gk38UoBgED6W2umBh20/d+m39c9Wx7S2Coq0hwUjzoT3Igks
	 YJGP+Ac8vLxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5EDC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772043368.27226.14759758968676546746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee9c5ab1f4ac2d8b03ece393cc085a8533797f5afad090de8a40484d02cbe46
Date: Wed, 26 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787720433
