Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D5F298CD2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749755994; cv=none; b=WXx1A0Y9igKumExKj+dOscMwpiz998hsR+1yaSgKK40UD669Zd7AT77+vPUnm22Hbc+8rLS4zCnRuqzhf7R912rnxLGmSjNpPFpUjnOJ+wjmAVCYgsCbuycrC9bjRFgsIWnfs0Zjznmyt3AcD/GVrWGpMcedOV7RxmMFRrRmU1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749755994; c=relaxed/simple;
	bh=vfNI8wcJM2nkO7SCgZ9fWda1Sc8WlTSY2On+vsC73os=;
	h=To:Subject:From:Message-Id:Date; b=Zw02QDiARmFEcu/18KeNTUa0IkIk0uDCW5M0X2Bi8UpV4LDBHAADiLE3s9r6Wrn45xkcpEgFZ1GUVcRqjN7RKGykhM0p1B1iU6nuYywAjvjoOEwNZNJJONhtVyamOurorvhNR4CZEmLWd9wr73O1hEbEY7Z2kpL21kf6UQ0g/K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fev+Y8f5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fev+Y8f5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9818C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749755993;
	bh=vfNI8wcJM2nkO7SCgZ9fWda1Sc8WlTSY2On+vsC73os=;
	h=To:Subject:From:Date:From;
	b=Fev+Y8f5Fq7Xbg9EiFKLAkKK48JrAFsrRAaEnRYVLfsofC6L01fpDwf/tN788NfFQ
	 klXS+xNlNmqfDMv7F1r97FLr1ISjzZuln7f+POyc/+uCCrYgzfYplgFciWz8jh1Vrv
	 cvII/NgfNoEW6PCLMV9WyEP5Ch+SPmWx2kYNQTLQCIP8dRZEA+rsDgyfOHPVPLsg6e
	 zELSwSkYvOls445e+CUB75gySGaNmEPsErnJiK8BKZ7cqVt8lR1PN9Bj0rquF5jklE
	 Tw51BUquodhzio1Savrot6zufEiPN5nflXguSRh4JKMC2Qcj9IriVsODeNHzpAHnQf
	 GPWn2RNsOGODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96346C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975599358.9347.16046466984012431056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6e7cd9ad240070cb72b19f313b040a9a9c89479a4d6de909e542833ff30ff1
Date: Thu, 12 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749755993
