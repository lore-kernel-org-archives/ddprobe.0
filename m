Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206A3A1699
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773156894; cv=none; b=aPpdeC00/gSwkwaKd71yVHPDOSZkGPNvsgcMU0iVgEGbJrdIAco1utUJtWTfgYPoRWSf5RkTgl4qL3b/4RWU2eizABpr2Fe8d81hGyU08mVUV6M5LhB3k2R97GnmRR9EHztrbeplgDD868+vu9On723SVs+uV5YSea4sQ82or8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773156894; c=relaxed/simple;
	bh=0i5z5iCvlajvbiV/mBkbolEgo7eGWyqIM7T4ZXHQlko=;
	h=To:Subject:From:Message-Id:Date; b=radCzikYue5lNmxwmzpUjSdseK5EB0jonTxKiq5A5PAbJvNdWG0P4gK5TV5qN6HWfAYdRngohL1BokExRK3IsnFQMUU2PurX9hIBhkTi1bZi6VWHWNcgZkkeD1VfJb+at6LT4Cne6OaEJHf59qedUuadpPrTmlqj+DqG/6/MzqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+fGfWtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+fGfWtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA2C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773156893;
	bh=0i5z5iCvlajvbiV/mBkbolEgo7eGWyqIM7T4ZXHQlko=;
	h=To:Subject:From:Date:From;
	b=l+fGfWtGtzf/+Ps+Tqd6yHWYVlGwGmfYv74sj04/NbcAsDL/8PPpDPJ6TtxbaIgZ/
	 zkvaUg4uCBZVaFUFbthcZ90ILyoCm3hkBtj9DhJb6rM+Z9KFR5omaKqUOuKIgTCYj2
	 DzJVEhwG199//yEKacAN/1RcX2MwB8MTe/Q8fQDUaMdWPIdnruOWnu5EVLUfj6rBcX
	 CL/g8Y1wF2Wm6TLhSzV4Xx/1cJS+1cl8MQIbWtGS3ShwFBrK/Skn4KyF9N/OTpnhzG
	 SSm6rfD/9AhX9Wij5YUMv8Z9TQpo2r54teT3NjB8BFzVqbAK5YDzWVID8xkpYC65ZK
	 71cPWTjiNWkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9112FEB1070
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315689358.16990.5681728489727163840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afe9cd0d41d2065e7758e623947a3b025de4187b39548b2400a995ef9d511f2
Date: Tue, 10 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773156893
