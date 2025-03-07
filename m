Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E720E6F2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741343336; cv=none; b=Hzly9SJsBklQGmNhGHeNXotSfDdVo5nEnUmtaDhGswH9UCTzobn7CPY/vtiNo3y2efFHU9Y3dbSH/S9ZF7XkmkOIz201jfcmAcM2c/rRWe0auTj09fXif9Oxq+u9mPE++J4/Hv577zaQnrcFD4n0nf0Ps7XkzlPhOiNvA0gI3+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741343336; c=relaxed/simple;
	bh=Bo7bf18xFJKo7sZm5+q0uTx4RPFvcyV76R60AaRe8ss=;
	h=To:Subject:From:Message-Id:Date; b=IMcjmW1HaTQR+EPBezicyHSReoqm9O2xBl//Jw1k5Scxk15pBK53htb8eNgxi5bgeDDOP5FIPBHoAdOEbNpKtl1uFbEPKI6SyFCpMZYqGz0VNlRH9QbRgASLuJGyv80RCP46uo2yBl+PrGFPvq/niAHaQvUMfC3a1/XX0n7/oaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp9idjDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp9idjDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE35C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741343333;
	bh=Bo7bf18xFJKo7sZm5+q0uTx4RPFvcyV76R60AaRe8ss=;
	h=To:Subject:From:Date:From;
	b=Kp9idjDBgySBlzmZFbbwV1phAXRpMZoa6BuX4qeZKq+tLFsirB2y9Odcefk8LBNcz
	 LPVv0MaitF3xUFT2hHcq+b+sU2jOdawRtVBtGfnf2U5ah/JTEQag+htbLEheJVWLRu
	 3L91gWNQCOBI9fxlWIjtmn+59cVq+riqXOHabYII+rCew033/kCxzE2oYNM20hYoKp
	 nrfIO725VMGmPnHvJXCzJDHnCQ7AgK8775mfanVw1gHGssYrGR4dyc18hsd3SfoAZr
	 3Xgq3DeBtC7G8YANkF6kG94uuztS4mBy6SD6FHbU3x70Dmf/s/Wkvr0jyuF2Vjo7Z6
	 zut7s/UAo15Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92555C28B23
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174134333358.7982.12675226924941698475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f12b68ed196a2e43b669e269089dcac42be0e21c607c2278e00674b1f52ee49
Date: Fri, 07 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741343333
