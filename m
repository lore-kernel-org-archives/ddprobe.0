Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EE04A0A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753010994; cv=none; b=mlR5SRGiMaLnatNuJMbsPg0cI4aO6VoAYaONtiXpRK00x7nh+Se2CqCMV+OvtyI5YkIJ3VECLcF4x0a1L5XEk2ZZelpXIK0AmDKpLusoIxjsJg3S73gDA4eEYNe+mOgPOUhX62H32aMxGIeQVcUmp/rQ179LATtxM2Krozl8LdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753010994; c=relaxed/simple;
	bh=FIz/rjlKaQripDrAmz9J1X/8YPPf5cBMflGpT6d7IZc=;
	h=To:Subject:From:Message-Id:Date; b=c1bt2KExowpJYLGxHi4ekOJ8ITH2/GG7tKBbHP7qTMo+f8H8BYFG5jyoi1Qmv0w82t0dxuB2IKwpJQh642+JEQ8HQp97X3ZDuBNXgbL7LNVXzCuiKJEVEoMndif5ncx/izMeEso/u6+7lReOTI2QfyN0v+fi+R2gLNAXEuv+2DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDhpvhEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDhpvhEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9455C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753010993;
	bh=FIz/rjlKaQripDrAmz9J1X/8YPPf5cBMflGpT6d7IZc=;
	h=To:Subject:From:Date:From;
	b=vDhpvhEGAzxP8nw0RtfjLPvieVQZpKddwxey/yN0CSDNS2uM4lutYV486r2/+iv7d
	 oMnPTNQ485vxPZv8vtnZpaJLWDCvoeGvnESZUNiN6fTYGq9OBtjkNCId5ujG7ZLgpn
	 9xnKCNCZJYPo61f4APD/9MZfTE27Y3MGx69xuxsIcZge/vb+AmWHz3pObxQF8FpsxG
	 GLjYeCZaaeWMM/CFk7yCY4P6qrfTTooHfqEyJYRqjkLk2nXdB5UQIcvXyQFYQZjSCY
	 u5Z1TT8F3vKOtXJpCcSJhaWVUF21oOE7gTmDDC5eWVRJCVyUNs1qSBQjDTz95dZMKO
	 D+52xkHCOo+Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE0C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301099358.25859.8966679481200148465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958d6065acf130635dd805600869f5d0712a5e6b74a59452851ee48991117c50
Date: Sun, 20 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753010993
