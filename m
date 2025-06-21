Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6CF19A2A3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750504194; cv=none; b=gCJQsjnv+PSgMgZ1NxvHVObsZJ7kwmvmBUecNp14AlrYZkpv3sKRZhmQ5nqglltQQsLFaHMjoHPmA7qz0pwJ4z7moN1+CtXG8zmiwKbhlIDHO6OX0ZNqtTjRMWeO4tWxxPP+a4ydgEUM1I41nh3HjJFLHMKLLVHndtLsWT98Slw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750504194; c=relaxed/simple;
	bh=I9khWA1/qiNoIQs9moHOogxjFngbjABng1KQgCVmwF8=;
	h=To:Subject:From:Message-Id:Date; b=nGvtGGBUVVKzEGdpeZV32FvjoGk19VyynldJ5TfQM75LRpLbLuHckRADSFbiCaJ/jq1aqodSChNsLKpgR+6ebf52v4HeoArAfaDPCOuf5ByUhdWVrs/FpzI2V2eJU/tIVnDtKUOoysyP/g/GnF9GLAv+IZbi4VWtbIh8dLyTftA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9P2EJ7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9P2EJ7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC70AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750504193;
	bh=I9khWA1/qiNoIQs9moHOogxjFngbjABng1KQgCVmwF8=;
	h=To:Subject:From:Date:From;
	b=f9P2EJ7QeaQLMVU+KtJhbj5rrC+6tBQLAW/OEJ5Y/vLpklmVWR1cO2+wfosRlbDOc
	 ODwoD0r6psi8E5c7pssYQHdC973UCOWvv+f3wZzG1zGgpGS90Yo6uQ/w0gxbBJs2hT
	 Jf0Eg/jYpoVBme870mfcH5Oc6WxfI4NAcENsEfr3lHYL47/k/fVtCYD/jY4vlkJiB1
	 7isI6B9A8UkWNA956/155P1V8rTjm21lDMagHtuW8Pftvgden0SnXXhRmA49UEqJqe
	 p8jICxrUQLECRFosScDvIU+qe6EFLHtfLdYtMjoDyQrWPQxSiXM0TQTW3ZSti4dmgN
	 K/NDHZjy3oQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B021C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050419357.25180.4155919703484694837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7129d5e792c431e3d5318a4d3f8c39364ba02f90a80d4b798e2e499289d320
Date: Sat, 21 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750504193
