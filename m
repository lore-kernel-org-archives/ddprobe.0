Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AAA1114
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753594194; cv=none; b=ppCHInvi6YcZ0SlhlgSIJmamB+yvRE6Vh5kdj1BU9kxBpgSXd/xihN0RNnDNwQ0D4Qw/MiPhWJXkirm71g1GkzhNBjc/tPPHAQDKnIMbeTz8Q+LRawYPz+5Xr7j8CsotEPeLRbat5K8l5W6doFEaYoZBZqjjw9WrMl2P3u5Tfsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753594194; c=relaxed/simple;
	bh=kEjDd+7rcL2GPrrrayrhjOddic7PuBMSJVRQC9l28Sk=;
	h=To:Subject:From:Message-Id:Date; b=UMyDzaKt1SUj9UCtsRygZbyWrpOxyTJdtGNSkP6n20M3SUFoeWEx6v40f6dddXlC/BE9GIBEbnMFDPhZcCG6ubCJVuSMCwhjD0lj0ZY+Fq/cadGrUXGo9LBczeJzzPGBhFUFRb42C+ZxLJDGTd2taLTAfPpc0p3AVvRv3bKDbB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2cNXHuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2cNXHuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E21DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753594193;
	bh=kEjDd+7rcL2GPrrrayrhjOddic7PuBMSJVRQC9l28Sk=;
	h=To:Subject:From:Date:From;
	b=W2cNXHuD3RAQJUWHZSkF1gin5ThmkpXCaTuHuyLpF81KL3irCqea9E4WTiac6dQH9
	 8xi1n7Uc67cPuqLe4/OCYbmXVIYkb+cDs/+5+mGJLEu6Z2zRMHVvX7QpgySUgwjbET
	 3lzg2O1v5y/EI954WpGdJDoB8zvMQsc+7Jp988/aLZZ7aAx0/cBLEXMYZpdUI+xWan
	 U5LcV4lytC77slVL2mAg1//kNg20kJzLATIL2+v1AGmvQr5hyJ1JJqHAmPhBHmlZkG
	 Gj7LSNcu90tvJ1ml+Vr02Ltc5q/u9cv/+1G1MYITkb38jfpR5LrF83/9JXeo7in1Nx
	 h157ytylbfK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69DC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359419357.25235.10617416078619693717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877f7788972211e85e0a34c89d2e3c7b8c351f9681abef45f47a08134cb993fb
Date: Sun, 27 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753594193
