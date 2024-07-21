Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B6C2F24
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721549754; cv=none; b=ptRJ2qD3Td37RQcMd/DZKEy9FUqY2r2jK3fhFGmEPiZW5BiJ/ki4aBRjHYxx9INW74wjMXY9Tm1YGoSaTX6vDurNjkz5MfHFiuntfLUpfN/qRqeIv95ORjQhbL1erFM2CHSd3C6sPaR285QueCxExtJjtucGHa+cMX/g0eTk+6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721549754; c=relaxed/simple;
	bh=1DSMiNLlZEoSU4IEmw7jKsDRpF/JraUY8jKuQCgcwYQ=;
	h=To:Subject:From:Message-Id:Date; b=MNmIT3noeeYejZm6x8yB8kljwcO/MgD1du4YujXMu5oT7N2uKa/1U1pTjj5+1tS0lGCW/HaoprTd9xohbUBRKlEBJMJ/hF29ev8oOL3CeDgr+JGJZoZAvQ3Mw+Fx/LpjM20Yky6Qd/iAviU2H0mj2SVfEf64mlxmbT2v5UcHUOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyjoca7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyjoca7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB14C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721549753;
	bh=1DSMiNLlZEoSU4IEmw7jKsDRpF/JraUY8jKuQCgcwYQ=;
	h=To:Subject:From:Date:From;
	b=qyjoca7UhXCeu6XDHt8bzPm67QqLR7IkLtS4xckqGdT3V/IKUTnYRFiYLqm74PiB7
	 Ak7KsXVNEj2wVVfhT9s9GWmdoc656hzbVVHSjgDf28mMPozeR9BBFRONttYfPtZz6Y
	 jE6Ry2xQ5o//WnhX6JKbguMbqoAUJOh0idvx/GvO1QQwkeufpTT6zefgZ2wtwLMeRq
	 aeGr1+B9aNc/RxbcIUtEPnx74sUuJzhWVrSrwaRVh7qGfJLaCTjqtjVct6MqdPe1tm
	 RyBvguTR5brcrm279+YD6Lzrl7dyLX9qf7lnRcvXZvzhsKHwUC50KiCPpMKTZQiert
	 llOMv8HF6S4Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B374DC3DA70
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154975372.17760.5672457660609238422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bff6a47a58f3c603757d43dc0f3072074d351e0e5a7a27eca4463219b9e8efe
Date: Sun, 21 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721549753
