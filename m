Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C217427442
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757767793; cv=none; b=dmz2XGhWh05bDlRGgveOVVnSkXKyYgeGxkw7nlYo2bxf7Qyq9kLM+O939mRopryxhks14vyFll57AKQFGSNmG4t/GJdJTOO2QQr1n4YrpPD/x9OfIq+a0Mk/HFs46kxqDqFEVi8bporlnCLmkiiEnAszEsxZEI/sWpbsQZRX5is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757767793; c=relaxed/simple;
	bh=QEzxayEK8bW8H+TJaBjx5/W0lZdCP2DuC6IAjtuHMA0=;
	h=To:Subject:From:Message-Id:Date; b=VuRoyVeiSGfsxcjtRqomp0l40hliQPCKUtU4IySaXbKHQQJKQWAxAdhYhr5vtGcNdRHVyUaw+0jRZYhVgjFvIdCWHo32HGSR63PzKYSqBTDKA5e9FcpfbLDTxyMsv4ozeZYn+wevq+qy6zegLVK1ew1jQj9TcVoaap/2vtCzfqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjHDy3aT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjHDy3aT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757767793;
	bh=QEzxayEK8bW8H+TJaBjx5/W0lZdCP2DuC6IAjtuHMA0=;
	h=To:Subject:From:Date:From;
	b=VjHDy3aTv5AIPDsuZFBNOoXt4iSUArgBBvGvukCphAqO+oH/SlqNr4FZC5NNJDz9v
	 P3qQrXtaufNHm3O5IQMKHECnvRkIJw99nYHzVYDkrgH0TmlQl7AXY70aFjNQot8z8n
	 tERHiTmDMV1wOcyiQ/LylJZQiTxHjwXCwJaILumG36Ff3P3KOUE378tnOvRnXjHJl5
	 F3GB+pjZXo50sOBa2COgVEGTg/7oRi5f1UnOoAcL1t66MqxCaSNt72N04ng1YpHEV2
	 nwxSV3fdSyB4b50wRzI1T0gi7zMBlfeKXZcQhLde/Ss4tma18/Z59qUnYBbBWA3yw2
	 5FpZNevSmnDpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6ECAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776779357.27435.7775520814438901998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1232230be4e02319a38a346398de8a0351c2321416626e00cb99d773e12edbf1
Date: Sat, 13 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757767793
