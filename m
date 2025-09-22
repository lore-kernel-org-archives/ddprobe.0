Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39838276024
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758524394; cv=none; b=mUyE+3BaSwCYRuLpVkyqC3alRdpGX1T/Zan2ssqjHM6tZjrIIMU1T0BM74DU8WqMO17Zt9n9zQTegx4kfcN1FdmQvvHK701dLNangIf93kN7QHK96r1WXMFgMRecF/9e5phiZ/Rwdavklzp2IhHirD/UgoQ4bINj6HH1ZjgkZa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758524394; c=relaxed/simple;
	bh=vImr7My1GFa+xZYAy7zVnZwhZoVTStDgc0AaurluiM8=;
	h=To:Subject:From:Message-Id:Date; b=L2Mn9+itIj4vgjNKceWtPrDRvhRrAEOLAdMz1mp84fSv9HFhZMipUK5lF4twnPXfvpx5D5TBvSyzKch27yKTftgYKvLHgno670ennSCNejeHYl7qMN5v1yKhi+8iW/p1E/mDDi00rd7+jdrPoIhZIE7C0NHoBjg2KZz/PjKvUdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtKd1r6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtKd1r6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C8DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758524393;
	bh=vImr7My1GFa+xZYAy7zVnZwhZoVTStDgc0AaurluiM8=;
	h=To:Subject:From:Date:From;
	b=DtKd1r6NbSb8/hppWX0QzNNWMlg4ctJQJYWsl1nbhalR78KbTQQElcRegMSiixMf1
	 9XFmN0JaLXkB7UAZlfkr75l9v3rfDZmWJ+hbMMgaJ89ll1Zp4ulroCB0Yd+QOrxLHW
	 AET6U+Gs7IIimuOj+ANuwjQm83qy25Cwpnm6lmtgAnSw7Du28OSfqeWi2i2bcbcpLs
	 /2ciIl6MarCdOoyUNitSFAlI1pCtKNm9rVyJdA0cjeMIRiAm/AITH9lyWP9VY0kQDR
	 n4LXwS9T2AXwyzhsCHgoXAV5CkCJZhP486uH8HulTaSLRni4I67pp58ufqoPca9vDZ
	 zaXr3vOjxDIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A2CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852439358.31209.3469204969534644887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69adf1009bb478a7c8c320082ecfba6b1648c89d2f1cbbe0d5af697cb29067f
Date: Mon, 22 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758524393
