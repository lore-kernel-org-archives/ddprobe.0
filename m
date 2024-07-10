Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8C28F45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720585583; cv=none; b=S60Su+xQR2AXBy2IroOMfFOPYGcdhV4MdE0TyVbYJ/vL5MsxxzvhRwHfAku5/fAj3e09WDF0riakTGhqIPXq47XtIJAtNsyqNL43KNoVnxpLqyRIFklAi3mfA/iJasYDyr7pt7akEMQAVRJ6wESOuj20/vQM3GM/x4FdQ/Enqqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720585583; c=relaxed/simple;
	bh=hIBmr5xQCfem4L4NWkUOLnfmwra2dS2c3kuVbGWqdyc=;
	h=To:Subject:From:Message-Id:Date; b=LIGahEIyvyRD2VknjhyPsjrxO3ogba3ptjPt52rRc7Ur64H9LOpbfyb7o5bzUC+0VctMBdAUuo+TzT0/Bs/1T6ZnpAh10JcaUWA51XJ209L8B9wB7d0afjm381czkqup8IJEYjiHMFpp2DnpBVYqJzQ/D2q6SMHmSC2UHSGw3w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2XILCTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2XILCTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7BCC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720585582;
	bh=hIBmr5xQCfem4L4NWkUOLnfmwra2dS2c3kuVbGWqdyc=;
	h=To:Subject:From:Date:From;
	b=q2XILCTuqzqoZreEfcKq3cXuDobaFnC0eOTHezIQFM3iT5heNAi+/iMydKA5HhRhq
	 9o4hjcEvRGT4pOUOD9UCHpMDSQXvrNg/If1LocekJN2sohHQvkwT9XwKMM29JmIwxX
	 dcoEtSDDjmAQMZacgvPhtqczwF2AbsvE07WwB40rLYrhd1B5XAJYhyy+GUXArWT5+M
	 J2uwSMrnlbKIg+DJ9h+Jso0gvd29h+OPncDQ94cD5czg0xYCRz8JdxWov7hWxh5KJn
	 U5l12pCVRedbunk01ChpLXQjLxbSQsvS5jd6aTGM261Z4hVG3dB6V7oR+t8XLw5RpE
	 5CPk3ue/wyOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8808C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058558278.7036.17122753201986838142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1529919d65babdea9fef2bcb3fa9120d687ec8aaac0301a31c73c5fc3deafed
Date: Wed, 10 Jul 2024 04:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720585582
