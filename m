Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC916CD33
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767836634; cv=none; b=QFUXBBcR8mEFYslMbpUYurQyjnbSFUVjptcOPqfTtstMQFN39wUYkKodluh+Al/mOZG9Kp5YGqW32s+KeJQATYtm9l376Tg4BjH0FTbnGqMxGzzShkcBe9dp+hMvugbz+vcx14VnyualuA319aooB9BkJN0+NOFxcecCFGKsN9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767836634; c=relaxed/simple;
	bh=vrLkrWFLxInfxRTv/3bOLYVXYAh2TM1eZSgC9JbX0VY=;
	h=To:Subject:From:Message-Id:Date; b=DIJAqfwBrHoEIy5cy1mK7sIul27t2RHg/Eb9n+ZYSs/HpQT8/P+rqaDnk9YrkttFnhNLwiCXTjbYFAhctvYt2vA7+AWNBq/vgAwop0aUnGgvwqkI9lth9CNJPFTriEEkXIIqEGZz7dMZmNz2rBVtSXpWaxPGFpl277QzeskhU4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TH/DZ7J1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TH/DZ7J1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09CDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767836633;
	bh=vrLkrWFLxInfxRTv/3bOLYVXYAh2TM1eZSgC9JbX0VY=;
	h=To:Subject:From:Date:From;
	b=TH/DZ7J1egK3sX4HM5gUUnLiOlw8YcUX11bVpyrQ1SmFS5lDDJQZuxiRq0E47S01j
	 i5My/y9zLuFR2x4iqMv4SnW041qcXZvMIo/gu2Cj563AzSWx5UTnAteIrSIcG8p9xv
	 9HgQgVmJAxFGvt3mpg7A0hDs2gMW2PRDX56TnTgYX1k5FZ6j10o2scijsezL5s0X1j
	 dXryzkZizrQP9DUNVa/03ejZ8eO73NyTqgrjkGow+3CYZW/mmXAkTZXEesF497aJJy
	 kQdHSqwPhiMiXnnXNKnr0tmkuSt2Yk6LjkWj39yNjwwFmH9v5Vu0ICLvJySovd6afU
	 FhU4Xx3IHiLag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CBD1488A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783663357.20300.13414642821771604124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3791dececc0b1a8af9248f6ee28176762a9964ba9f0f606b78b96018bd31d566
Date: Thu, 08 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767836633
