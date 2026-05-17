Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22030263C9F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779030634; cv=none; b=GigAFg/KvoqqaIm9dlmNN3+FxmxCwV/bZGJyXfotmLjemxVlgysGhQk0qLGzibq8A+Vby16Yn4gSP1i4tnGXbH9/dv3iZt/fNCOLe683M/ssCWEkesSJB+9bt/bmbSZW2c9TkGiu4mnTknoWKuSRyeC+MdILLlnN1OdCiiVcf88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779030634; c=relaxed/simple;
	bh=sr06cT5Ov7FQpOZTDus/096kuih0yswqf+7RRGu2QsA=;
	h=To:Subject:From:Message-Id:Date; b=ZhBMOBfja17ysQo3Ufknnp5FqurrH54geMbKoR5r3VPL5B8XlRrHL5WDAslwFeQvKpES0WsZYLzs/yoduL6t1JugWkE0qxQvuv6LxZOPywuFqqTck33uzjHr2adsa/MKm5QbOzs3OwlsZSJj5M5FTxGhEgr93vvqym84lNLpmKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8twHrzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8twHrzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A31C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779030633;
	bh=sr06cT5Ov7FQpOZTDus/096kuih0yswqf+7RRGu2QsA=;
	h=To:Subject:From:Date:From;
	b=M8twHrznLgvfmvuoa0KyKdROhiZwZ6gNarkeWT1H98PxHvird4bU7jzZwbcXJOPxT
	 AGr59Kl4Zwi6YOkWytN1/JFw7/P36/aO8c070p12O2Bm4UQvvYBRnjZCw+t7HwDBke
	 edraHaCFKMZyy/Q+9tGt+XJGBAMsowk4/LnAl8eMd1RoQ9IFNjB3bnSwWO8nREbvWB
	 e9CWy2GuXQw8FSyeJwVfdG1yLQ07ael/x8vWEdobX7gIkvc3Fi7WVldxPJZk4mGo4N
	 HiQPD+hkwfPU32iMp2oQc73qeMQNKy5CeRsJhbIQA6C4N3jZFa/eUMDfJO3e0p9W9y
	 ai7V75f0+Cidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE31FCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903063369.25220.2617063767276883991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210222d0c0252210e7a8f058b8f5df32949c856c234b29b2c3c36e06caf08772
Date: Sun, 17 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779030633
