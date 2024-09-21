Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331B2F9F8
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726919754; cv=none; b=DWntMXPQ+44EFEVW6q9TyIbm3kL9vRFMtB2XQ+6YbEwla9DhHN5zGnxazbwn0PynbSGzcoHJ2faJoRxSp2W1UgPAoefi3ZC2g+8SVoUSxOD2U5JMajrhDmQkXsvIYn1VjIHRIoZUAVYFl6NnL7Ic3vMTKWc6CILPqwhO8t/xZtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726919754; c=relaxed/simple;
	bh=TgfqhysTcILp27sVQ81dAzGnPZcIMQWDVgqF9t6KQkw=;
	h=To:Subject:From:Message-Id:Date; b=R7Sduq4p1sLJj07MZ1Zkv3zMPwbOFFxQJRyon8oucvKvu1YHo+w1efjVVtvQkui+kSZ+19Z6+K+6VBs28Am3PQFzAIcecmQiH4nqTe6zSsYVNOSxw4WHPF+sqPhpDLOkWWDcTnMOnnejMgptDOtUGpMeSxgSc3IoO9TJkGzm72k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJZXnpBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJZXnpBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A753BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726919753;
	bh=TgfqhysTcILp27sVQ81dAzGnPZcIMQWDVgqF9t6KQkw=;
	h=To:Subject:From:Date:From;
	b=qJZXnpBdBr2KkZzjfxnOwNKTar2YKL+LqCf86Y0aOz/FTU+YzMU5qMWTWS0zmLDqm
	 H6h0oBE8RTlo4xkiphT6kS01C8+OvMMBp63mWBP4dh9s/SqMOm3FFhs84/+9YFetp8
	 VJiaeAgTJ7nj6dJHOoJUgc0Q5suoYxDzORnfgsvtcjNPGFeqUkj5QITSOfg6Q/VUov
	 3Hy1bNEPLt2s4E75KjQ2wKiqvfVBI+iRIyARyIufkCH+bm7WPoJQCkEgB3EQzDoLX3
	 6Ujjy6uAyWrnyBAjy0F20cDiL5xb7nCnrQVsyGCzYIBvNG6jS3p8Q50481Ft2CTaLF
	 95yAtXyZp+Frw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D83CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691975359.3340.1631604240398707141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bce9b5297d9e98fa1a06f5b0563be1961d6eb9ccbd3dd4cc6d0bad108098452
Date: Sat, 21 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726919753
