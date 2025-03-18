Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8FFDDC5
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742335794; cv=none; b=P5bgaGxjxMX9Jzzd9TZ1ylspOHks6cAZ+aEQPuHVZ/+WrDqvnOPqZ7OURJ5N1L1R8o1L1kLDT041qWhQGvrMKj6cjbIZFDrYKrQYFMuDxV8poLnnwkjfqgDHFaO8bDHKZvTOcvdYt6UKRVTVzdePvitCUeJnjQy5vRcvxpi0ORY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742335794; c=relaxed/simple;
	bh=PXkulZhWSFq7IOZScX5fsP1KWqddvoDg14MUeJtNQ+Y=;
	h=To:Subject:From:Message-Id:Date; b=JMpC3QGAxDDKncwJUr2rQeeF2Q7PfBc9bUCvmL0tw9dIFVyg7UoZiZ7/5s+e0K62kb9Nk6l3EUlbzO1FpjwRIRRmU+eLg4xFVVz5k2/Ijwveoy9ShZ+PLYuh+f00HX6Osjbjf2B+v6Ix0YiZK/HxjZGfd0KDnz62iB0ZdT0yZ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reZqSokE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reZqSokE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A44C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742335793;
	bh=PXkulZhWSFq7IOZScX5fsP1KWqddvoDg14MUeJtNQ+Y=;
	h=To:Subject:From:Date:From;
	b=reZqSokEwlOl02jhO95kzhlTwpRgmciU28s8WKuYHgH8XJlTst6NrtcSPm816ytG5
	 wBt2AA87CxCPUFbDOqk3lRQx7vauPckFh1yEycoBM8eEZkt+VOAYDiyLVHRsV8DAcP
	 jiYL2Hv6d5wxiPyNyYYPZxx3niXsFszQnUdaH4QjBonfUmI4MGrsFzFN0/IdPsAvwe
	 pXIzho06UJzsUkv1IKTxchdcixoDuWbioFOZT53eRbURd5jay95oJlXdaww9NqwEe7
	 YRUW+4yUPNBCb5QcVlvQ9SRV37C3Xqi0laCcG5osNtae7AQX4BrUPvalY7yrsrixq3
	 0LicP1Oa8lv0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B070CC35FF3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233579367.5001.6600555729432822907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9167d5becccf054fbec4bc2474cc375a6edcd9c3b359f2bd60ae88ec59dacde2
Date: Tue, 18 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742335793
