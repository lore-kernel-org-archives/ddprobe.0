Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6B7325490
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784403514; cv=none; b=dp7W6gjIQWydtIpQS7RKxMaSNenWTvfib+p92GXur6t5QVC3Pij880JNiLxNL+Af5CxvmWkVXU/dXsJjeo9IA+3ImhcTtOKz3RKvYtFanlgmJet7Io3wL3Fr286fZPWDZUhlRBq9Ltn1HOJBGQPZ7UdiFNLVQPDQDMxH0fgW7bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784403514; c=relaxed/simple;
	bh=48UQyP5pyzbNOnhH3Uefi3P8ga6Zd36DmInsLZ7nB2E=;
	h=To:Subject:From:Message-Id:Date; b=kHhPOh9VeAl130O31FX2nDu9G35mHwF2yg8DV5sb8PKGacfYbOfLxIb2lIEAcg1irfGv9SDoPOCmn6XpHEQ39N+0UnwTiNruqtwS5+cLWjjiyYiRZ9q03BveJpnRugDg/suVkeUEVt78sFNifrZcwBDLOYE3n6gTQa6KWODBa7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNkwXMMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNkwXMMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF00C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784403514;
	bh=48UQyP5pyzbNOnhH3Uefi3P8ga6Zd36DmInsLZ7nB2E=;
	h=To:Subject:From:Date:From;
	b=tNkwXMMqTpcw+L5VPuSgBTFXwKabW46qwzPfn+5Q9FpMGBzoO/xCY6bKqOzCDy6pX
	 KtdKbfzX6MRO5UIuGF3OnduR5fCkutBAugPs+Pd9nspQWjItlSc9c/y6VahWqvkYeY
	 TEfOA8LylhPVwiOdR8VlISoO9JRs78FwunBRUQhsDiRTkPRLMJDavi18SW/u7Vqq7C
	 trxinwMGYm+0/TLg93vgPADBi4vu6Jg46MqflbR4+QcCQbKiUpWKkYJbaJO/0HQd3i
	 fbSALLcx2UmOuTw3OFX9+GFWsrLUy38QLt3HxmCoJ2ctRA4og5oe8RbuKTUHgyaHbE
	 15YJXJ5MvWwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0971C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440351368.7060.1586075230889276037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a041886b80df8c500240d94ed5a68667f979ec1274a500a14b59c175c83ba7d
Date: Sat, 18 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784403513
