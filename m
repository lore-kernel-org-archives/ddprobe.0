Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D12832E6B4
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779060034; cv=none; b=JCVidEaPbpseFkEasvEZoEsGy0QYY2Na4x/23ghIMV+kCCn3O6RiE/xAvIOVL064FUJ4Yen8Cm1wl+X6P5LWAH0WFJGGmumEQ7S4QWavVFt/UXdXHVNVFkUuTYDrQRQkn4XMJEUUSyAYuAxHPzwGSHglACqjUg9bKlAXfLw2vUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779060034; c=relaxed/simple;
	bh=UInQm7DwZmRbzRiOsvlel2l0SGdux3alRX7NyB0Ixso=;
	h=To:Subject:From:Message-Id:Date; b=AoE5tijbMsZ0CBUZDyY0jJ/0eJkjk+QYSLWSPSropgr7MwZ6y5RD/EKsltu5GLf1swLSq5EwJDPvDj+qKms671iJRcottrV+mDFT/GSGtyZ8HlsPQnEYfbOFJjicN0pBXe0lFyWQfp2Hy+QCLe0W60e1m3Km11T+qOH+gOlBKhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HURJcx95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HURJcx95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F54C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779060033;
	bh=UInQm7DwZmRbzRiOsvlel2l0SGdux3alRX7NyB0Ixso=;
	h=To:Subject:From:Date:From;
	b=HURJcx95RvVr01B7BlwYL1zshmwD76/TCwkiwIIRJhEoYoPWqybngnCbPcNrpc14D
	 jBodUPpQafOK2CL8NeSVz3y5TCvdZuF95rItHKHuG0Vz4z6eJbmrbw4BC8bJCh+ZyW
	 41m6zRIox6cvoLjaHrtvAk5JxFVfDP0YvEV0+zoXtNzSefrIBOMOB7gdn2pPVRbSXQ
	 FvzDeKHSg6Q5ZVepm+phSicpusX8h4hVG1ykpL31zA48rXD/X8lEzw74peGfYxEHD2
	 MSyoiyqgNwGsfw2AQHndZHN62gbgZHOGZFpdo/xYJUbr5ANnhsnEcT9Ufj+26GIJ+j
	 cdVj82uJkTPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD12CCD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906003368.1098.2142601317450458901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b28b3d17ab900a6c8a12b54a1b1f0a99d184d1b78dd1091535495353e7b33c5
Date: Sun, 17 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779060033
