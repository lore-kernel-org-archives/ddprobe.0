Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C908116087B
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724865353; cv=none; b=nm1xilVPipHPBf+jkRrS6kE8rC+K9UHd3/5IE6LD5GrRTLrmYlawl2sQBTExJnlfiOSWbkVH4pQh5NWZ6H+/ljn2f8wRqt3IXqk34WrehJYiiwyk57KNzHGdV3kX/d0PKHaxkTbIqpFBN4FYJ5foP2g/dKiIm0joPEFPMzQ585o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724865353; c=relaxed/simple;
	bh=0dRdJO3FtmnZwJPoBBVM1EwdUWk3Kz+FJXt4tFkxZag=;
	h=To:Subject:From:Message-Id:Date; b=hPepDHy7UEYTW9aGn1OIGw4aYfOlbkuG0tW2BCv2+2K9PVKJnpfzVQwnuRWMApiduVHsPbjucRWb/WQctBUc7S4wN5AC9xTo4e/6uCIaS4kCAOFdzGG5mk8zVA066HVhQWB/KDDUP/uMysxPohymjvWphMgTD6t/Otix1fpUrBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTT/G4t2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTT/G4t2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1C1C4CEC1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724865353;
	bh=0dRdJO3FtmnZwJPoBBVM1EwdUWk3Kz+FJXt4tFkxZag=;
	h=To:Subject:From:Date:From;
	b=hTT/G4t2g2KzjKPC7BUZeUKwov24sWfmG6Oj+JNswGW/ZJ7jyb9oyZl3c7GmXJ9vI
	 U35KusiahNF09275vKbTQh58HZ9rSmK1tGwEX7+4n09BA1VCd7DbfdrebG+wEr6QI0
	 KQSXkd1D7wdsOPLLK96e/9Paq39Lw3dx36+OfUE6K/eCXDYoZ+Amn1iTd+N4CCYorg
	 pYpVnMeXGWqE3CXFWEspzMSjOLjfBtJr1MwEpf3026AHwBwxGiYpWx3bYFrz6cumGD
	 8pQFF3db+VM5KUo1VYDgRSeX4qZi0a2Qi7rhurdGBzkC1tUQx6Hj+3xEe/oQtfvY+O
	 OlCWzdys6g+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DEBC636EB
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486535361.17560.17219143271354026039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d84d9a1f78c863ec19ea66fd64386ef9258be98682b6347e79550d446e3a1f
Date: Wed, 28 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724865353
