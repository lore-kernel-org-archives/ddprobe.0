Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16B31B85F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762085394; cv=none; b=kMhNdYg757tHbe3fAXEQ6V8+g0Z0GNgaP5OsI+9XQOd2//AgANJLmNfMJebpidN0rU9fp/virYSp8tRlE16lrYVqCHbajU8tdMLfcVX4Fxj746pQXCNAX1Bcw0zi3vLRaVqQyx/HQIFTpdJddAbJqZToImzU+o2W861jg/cG/Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762085394; c=relaxed/simple;
	bh=06p9pnWnMwG4Y4WZK+Ox8MzqrjwJf5vM0MtPEE6QKqk=;
	h=To:Subject:From:Message-Id:Date; b=XtjmgOiuIlaloF/IxoCDmzryR/bBXwr3wZiJX9DQffvN/y88ahhtveWXRSrflucrF2bDM6vogak1LkAOb7hmzugMU0Ekp8XmWVQ/7pvHi40k0XSqIAGYXCXqA/c0AxyY+um3PjFm1FQrZvE53Z2znMCaXc7b7pxqHmlBBwRtqgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3XoJ1ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3XoJ1ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1220C116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762085393;
	bh=06p9pnWnMwG4Y4WZK+Ox8MzqrjwJf5vM0MtPEE6QKqk=;
	h=To:Subject:From:Date:From;
	b=D3XoJ1axFfC8YJT0lNqfjI7qyTK9N/NZsJ7LhsaaCTAtXDf5WDjISGh+t7jH3t58q
	 vybwanznbL1SkpZJMfnAPqK1uopCds4K/R+tSpaPu2kVx/IYV2cg6WrLVOyNtjnQjO
	 ZVYyhWD4UvVGjzS3Vg0orfPebJ360I92CijJflygA6eTvn2LT7dzb+DNW79o99JULa
	 xvNNsQUJ1U91lGb16TGHDYEjt15SUBETgYsJjlGMBd4iC1ip7hsmWkRQSGrkBLymV/
	 igHT2AcHktoIOrYLWyYwMxBpIpNrLvbbCQV50BBpRwTmImWThvssEq9UcEQrBI4ef1
	 xGnsngtIa7cLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CF2CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208539360.1721.15631522530731982212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca98fe68b458be7367f430c42427d188422d02528e67f5812a2dbc7e2141c8b
Date: Sun, 02 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762085393
