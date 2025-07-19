Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187771BD01F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752954594; cv=none; b=qg2kqsXlMSQeaVQrDeGVdryvNikgh/FlR6RF++bOjTSIOPHu/juOiZWMwG8KKv/fku8UnAefeodDy7h+P7tqyVm10RZ5yZ7MjkDFomSQqcHpt5R/+f9i1RpwgCjKpnv8HRmsNGHG+3Zt8L+SWS/jaJEK1RR2HtCv6OHBPRn4pLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752954594; c=relaxed/simple;
	bh=Ua1aofiCXy8p3aTad6T99djvwkJdf7tYXDh8NrKLjQo=;
	h=To:Subject:From:Message-Id:Date; b=sdMBaam1Ql13XINJos8bIGBe51jK6MvoKyyEThT2J0yi8H1iDIl8Ti3Lv9bZtsDJnDcoAX5FqtrtTPLR+gUm6JLNLlfrvpd9EG5nMuQj6iGIaxtJulb9k5H7M+UmMnGp/cP9tegyfJG/N8KYELY2iVbtTesG82UDHK8/LQ+welI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzWiWieW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzWiWieW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3576C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752954593;
	bh=Ua1aofiCXy8p3aTad6T99djvwkJdf7tYXDh8NrKLjQo=;
	h=To:Subject:From:Date:From;
	b=uzWiWieWzz328LZgN3zbR5vUou0zurUMx6dBpLlJLgbiFIYM0WNIil6eoHCsOqbHJ
	 uoDU7DZEIfxFnoR5JKhXFF6hUoU9LrgjmX4O9+MweUridF6MPMYuBlvoErDDdNWEIR
	 KKAr5TswGpipzc8FuKSPeafZE3rAz09GB7SxC60pteVzLSYRK+giRmJubOv8xd+6Uo
	 FL2s6HiGM0ZeuzYzaabZk7sJGzcFMviP9YT9de8JcCOMsSJLccMM1/VnVQnOYEIivu
	 +PnKR8D/t4CXsXeegTEQVluZXqrVWdnZswFyqWGpIiwzDIjE7h3DQ/Cc7qqLBTLnRf
	 H/7Tva1Jcm4Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90303C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295459357.19046.11599317018110611121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a2c13fde9a60f7c1a7253faa1fbf546ed5bc21928ccdefe7428fb0740d0ec8
Date: Sat, 19 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752954593
