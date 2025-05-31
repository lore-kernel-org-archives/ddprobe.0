Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4585220F081
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748687395; cv=none; b=dIKI4F2N/ixkvaSsI7wFdcgTzye4BjScs3RFWC5uz5SiDh2NnCGEqeXLVHwzxxStUhNfv/FF/ML8cOB9hDwmKEjnudU4H0EisBhc4agZb3v2NAe6AUqkWPdCHm1fNg9F+1vjdg2ljEIuRrTx9VK7GITYQd2vBgfOiRfcjC/vip0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748687395; c=relaxed/simple;
	bh=5Qbt7ib9O1dteczG1U/aD/QRWQSZP9uPpzLNNEkFJfE=;
	h=To:Subject:From:Message-Id:Date; b=RcK3F0pdXtGM9jBV+zlcm58oNEyO7KF5bcU6+yIZi9eN2KM0TZfQTkXhoZsaUUbadaBsXSLALHfhrQr7i+HKl+KbiNDjOyg93BLVROX70czFf0NsKPNh8fVEWWPp1IbPNgtLPUbq3Q3dKg9MUqsRzn0NzAm5h/K8QTUAstvzS/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZ00RoFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZ00RoFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EFDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748687393;
	bh=5Qbt7ib9O1dteczG1U/aD/QRWQSZP9uPpzLNNEkFJfE=;
	h=To:Subject:From:Date:From;
	b=uZ00RoFAAl9SCHOq2SBwtn4tWOswjmnuJ4X8RccYNVEOKyu3SB8C81eDGVQDn70MM
	 Gs77LtB6AC1oFNj0OMtWr4JNosCvaLpO0vzDKIYZhaesR1zCVpW8LqSAjBCtab8sbs
	 tTRyr0kHy2Zx1W4HnFEP2BNhG0OJKhj+lAEmh7FWhDDP3/9UbPqgOeAbA4df2++AU6
	 fpAwgtrMGZjk/r8aHbi4WEm8dBanuKXDSLC9okUP9JMaHxcsnAO8xHqzawYednS9Wg
	 V1hdp4uItPE79ZbskIKackviKv2RsI9+/nws4wuiit+CRNTysW9xTA3llrA4Fvs1Wz
	 2zI2hQwcFbYtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94334C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868739357.22931.12168149994420411980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c3eebc6891f22a50b6cd559042f1eea2ae40817a7230cff914ea2d4455480a
Date: Sat, 31 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748687393
