Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA31D5ADE
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754245794; cv=none; b=PHRNLw9mgxOf60ljt9YyeSzOLiyp4C9YOOs8CZgpmxXvPaiGr1WTEdJF1j//HrpOqPTtpUdKvI+eTECAIp/EUdOdzEjST2Z8BXzEcWU1h51w/GoqKoMArIN5w1ORUW8FPaHAzhJDo+FEBtvZO5u3IWGqXVxf9yqqZ1+5biJmUtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754245794; c=relaxed/simple;
	bh=YZEDGyvsVB9IjNAr6jGHYvX1NDm7dTIjrvBPcdeemsk=;
	h=To:Subject:From:Message-Id:Date; b=QoqliO5UvhSeWxRasc6gZiFKb+1tGhuUF/ib7a6N4NR9tW71MzxmmdaSgM+Uni/THY/Lu7Qg+zKYqOiMt9vBeU2RHWr4+4641+C8qyaDInfSHrsIPIGzKTCnBQ7dEBh8LidCZlhuVf0YzHdyeOOFBJfJu4XQxTLXiStx5IdMVc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am/NDAJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am/NDAJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F02C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754245793;
	bh=YZEDGyvsVB9IjNAr6jGHYvX1NDm7dTIjrvBPcdeemsk=;
	h=To:Subject:From:Date:From;
	b=Am/NDAJwTNAY4Qt9kzRi3By9bvFkFebixrasGzGzTlH8Xeeqkn2qa0aU7fDKyDKxt
	 Z8AxUq664oZaqS7kUUQC/2/26i2qX5OZpGnPF9XO+OZ+A74sk+/dq76tCyaFq6beGL
	 N6Wi77tYAirYU1NhN/jhpf5FJr8l6XEWhdxk9UJWnWGXvuNdsf4aRnX2w6o+f7VFKy
	 nzOJMLaEL2Pk+VgrlyA0Z5amPGXch7U70pjyPeDq6tsiRQinEZaChHdZhePs34zGLo
	 9BgltQr3xMnHncYqfR7+LSHYVJUlXnBCZ8nnsPp1TUD2NcNK5+/CDbofrKtvUQ7Um2
	 eclObGW2NNk0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B50C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424579357.28325.12115239984604086982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64c4077f01d26dc3eb26a29a41f625c29822344d5ceea1a0657614fd2ced85c
Date: Sun, 03 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754245793
