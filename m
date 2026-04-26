Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F9A2E541F
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777245454; cv=none; b=Uv7XjKX87K/cN2LguKJCFbhl/Rgrm1I4ht5maOi8rbBOSRp6JQkuRQwwtvH4WiUrznlXS+R5BUmM/I+8ntsI2cMkVKtodQvfPTfEFN3MRi9YP88P2EMwNVUOnkE2enYNpMwiopoCwPsa2XHKAC84xg88E4iLVTE26h7EaUq9Wdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777245454; c=relaxed/simple;
	bh=8ksB91AXTWOfaFw10wyEprRqyeD7wq38H2lMRO2mxyE=;
	h=To:Subject:From:Message-Id:Date; b=bZWIi9WpsBKrN+mTRFTgNpl4VcpDqSGtR8OgbPHHtxQe6GrkK1YxPc+R+OUBoEJVIDwASRuj3erviu/PZoueoKDZantKf7ypfPi9US6/+fbhCTVJtxwLBvXJ4P2QcHGiAOQ7F1dV+DJah0t/tJ6rhwrro0nKz+n+k3p6jKsEUWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8Rpbnsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8Rpbnsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F51C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777245453;
	bh=8ksB91AXTWOfaFw10wyEprRqyeD7wq38H2lMRO2mxyE=;
	h=To:Subject:From:Date:From;
	b=p8Rpbnshy9/Itn9jhUwt7asX6Jygr8ha28M2iCiDyMNZln1E+cJtOodmjmxWD3WMI
	 GpV8KL35rkiJiFXFrVdnWB+/9TyK2wm1PDbFvQkEoPAU9nskO3SXxBwQFdfn1rw83B
	 qFOlifK1XaycfJPxIQ1+eqVT7tqfVtd/muRy1ISIelIA+n6G1U9+95H6bfwe7teSNy
	 KRnAkJHuurRt4keFSr/kMREBO8Cr8tNphiidHDcvdhcshrC2hAM92fxFmgE+ow/QI0
	 3ltZf/vhYm1T6aKvnAO61jBSFOULvHP20h+B2OnsTNH8m7I2VudiQsGFFyBAJRRN7p
	 z20Wvlx9btxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA232FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724545368.22050.3886220993920458561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c0b9bd06935321b9daf06d2ad05098b347e970c9eebd56d77b58bc6133d0df
Date: Sun, 26 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777245453
