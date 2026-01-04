Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146834C92
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767494034; cv=none; b=rK9ER+VUjRHRerVCqJMznIPZohv6nBILasetXlsexcUOSWYMS4GyFeqmumaP0E1n11LXbIWgTpJcPHpz9LiQN6pd6CTPVAGuFZ4kSH405Ow6DpAzPeoqWzga62WceiZSOiK1cLEUH2Pht46KuxuIRndIhYglyatsZqSV1CiFJJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767494034; c=relaxed/simple;
	bh=SIV29cNgC55T4FRwO57ayoi4M3qIvGY1BcMhB7RmEJc=;
	h=To:Subject:From:Message-Id:Date; b=tTjfZMhOek+76YY7eRgonZEV4RDP1dl+TNZtZNLMsnnTMgY/d9BEeYEoe0NyQvdRIT6exD6+tJbfkRWPou5qvrEsYMYCDOU0wRKhzMsew71C2i7uRjNT0uCnmdx9mtasl7q0aqPw2fwBEXjOLcHFw2LJhx1nyR5qvFtx5vsmLd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKkP6bcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKkP6bcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D69C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767494033;
	bh=SIV29cNgC55T4FRwO57ayoi4M3qIvGY1BcMhB7RmEJc=;
	h=To:Subject:From:Date:From;
	b=BKkP6bcnE1nvFAH52Pq2yBI2IngdFPbxhQZQAwC9GJXRA6docEjR6YeNwuSnzAV7x
	 zock4NAojiyxB18KyiwBdpO0shdQePfwMZgCnNLFfVy4CLy/6O1J1GGBqGBWjKsOWz
	 Gn57FqUe5lw6iWVXoGGzhdYWwm225hV0SseJWmVeXyClMZCpQlaxluaTDGL5lfyhdO
	 PuE20omA1dR7jHAt9Pe42822p8EvDrXMxM05f73aN/LMXIQsl/BGRT+Qr0cvVNQEev
	 /fPGGZ+wTl26U8/ezZpGVlIgyFMTH1md79/mfqiPXMvqRRFN0+g7eELbFK0IH4CPVc
	 8jL72NKZY5dMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146FC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749403357.8570.16322419707554487751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92da61483853c20cadeb8a67e5c50d38b588f356970022e9dc947134b67516a9
Date: Sun, 04 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767494033
