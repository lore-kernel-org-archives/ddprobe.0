Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF3337C904
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776056254; cv=none; b=q7opV5MyDcFzU/WD/aoGNZbn8+G6mTPVXD99RFHVpFTJ348O3knfwgz/7KjSUf5SyEVAjz/xSdZIXMskbwTlcXa8GFjXUbSAmBvDeYrbSmDkXStDWTLIBNZq/vFIEp9DSzSazirAUljy7onHyj4ouSYWpL2MaxxkyP1U3GOkMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776056254; c=relaxed/simple;
	bh=pAD6BANjEbEFTDvzTg3vA77oYAR2IUZCF1Bw4vyAwXE=;
	h=To:Subject:From:Message-Id:Date; b=SSSX2ur2lXPPZ9OM+L60tkW873aAJgDviv39V+Xi1ezTeTKCstDPlfUY5aPJrT8bK5JIoQrPoVbqygkspavMZJ18ePS2RC76+zmtvA4P5PzkAejNsbt97c0sIgEar4/HxsAENnYjd2MhNkSGp9jdo7Vle28XZo6DBLmWgzEitg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCrIHV5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCrIHV5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7435C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776056253;
	bh=pAD6BANjEbEFTDvzTg3vA77oYAR2IUZCF1Bw4vyAwXE=;
	h=To:Subject:From:Date:From;
	b=dCrIHV5H7V0KQs5yRNnJNz+Ssr87OQJM2eOx/giCwloHL/ymQYjVVTEfsyxrFBqVd
	 HuuOS97el6MvlbkhpiC2GjDl+m0yHd88yImwz/oozSYy1FVrLo0feEuv17x9lDRqgx
	 HVsE0ilfnLsXoElsTyRhg0j1OSI6ITiOtx0mfln7MJQdSpD2f47QwAltNvUC0xf6uj
	 mUPncjokUCS6aja8tuGTH/1XrHZZEdqraXpD6HSCHLRsiic5wGbei0gMxul9jhPvJG
	 hSPrinbGHN3IhTTstxuL36uwOLY33isJ/XLVjK+faK+ErH3PNUWKgPypFsRY3EGvik
	 0XISAqXHijLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9556E93817
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605625368.21603.2519375505675746833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 588fb7e3be5d4f0406c5c239286680d4a407c1eacb92fffbbd73a03c3bf4aec8
Date: Mon, 13 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776056253
