Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6123543DEC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789122634; cv=none; b=Ix3hNvf83I2MsJxQBE6/Qk/w+7r/GgsqIz34h+6GqG8p7C0UjwMFeoe7DT2eHjbtppF3F3Zl6FIBQrjb5yo9yEnr3aLnmp6Y5iHJOSUzDfK0HdZPCnUHWk05Kf9oOJ/d6UQ/sre20B5j/zJHnSnwbwoJj4qq483UCXB7NKJvyFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789122634; c=relaxed/simple;
	bh=K3G3+baG68p5G+EO3zWlayLwiwcHHJgpHAarfhXadRI=;
	h=To:Subject:From:Message-Id:Date; b=aXOS4/oE9l0tHIZ1/8Wr/Oze7gas7l2snjdfyv8LfV9yieWgPr66G3yWPQA2mZ1wMVq3iWNm15wIsIVagI5DAymQGCCebPkUNjO9DrPyNYJCtnzM7MorMHCCOuIkOe2cajvCg4Gz9InAWfrSc+dhKndgcSFBQUq9bnyKiVXDipU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5hNyiQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5hNyiQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE909C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789122633;
	bh=K3G3+baG68p5G+EO3zWlayLwiwcHHJgpHAarfhXadRI=;
	h=To:Subject:From:Date:From;
	b=K5hNyiQWRaVVOORK2XgyMi/d0g0XowMrREe/gnHdBiCrbiJm/InFQQSnu9vdA1K9+
	 wlGuW0hNmawqd9tVJq8kHZXKu5/Rk1XvL+l5ifckC/zIGbIDS0VySkNKMIzfbkfC18
	 WRGVhcqVpaB4I/LN0etLaf6CUterLqAX4PHN/5lUAkfz2ac/EPPv18LaGYg5PrBQ2I
	 rJkxot4RADjTt+eVsyR9YCLupueJXzrpWg+3FE7Lp7QeYruY/VQ4dx1HIX97k0fbg0
	 BnHYyVAoP9l+EVQ6EetDhXRMub228j/C4r1F4r8GIUwAG8wUoA/AtHYONk/WIM5Z5F
	 xEOcpSgRBB+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1EBC88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912263369.23404.12046706879432111699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8add2429db0dfe1efd6af1b98795bb9b9a8917daa05b29f22f97398a3f4d6466
Date: Fri, 11 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789122633
