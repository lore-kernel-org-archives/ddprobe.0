Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA76FC0A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750590594; cv=none; b=OjkV7VMozdDA4H642wyKkU5ANJZ/Zq7DgamRTOH8IEdjGlAMFTgP8z8HQ9gl/nWQVY77tofzzSMuestFTPUvS5SmXvUY5Sl5gnzTPwhAudRhv51GBiAW+NV/Mvmpsm5rP0fKoujSVA/mYF35kN32HxUIAf2KUB0M4IwcnfuCFCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750590594; c=relaxed/simple;
	bh=cV/fm1PN+I5l+qxDK7QJpp3S9Tg4lyVNnWqDHq8nyS8=;
	h=To:Subject:From:Message-Id:Date; b=H7aDS10kGFrILDU0dpNHEwoHLS5mVj5uk3zBp3c+i2golwcn3OP1Nns+kbpQHNevJNO/xLHCZUifi4MIEZivbWOqI2TefgPz3WuXrdDish/TDm6Gy4XTabiDRMSGo/ScOz7iLuaXcRdTrBuiJNRMbjg12A/5ZkvPEpBZed3ugMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYch1UE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYch1UE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7186C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750590593;
	bh=cV/fm1PN+I5l+qxDK7QJpp3S9Tg4lyVNnWqDHq8nyS8=;
	h=To:Subject:From:Date:From;
	b=CYch1UE3L8IREchRmUwiDvd5vyDk5KP2S5MMC1r4JcSDlV69q1nKn8UysFNO7bZFT
	 /WiT0o9eqjn5fqWwa3g30VbdBIw7CsawGkdAcjkY56bJkK8W5Dcz9lXSXv3Z58X0Gu
	 s6X5jSUT2Hlx4cuKy1PLuD5hv8CE+EJNRSsHCKUWt/8+rRFYBgrYHCcfI/e53cNYeu
	 epfsKaoTmEh+a9yTsQxE5GOf4yeln+0v1/hEqdY7GYs2O3fKBPINvhNDflvd/AQNrI
	 YdLepHpSVp4prqSg79rxQqNSdzUDVZj/g40pioJT5NF/YCFEFkaJ+kP9msfhmcglWI
	 zIwQVB+cT5/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F7C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059059357.25387.17206863849133406739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11d8a81d8100004c789bf62113767fdb9faf2675774951fad0f78a7b133d45e
Date: Sun, 22 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750590593
