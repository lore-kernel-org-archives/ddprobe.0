Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB361FFC77
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747393794; cv=none; b=XREHLrl1UrcwcX9DGLh7yK0A3nKKe/0fz/dt8HEVrd9+M4L/25lLpfvHkTM1raXr/lExTiJW4WIeQ5Zq4xUSfwDa5teBGi8GONsQ1qTAYuzHrZMtpsL5YfyMKW+yw4PYkag2U9uNb7QKTSyKsYTWu2i3O7bv7e+fXOPibgsMn+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747393794; c=relaxed/simple;
	bh=hBa5gXcSuPz9UWalho+pQpNdhsW3IyzlrapuVsSuVh8=;
	h=To:Subject:From:Message-Id:Date; b=sqT3TNcMChajGQPLrWi+66feG7/7DitRDej+fZjuyYQHV0pPBCUevbGQTQkL4nVR8Ht90+H0+kopmoRiCbM4vp1ht+0GuFmHpxhBh9sQfxaTYttE5j2CMvhmGAuQxxnQ/aHaZ29QIuJ9OpRdcUpLnGs7DePmUEml8X/kZqg6Tkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuDoFROq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuDoFROq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A46C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747393793;
	bh=hBa5gXcSuPz9UWalho+pQpNdhsW3IyzlrapuVsSuVh8=;
	h=To:Subject:From:Date:From;
	b=PuDoFROqmp/taqCdc0EhFlOfOEYsvsZ+/K/uabWrWD1OMZOX2M48E8ya8+2Me2qBj
	 iLZsKRMTuR9phpaGRICVi1MSVrs9QNWTFhgQfKQYaYEkc1zVdXyCt9DOzlid7hh8kK
	 PiKZ9OSnNW8WvsXO+qvxEkS51cUfM4tzLddoPIupUpa1WQMI9xOvN3xHoOmfdk2Dfe
	 AQKa+yvxQ0NeU4C16jQ0es6qQaPNHm90k8l3f1qFI1Z0SX4R1RybbGswH4ukRGRGwS
	 i1CsVYZal3PH5AVRUm64JTB8yzqqUsBkiZROAyCvO7gBy0Apvky0TL816UWo2Hk43v
	 boV4dQRUloWsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91146C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739379358.5740.2629542307732556660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b184cc5deecd08847aa577daf6573d26312b16c56712348306647eed63a201e
Date: Fri, 16 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747393793
