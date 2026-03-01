Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA182E54B6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772346294; cv=none; b=PLPXbmn7SvyOBj0r26qBsVogLx/Mt6LUKz+bEyQCwb+03zLyD58mWRLBC4i+3L9RhffWONRIGkvYwUIm+C+P8QMfOm8XgZ23mAJyhKzHOLdejizRwjxoRtdC0gpdFn07L6T8u54xJ2pvAiyBWXAcDfroOmI1qhhxw3UGuC2XBOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772346294; c=relaxed/simple;
	bh=x3UxPCXzMo+pCfeTZEdhWCVGMg8ONI8u7E5qRUrSaLc=;
	h=To:Subject:From:Message-Id:Date; b=sHnF7yDK/v4tAKuzadR5U1YWCtH4BtJ/lezSI3mh0pBMPeOr4Khjhy1oNIRUHWE0iPPXRRAdFdpcJgyrmT3rHczCqa3GjlE5IOquWWomsWZw81e70woGhWdL8d4atzvscmX/Y6tfvUVdC/B7T/bt5lO9s8QaK50CzwXYWtv45lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+x7rzqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+x7rzqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB590C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772346293;
	bh=x3UxPCXzMo+pCfeTZEdhWCVGMg8ONI8u7E5qRUrSaLc=;
	h=To:Subject:From:Date:From;
	b=W+x7rzqi5V331a0uSjzmFl4+yrHhi4HiM9NXxA4qPXj6VH86U7eJGy4gSmvbRwIfW
	 kGViSdNcst2SNcS8tIEjZ7EClIwI/kzKgyhgoWWUFu1NMFZAtWqxtt+/txued9Tl3k
	 5H8kKcu2fpxqDHPbF10H5V0jLmYDlQv0/r8+ykG+ffowSeTONzA0PZvIzAcs+DDyv2
	 TKGr4X0eZxC4QIgcS7xeDdwFTl7vpuZ5Ok14cMOrpY9qgtl2zgUbZ/TjWN9wrKornE
	 Oqp34H1iU6S/DdpF4bthYYY8UNTnKExw4wwXmWKGD3jNV2CglyGhRnWEmbHGS7EuFt
	 nCNarXbuVfJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9662BFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234629358.14809.13455437343271816573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f127060cb50cfe8001a35060281f7cd205e4432aee4f0085b78a8089dd5bb448
Date: Sun, 01 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772346293
