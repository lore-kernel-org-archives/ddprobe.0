Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D0DC125
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734395754; cv=none; b=TuOpNCNL9Essjodu50SX7yUey7VCRZc8H3aFeS/jrBqp8q1RnO5duFdP2TJGbyXaUFG/FoP6O9WH+ksDJ/w1Tq7ObC+Re9Xl5n40/y4MbnW3ldnnfSF3BsskUCt33el3IJUmUlnxZ4hvrn02T68ckuJnSibTLyGautsEoI5y1w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734395754; c=relaxed/simple;
	bh=RisscmKi1OdqYWQH5ClZ3mWYmsIVeSjkwfJT359ldYI=;
	h=To:Subject:From:Message-Id:Date; b=IzXJbdtliC8O2FPzjgrXrqKexEHq0+wDnh2ziLrWlWa2ren2tkT+Zglx9k6uIfMC8lzkwXX3G8G9CLN0Pd7vJgDJ9RWyffGlWZ2Uqg5PMox0Kd68mnFyw8EcaXX37Z1TOq00t7zuI3f9ql+OlBSjCDmdH1mEt6OrZMoIUxyO/aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+ux7ukj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+ux7ukj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1EEC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734395753;
	bh=RisscmKi1OdqYWQH5ClZ3mWYmsIVeSjkwfJT359ldYI=;
	h=To:Subject:From:Date:From;
	b=U+ux7ukjOXGJstuhQKSb33EOzTbngcCQ0QR2ETrDou5dMy0WQ9wzEL9T1sB27kJjQ
	 G2PxrnN2xo4tgCb3575DC+FqVDbC8n4MGFPn2Jd7h737B1GPSuifuR/ahC5F5EGzoR
	 RMlMPCIORmqslx8lgFxG+fElfleVu9UHiq9fT/wxnFm0MOjFGeaeZMYu47Z6AQjf1D
	 nVgUhmjwxLlp4iLKJOEgE/yCvhi43iQRakbhc53vcWuF1bkmMGqCkiuc7/Adb0fTON
	 JyjaAxtGVABDEkuAbPlIyh15H6NtgMdKalQJqu7ogBltEXpjy2LZvHyaMvgQjcGQd8
	 2tvyzbGEnWxYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993B6E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439575361.1517.16710060275529860277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534373cbb7d2317057ab4db5101858a9389e28e4b7ee0b2f721a3635fa923c15
Date: Tue, 17 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734395753
