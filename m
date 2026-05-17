Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDAA2DEA8C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779051034; cv=none; b=LjKyjBupcv3Cdctq+ltHfbEXPh8a+k0+lv5KpSHn2y2l8G2P9SqOUvMe8OCCOGuQo8vPoM20JEeLlA+ANDQlt/4xrqnzfJcqTkXKbIRcnSt1gwbVnCG8SwyBoe5+/GiHCLykmFPSntTE1sC5mhZvn99qfZtTG7h6l7r31/RyMWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779051034; c=relaxed/simple;
	bh=fyJ1PNqdEd4rbtLjBI6O4i3JO1H9uDJIiGskmf2eIww=;
	h=To:Subject:From:Message-Id:Date; b=jxnFsGeMpdzNCAmFiAnLhBXpZJo3U5q0Yeull8qbQaDHDXZ8eGkWkndJmVtNqwJlB5H0RUFR2m4f0gRTz2VGc6XF6nb5S3ssBsrlSOnaZXuktE8dNO2RFarCnxYM8Y12HQaXEtkZ5f+D2DP92eo2MBSplxn2fwmDIMMnON4JR4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr9yFk/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr9yFk/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD417C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779051033;
	bh=fyJ1PNqdEd4rbtLjBI6O4i3JO1H9uDJIiGskmf2eIww=;
	h=To:Subject:From:Date:From;
	b=Pr9yFk/I/iQEJDLqNvhXpk+y/+tbc/mEZUKIcSXzv3kRvaW847htLJ7W4GnTZDP/g
	 w0PfVg4WN4w8MGI0GKoNu3sSPCXS7F4RX8imWNy/i6e7YQmml7EYNFumoREf2ZO2Pw
	 syp/gi/kAf/zWZLoPYjbp/qD/eV3gXJXupe1sbllIQRhWjvz6nK+lHaPd03EkZA4yw
	 iFRaz3udZC2eKJPo/51/pER7zSsdfLNL2Qy+2W24WBAk1P1k8XpC5ckrpn4uoJno1e
	 hRe67TWdTi0OANla+iz937+dvfdFyQWpnkxXFGw9dWxmDdNarILE3N2Zzdv9eE0Cgd
	 41lU0UU3bnDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB26CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905103369.8000.11444501440747812816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f931ffcbbb9382d63a72af9d24b130081456deeb6cd84795f592c8cc7c0612a
Date: Sun, 17 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779051033
