Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEBEB644
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716664463; cv=none; b=SCQDFH+F4fk9ri48m3k99HUbj0Xd1qXpR218WqoyFT+hZtoTJ91aC0p5CmJ9STdPmLcW1RafC43RC8RX690V3C6dr1waTkIt7o4d/07+EUMxe1+5kIDT+j+6jRqdMHkZop05oQ9uxVibyfsPFQVW4YH4q0/xWHYsRXNTGMa/kP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716664463; c=relaxed/simple;
	bh=jbGYwIH+svpv1SaG7Mq8NHo3u0d236QX4fCNIc7zVtA=;
	h=To:Subject:From:Message-Id:Date; b=l+HAOLS2TEVIwYYxeXtdadc/Vput5k2D+MZC8mtHfDiYqXrt2yo88BtXXME3gnzfdLJuw3I4E6qR7+BIlr/2p349dnWJYvpanl/Ziz4QxihOV4Rv0iPruFtzoIbkD/LAYGWbavDEbnRfSgh6HU9SbrA661nh59WuYQg9wGH0Z0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdIp3zHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdIp3zHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D839EC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716664462;
	bh=jbGYwIH+svpv1SaG7Mq8NHo3u0d236QX4fCNIc7zVtA=;
	h=To:Subject:From:Date:From;
	b=SdIp3zHD/XoluW4H1QEX652RpvWXcbnhh38pc67C0o4mY6yQPhe44bEPym6JCVXJf
	 xR9fEneeubHxI3q70hPjlc65AELP7QDLr05Rt+biWMWGL+qSM3MmF0sB97108LyRUX
	 PLsm3xzSBL8spOCNcHnFdfB9s2SKCPc6Po6/mBeYonzBPRPWnu3mOAMEvgy/XJ7q/4
	 eedFJ7rdkgRwnfnhM/uAAYuwwxSOdSDjdM2ZQHx/Pqaz+nGySqO1/eu5k62X4mjR/6
	 nhzil0bQM2jgdBivyPza7zbWVnTD7qZgubLwRqmqmf/5RBVyt4hmidv0MWFbWKmB+J
	 hwZtIcy9QiEcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F11C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666446279.24385.9348372716020917778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2b563a3c8bf39b86c5696969ddc5fa355e6775810af26d0cf43db261f7db67
Date: Sat, 25 May 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716664462
