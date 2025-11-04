Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BA134D3AE
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762294193; cv=none; b=Pan62moOXcenr5ynEny+sqQP//D8l3WthB4B4QztE578dBhtIvenOXWxU4pmmqGCcBdVXMGKXteogjjdxvH7xpMicbs+pSaljMFP1HQs9USoy2UJPPMTId67TckjRtky9kXQw3U/HCyIlkc2eglq9PumtcbhMUxagZBDqd2Lea0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762294193; c=relaxed/simple;
	bh=p+E4D/7s5HkR9ReTUEc+abXL+EVR8+Pz/MVNabBR6Yo=;
	h=To:Subject:From:Message-Id:Date; b=FfO6ROJP+IDqU5tiy/wqQtl9YWqtTO7d0lomMR4VNc7Bp9JUKGxTvJ0xXvVmfU6Y7yh/WDdKI34+flFnoKkIpWHQ4hRoO2oRuuSPttKlwDiguxeX21caVXPm3LiUeOU/MJBTH24nT/Bmw5LAUo0JNI3q66dWc+5uAcZzUkPfkbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uolvpjko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uolvpjko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D52CC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762294193;
	bh=p+E4D/7s5HkR9ReTUEc+abXL+EVR8+Pz/MVNabBR6Yo=;
	h=To:Subject:From:Date:From;
	b=uolvpjkoS9Ja79H+6IGKhEtzroh6Rn/5c+xwMt0AoiXm3cOSS/YmaLdWzEkgxYAFx
	 D6Qgov+wp4W9+ZGp3ZJHPcH05J1BSYkGYcYvEU8Sh7R1uuj02s5dUlqI546H9U2Lhj
	 +h+O4zcWvngIt6YeAmoQvjhz5DGTOMNcf7NFIRS/sfvaqqC+jMoMNjH4QCcFFzEd0+
	 atvPh3kO2L8P2DiQU/HpUmixbjypZH3xjrx881BORRc+74R1Ys4ouXYubBzdF2qH0X
	 4MrKWVZ9RRLoVLefcMwAiHvgKB/sS9J15xnW7N8k7NBOr+0e6JVOamZcUw2yX34ob0
	 ZcWWCI0CqEmCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB90CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229419358.15349.6212338578694647750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7d7355d567e466e74d0d18db9b4d7a9f1230b1f83c219da7d2a78e562d5e5f
Date: Tue, 04 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762294193
