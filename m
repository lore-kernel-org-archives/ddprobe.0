Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32545234994
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780707874; cv=none; b=YUpAXTkkkSkz0yaMI4CAgjRnIMAQTonZ0b/KoGSD3T/YieLAGweJi6cEMGTxkmatdEl4jOyjsGCOyva3dySE+vyuJRPNHpPyS2cUvWW4l19HcE7iqZIOPX4vrSOu7wcFFEHJTedhJqmfLycxugbRTOgr0fvH1FKbB0wgKmkS7cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780707874; c=relaxed/simple;
	bh=fBIIeWk057yPyZB+RJpgKhKdsrq0om2eVqS8zzSI83U=;
	h=To:Subject:From:Message-Id:Date; b=AXC5PyY5W377hkNC/s7SJPVoAooudI7tG1eFLH6Qt5BEbIP4Ak1j3Ac8SyfBmxnl48gYlgd+jkUf99RfxP2OuKr64DEHYP5+Tt+d7RIZdbvlyklnuo4n6QIc1yVIHPSC32fQozuWtK8JZrVwCEcodD4k3JsHxbIGiWgu+GdO+HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B52ZMwtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B52ZMwtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4062C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780707873;
	bh=fBIIeWk057yPyZB+RJpgKhKdsrq0om2eVqS8zzSI83U=;
	h=To:Subject:From:Date:From;
	b=B52ZMwtPACABQFhQrB83TnH7sGl61yHqT+wnnQ7nf1MRvOUuOJc3OtnC3tYRnS0CS
	 Ub5C6Js56GaAGDzrUATDrMXOvbHz+V4WZ7+5JkD9Pv+aLtCHJNWiuGVfJuqgPIBiJw
	 bSG9xW6eWS8LGt5NN/BFlL1d1oWoekHfTAOR9CrxSjB3kDfCrfh7k5qQyKuySkBKY1
	 5iREIytVWw9VfcfRXJ9chF3Fz+ILdTLkGHzHXVcSAAUtFuOO2JoKQnnFUPHEb1xXsH
	 KdnrUVjzCRhQ0cv2VkUT8tXzCBp2O689h0T4WwRx1IsxsomvQNOJ1wS2nWkevA9YvR
	 +rERGTcIKwIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D2CD8C89
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070787368.21744.18022572615117390784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155ba08263c5393c108cf15753d3b7a388bd15ff3160af5e86cdbecabb0f7c23
Date: Sat, 06 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780707873
