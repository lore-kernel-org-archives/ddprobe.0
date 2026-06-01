Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427265733E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780275274; cv=none; b=dd1BEw/AJs7ULUBjFSg1OQmsqBlFZCfzrC34oh6GoRgMxuKihkrJz1zJwqi/zU5X/m2u6skTF1foMkCNbrasB+LFX4SxXHmBTKndLHjhd3+IZQUY2rpbd+fKEoHwfkekOFozr2nENDxVLgpPlBASaPeDt2n2hVi/a1/FvGTXJBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780275274; c=relaxed/simple;
	bh=2KX6ORdwVC7ek7g1xUjyI6b82rnEVwbL29bQ8BbtO2o=;
	h=To:Subject:From:Message-Id:Date; b=QZfQtJ/kKOoHl7kbJHTj7/88Ec+Gb8+078lsCEeHqpRZFWn+X2gPzMVb9KJTrFKmvOFfJ7eiacNEvqUcScxrb2LguGeiosxgeVcWWeCujO7TPlvVnO669oop0CL+LAXHgYUSrpvTvTNuOx3hQhzzJM6NIfLY+CoELW5DgjCoRbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5xNiu6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5xNiu6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD68C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780275274;
	bh=2KX6ORdwVC7ek7g1xUjyI6b82rnEVwbL29bQ8BbtO2o=;
	h=To:Subject:From:Date:From;
	b=c5xNiu6t4HsTdbCA9VLzvM+LrlaVkeUbsnBSJpfLC9hvwWsbvBLVo53TbKffqI9HQ
	 IstOwPTGmTfev/2ZQIGw9USAajdLE5pbCajw5iYB8tgZ0dXILX24340Su7L+owWvjb
	 VmvTRuH8comWdw98DUcfoi8W5peBQOko1wrkRqSMeCtZhyw3S/HPCc9BlwYNjkUQvK
	 6mwd7lrTp1IpwbN+wc10wW3ykGx4kBCr6CQfv7FaGPKWbnTBCMZbgUYtpgMwpm2GCf
	 naoSF6IFfeug2DcVtVR4+4s/VRPiRUXoxkzcaI6zwh9pUVl6YUEo+SqTsigzCQMFaH
	 FkqJcFfjml22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEFB9CD6E57
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027527378.13278.4303435370778619490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956d9b064a562b0def38b993aeb52bd6b612b6fd88150b477ccf1126a1e85d8e
Date: Mon, 01 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780275273
