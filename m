Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB2D3D0AD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720422983; cv=none; b=EM8LOkRyTW+tYOjyuEfcNkc3wNVLf+mNxLbAeF/g/h4JndmG9p3BUjhkGWKb9XOE2RirNYRPz3QUyVmRhZgJjyfXplO+9NNtPINFIzG/6AdRjve3xqXAwsnEGECecJiQCoX+jV3moknG4J/YrFRjmUpI+6FHZQNY+lRTa6qS0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720422983; c=relaxed/simple;
	bh=4MC8cbezscdDlptFu1vaXEjGd9DIjZMGvHHPx//MnwY=;
	h=To:Subject:From:Message-Id:Date; b=RrX0SImdCHGHtpXpZ8XF+IZP4UcBXtlSyIkZFthep1CKzywikphsysKgEaR+3GLmZLpmSu21Cs4g6l0o5OgRqitu3bivQlfa3cZyhRus2rZSO7s43oh8rDU+uyt63y/vXweKl7XUTvoHgSxeF+TrjM5NJF4R/f8Nqp1rK1uK7GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFD2em3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFD2em3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02A2C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720422982;
	bh=4MC8cbezscdDlptFu1vaXEjGd9DIjZMGvHHPx//MnwY=;
	h=To:Subject:From:Date:From;
	b=ZFD2em3/Kc7axilxwzIfxmg/zDKZrlveKrh+0cM216ap1LK5PBWNhJA6c3q3BBQ8c
	 lwKWzLfh14riI217tAH+qfviOW8s5cOMCKBdvE1b3FPehQssvtVbLm87aNKeB4jvEC
	 GFGjwJ9hIwLKtze4lb66OQZNSljCCVM0S/Lry0gblKldKwsPv2dzCBEkbyYTd79Oi5
	 U9PebMnyKpiGW0Afk3TbjTHfIZGYF1digvbb8VKrOdCiMksTXkdKolLpqhDP6+CD1w
	 I9IteMmod8TbDlboDSvXiQ7TAguRpA09eoAPkwWrDnR0FDS/vEr77RvR1+V6xV/aUF
	 JG0gUeKhxvtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA756C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042298278.17940.7761854026324653550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740cd071232fa2ce66b736b300557f9636db5338a8ff7527f073d7a0c69528fa
Date: Mon, 08 Jul 2024 07:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720422982
