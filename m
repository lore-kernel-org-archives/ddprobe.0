Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561AB18DB1A
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787723434; cv=none; b=i0B2i6yOgyD8K9wNh/J9BWkevXOUNXfcyNPQysbP+zsQ1SIM0t2maw+Jkr1eFmuZMq2oGRH6KNVKfX7nqo26yoH1IsEsgFD4U4SIiRtZGdCrtDc0qNWJMDh5TgSmozpvViXNeYEQE+HiC2Cf6tv8jVCqrgkhyqEdKJtQU6K5YZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787723434; c=relaxed/simple;
	bh=AjD/gon95ieSM+0bIAw2NpduGNK6BotazatsoGIqPjo=;
	h=To:Subject:From:Message-Id:Date; b=pwmiy654PLP3UzjjzHxQHp1rZdBLP0mgwqE8THtOTv/pE3srnYdHGLPM+CFNmZBSEvDFBi10bh+eioSlA83rDxPDhvsOS3UKQxZbz0yPprxiqq7fxnBOhVLq3P9KGt63WX2H/i4OA7RR0No2mmA7ti9/rsAVyizHPaT0z++hRGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGLJwGBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGLJwGBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F1DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787723433;
	bh=AjD/gon95ieSM+0bIAw2NpduGNK6BotazatsoGIqPjo=;
	h=To:Subject:From:Date:From;
	b=XGLJwGBGWHV2QCBosWN5yumPX4HsXP3xZvgCOEg814mXb+bp0FSWRsj2tt9uPD4gt
	 Gi2d6PPs/M91vj4IDuFxgcXvBcawEshA6XHjLLM05LOLPL8MFUOZVwPkokTj8rTZNW
	 ugrJfRrqP1OWoF56PC+ck2Hi9MM1B48ioLqo4Mq5MAlIfjVdJbbc8KhxI5hFVFilBV
	 VCBbdvN7pIE5Y8dsMa3W+oCuYa0UOBvmt5EprvJ/hG6km3QxEx1ONhaths/5A/MNvq
	 3qLCgUbCA4y25TqV9qmYeL/21hlBQlhBmsfvAQ/h8KjcOS5QVf+YSWB3rUGJtE560F
	 v5EgrRX6uhHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD20C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772343368.4743.16983075661306667480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d3c52604ff6a9a40b760b84a0267bb7cbc1adb41b880838363cbe1eed6c4fe
Date: Wed, 26 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787723433
