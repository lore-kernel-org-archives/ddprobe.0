Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F02F6160
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770223434; cv=none; b=Vd+WeYaXDgIdJZj8EDp5gjpBqTomfwCfNdfjLifkZZF16C3s1vRHke+iTI5KP4xbRBIGAbLcukaKZ5/fyn8jgTQOAk4hl9WIB8Gta4eLGOtDDNiI+vqNF9JHDI/SkfqMo6IdG7fy4rUpquW03XuO1mZPRjqx2NqOP4cutvRSCQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770223434; c=relaxed/simple;
	bh=8tOxIiPndpR6GUirbsOVGPwaVafG9ODr34A/0vHF7u8=;
	h=To:Subject:From:Message-Id:Date; b=mUNULUOrhNio3V7GEajKbtKEMvnF1Wi32eaFOAM/wWuGS9HXFWMot1i2cPtVeUYUB5INfigA5mzdxh6awaknYrfuiuF64uqU36f85YUpGNpdiyT5eAVXjzaCrPEimHpabiUp1oZr6dmSn7Rd8wFRXN79ApXWjo9nqVGO+F2rxr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lusxu1AW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lusxu1AW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F40C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770223433;
	bh=8tOxIiPndpR6GUirbsOVGPwaVafG9ODr34A/0vHF7u8=;
	h=To:Subject:From:Date:From;
	b=lusxu1AW6NNBg2VuIzZEolZGLrKYTuUHUrGOF1GrCCnoxxFPCNQx0NXqMkGFgzRHe
	 MLrBMowC8kD1ktmUugKo+Kawrj184D5mF8qs6lKr3k5qaOxwTi3e0yGOscePeF/R6R
	 mLueFG4kj/3Fy2a1NSyT+BpOVayr3MSIUKSj7Wz07pD360MYmAwwfeMvj3OJ9aSML5
	 Dow0Be0060OFgF4Nu3X6gkYBLkHGtBuPGDxtVnCBF4JEyF03uoWIQ7Sinhmf6MsIKD
	 wwmjvhZQY2apkKyi3iNrGQy9rIgJbdTyI6GBKrU9XosIMDBq2Hss3s+gx4AiCmbCEf
	 bxjK4FWcDGc0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA00E9D410
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022343369.29680.13471193913394068950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00895db6b72cbc8cafc0269f097bb4127e7b5f8baa866a6088415446f043bfe7
Date: Wed, 04 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770223433
