Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1994631A044
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118434; cv=none; b=MrWp8j7HyFVOVM+gciPVjLmwRoeywt/gWcuZNC/TNSXfR45DkxeCU1m8pzqRvJyFNmH9iGTlP83abeuYzmwzLYBjx3NYb8z4VnPHj0MeuEISpxkjGKTIxgfqlw4sKZH08JRs6bKZuD4wLL5dyCSmmnEfI0YkInKwHPAIWm1bABk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118434; c=relaxed/simple;
	bh=qUZ4oPBUW1GXK1sv2vm6sCSzBxPi15JXCfPJZyyxRCw=;
	h=To:Subject:From:Message-Id:Date; b=YQ0kP4wDUMsDlLD3MTpmBdb7ZQKkjeSCCjVRTFwN0lwRuemGPn7mSUESMj/EKxoUbULPFWn1ZgQfVa+SldsPZVKAX3oV/TRLhaBIBYwX3ldjDSELPiwZecyBqfnEXe7YO2S5BN4S2UJM2c6XPx9QffzCWaArn8WKuBKtWhjMSQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P//tV8sM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P//tV8sM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F264C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767118433;
	bh=qUZ4oPBUW1GXK1sv2vm6sCSzBxPi15JXCfPJZyyxRCw=;
	h=To:Subject:From:Date:From;
	b=P//tV8sM1MaYRsHL3V/sh8NnkJ0k4xb4sGPgjdAkErJebz5VrT3XnWoOZJy1d8H+K
	 GVWj1M2s6p28gxjzs8d3jmBHKzaJuozFh2GQ3E3NrxiLQhukzDZexqIDBpTMs0MSWX
	 NQRNgphAOa6X6BwFiJFUnYC5/biZbIzm6HZvdJ0E+0nic5ldBApKxxbNBreIsKGsSR
	 LJGEDrHz7HTM0x8j9TrwPb5BdFc4xTta9qGIQaZVIUJL6y0trLA0zZFt27w8GUaFDI
	 JW3RSmMSajtkXFv/D6ZZy2CKN89IxSv0f3QQXAoB4Vrz0Y53vRDgnZ2wvKB9dKfceL
	 ASlwlBteKVzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E888EE4992
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711843357.22881.1270953797439014143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb4244e3374d09c2428a98b034451ba271f1b53410f6447d17528ce2a964086
Date: Tue, 30 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767118433
