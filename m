Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A6A17333D
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716916463; cv=none; b=rlM2ThstwhMq/UNAJ8jB1DLbtg2GoBBaRp32SKSaCsSxCMK1nmUemFXpV+RLGT1+ov9GRPhqmjA0cc2za+8+P9AMtQHje0IEK7Anv1f/79oxFVnAL1yW0tg2NVDABhH0bt3qWjWNazRZzEdgRHBUbxyMa178eUgGOGoLLLTAwmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716916463; c=relaxed/simple;
	bh=eq6wi8n3Rim52HH4vHgS0B2CpKJmnyKVL7VXdqYUq+c=;
	h=To:Subject:From:Message-Id:Date; b=qXGfr1X89FaA6c+ntPSlIG6YWSwjKZ+n//5e5kB36jY2J57wJE2D4sn5zMbqG/zgbOK/UlcQXSW/gTPhK1jvwjZnLfiCd4/jGMGvx0mfYCAuDvNr0yMsBS3H6Vp7/8dXdhcC1c5iKo0oK+FIGo47DBhimpJvGjV7qPGmG4q1cqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub6B51GZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub6B51GZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF4EC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716916462;
	bh=eq6wi8n3Rim52HH4vHgS0B2CpKJmnyKVL7VXdqYUq+c=;
	h=To:Subject:From:Date:From;
	b=Ub6B51GZP2SkrFxIIpdn1EUmYp2UKrvTu/iGwtRc/iseI3GU+djeYkUhG6+ABu05b
	 vaO9ND73Ndi9xFsiD/LqXRCiIVxBnLL9nkYMz5hC2SalPqfHmw6odJHDXXUrF7ac+Z
	 rCHAJ9+GvapFX7wv34YuK/spUifjIViL3kCi+IzE1oneOIu29U5mPOEjoe0QcSbc5I
	 tvNoba/92xKZUDg0WE4XqTi1znyTdewP6/GnpHUd1EGA5T7tdJw9ELhBd/Lqadp/DV
	 ADkFtcTD/nTwSq4sa+Osaw7+GzsNlW4ZsJ65XiBJK4br5+ozrLe0WUljzYG5bcI0RG
	 xifJPM+SUHoow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0A8C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691646279.25762.4235663203698970863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b5673c78bd6eef39fa749de254dbbeb6ef704722a40609d7f2c2b53aad3145
Date: Tue, 28 May 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716916462
