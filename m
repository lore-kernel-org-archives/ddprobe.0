Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8D51F5FA
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728709554; cv=none; b=Kdry3SvsyH7Qutw8aj2XMx4pp+YOkPSN81p1I59AfC5JAplZ+ABkEtzSNEtZk4CM7lCJV1LhwgwHBBeYmWdO6VJvdgHHp7aapTTRLcVz5hb0xDSrYI6sHdYssRHxksxFDQpRFZDT0MJbgjciwYHgKFALG7nhcmKYogSQNxsfQqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728709554; c=relaxed/simple;
	bh=XDwlgqUBwPydkLKehWZpO6R3d0obnHvTIofUOV/QRR4=;
	h=To:Subject:From:Message-Id:Date; b=j7qCf81SfL+I3RPsz+qFLK60j+30Wg1hxAqrsvBZ3cabQvOUBPJ4CCrqDcO9OC6nAo/0U/FnRBVRekz+C891sSw4tLam4ee5p+PTXIIBm/BPfh+nkKALfVi37BxtUAq4gwYSea8IrJLiP2yT0nIlVRoZNGJKlJrrrDFQrCeerXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfiRiYPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfiRiYPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDDEC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728709553;
	bh=XDwlgqUBwPydkLKehWZpO6R3d0obnHvTIofUOV/QRR4=;
	h=To:Subject:From:Date:From;
	b=VfiRiYPFJoKfrWzuJJYw9OuW1Io2Ij5eX3BNp22ChsP2r5JRSbUHRDa3Xese46KzY
	 q3+Q+WnYSVHFJcG6KUtYT6DxHjSf2ixquQpErL0i4aFbe2qy6xsPRXtP741QSMaq+g
	 UKE+NPnR4PwXG9ez/OALfUiG06a4zoEdIGlWxV+qMDsWQn3muYM1+kt8YPTq2bs3o/
	 xFRBimFc+Go2U0Bu78X++NQV88/LxvSEl6w72muAzCQPK72jd/1Mev1p1Ca9FOdW3w
	 Gp+1Jh41kmNveahOBTJlNUMt/BMs1Xbcf6FdZoLXLaaLmtWooVSlmbKOa4jFfK0ac3
	 GbzZsgPhRVmow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59CCD1A435
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870955364.6953.11564692511072584208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fbed644dde9a99a0b992c41c95c4f0a861bf66de51ff01bb3b9e9ac5ae5e6c
Date: Sat, 12 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728709553
