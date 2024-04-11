Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0772E7A715
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712851163; cv=none; b=VgITTkydlWtGgbI9axp5EyP9QfJKIZk71HvWPwx5cJs02jKFW8812zXAoqV2MsUrIzgRPvo4xPuBOujfr/OwUtmS02U/1Tm1YIx1djUdKGXSXGzJEywjd8L35CLCe4ufQPSdZDK7uply8IhQ8W791JVX6anszcI8e9NgjCYZN/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712851163; c=relaxed/simple;
	bh=wNGTAqzM5T6aSNmSU0bdaYyLE+B4F2C7Ij3yUqb5Yu8=;
	h=To:Subject:From:Message-Id:Date; b=IdfJlTSDyub++Brvm07DoKlDjGuWoCD6LxMo3be2eP0bC/9rDhSLFfUTH4Q3yHr/VGzGDAweZPlmK5pHer1cY07FdJdh8Zb1oH/48Yg9HvLWc43W7a59V6xo7cE833kAVNWPE/C0egvPRN/qoFDHvNYHad2zaFiaLNvhoaVS9tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeBAeVnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeBAeVnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D196EC072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712851162;
	bh=wNGTAqzM5T6aSNmSU0bdaYyLE+B4F2C7Ij3yUqb5Yu8=;
	h=To:Subject:From:Date:From;
	b=UeBAeVnmCUGXrd9xxFwQqxujxAyYe9BPNfjbj3d4logUQSSyF7EcNQNWCB6Z+z/g6
	 r1825e49XWn3W/bKaJvx2arikF8Odji3HBSpZzCkh6fLjDiPhl+vgexqOccPH6flRa
	 exvMrj2lpN3OyJ54AyBaVHTAfN20Vint8LhpvwqxuVkvDWe5d2IAIkZ/pJP/Dm1rWD
	 CUu4J9HYnfIlbHFxpInepKSMprGSHGOznPP4yK7NCHP8JWVy+opzzJs+6sRDQb79bR
	 Dis/BMeI3hfLm2ofv8J+U7YYbxDZQRreCWpwVCyfRXL7WqKrhuHMlszZI0KnqtlT5i
	 Jc5uEcIcKthPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC3BC4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171285116277.1069.6027131934664124881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239dfdecc83428b5304a8b7f15169d11bec15ac2396bbe483b2f64f4a498b979
Date: Thu, 11 Apr 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712851162
