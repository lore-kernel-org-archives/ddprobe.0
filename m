Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC4F12E75
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720359383; cv=none; b=UHbZ0hJeGn06C1rXoUo9U8KpYrue+rkYPgujy4EdDeAQAN9+iflVi4db7HC0rhAKQtNMrskVkuZUuIDkbSttp/c17AOQXHknSV+x9uaNKUwfjE8/iKWWBpINpQcqh7EwwVLYK5vVdFM6pyfld5RoZk2QTeSyntM9eLstcMs1U4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720359383; c=relaxed/simple;
	bh=6n6LJ2g5d9gXnXcLkqHaC/NA50fL352wFBuLVYdxOCo=;
	h=To:Subject:From:Message-Id:Date; b=nd8YoTpUuPGilyKwoarZXlXoo/sDu4Es5y11XnbaMoZixXWtdALXqjULyh1XpkX56l/PKDAxy7EJj0Od84zhV7zZHkVz7GQCyCjG7cDaqWdMqh7sdZaZLlMFUKNAox9uHUKXCXgdKTMU5n3PjDbNi4X2bV9Frr3GJvqwe01PRKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdcpy2RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdcpy2RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD63BC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720359382;
	bh=6n6LJ2g5d9gXnXcLkqHaC/NA50fL352wFBuLVYdxOCo=;
	h=To:Subject:From:Date:From;
	b=Mdcpy2RSQ93p3FPwsGDcp2cQWl7TrFY0/TgCIUHC8DXac8S40o47chi7D/5Wl8nom
	 IO9u/TQvWT7muR/VRWcSgfFQ7p8Z0XJ+QQLVGpBoIdw+kMNe8+ByPDGLuylpZrWxKX
	 04QgTTPrd8oFWNebOR8k/V8DB6503h80W98+q1apheCeQ4463AJnyA1eKUrxGjhQOd
	 HexrNHa/OsRZGPVKhRIQc2adROy83sA0+51GtFa6y6ORybhGVpNixfG2ani0L+HoEc
	 R00xe+F/vDjmJeSdAFMlTbbWmkSguBrR9CrZx7lmXw4ahqcMqwUlurJDL/+YuEFnQq
	 KbJhZIhZ82qGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1641C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035938277.28306.13525036451023219628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53625bed07051a886eecb9f702b7c0dd05f831dd1d958db923a289d6730af59
Date: Sun, 07 Jul 2024 13:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720359382
