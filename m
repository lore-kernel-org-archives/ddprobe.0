Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471F4757EA
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784094514; cv=none; b=kYP+76fGgR6NeOKPa8viSVpLiNdufpcnk+svYuYfV4cGoADC+/JuTd+1pjkUxZputVLjEZqIwZbnNVG2FteiC14prVnAXnWzEt8jYab9SnofW/gtJBDZQDeEyKjjQGV3DwEuNeAh+R/WF+zRyEbMa2btNnL2u1hYyBb4ahxljcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784094514; c=relaxed/simple;
	bh=p+ZSfNge5F0CSsm8GZfXU/DDoTPuruvkG8qaDU3k6XY=;
	h=To:Subject:From:Message-Id:Date; b=W0BeP+hS9rlKM4UzF6Bj4zmyYcQD5DT5raZOD0/FEDskNNegSlPoc+mDEmK48vwTbjra1IakhsTOIDLyvX27Rd4K5NJqfg9T1Gqvvk2O3AQfzjXE0G//JxLmsCo3GLtLdp7ab5OX54/BKzQt3naTZjBWa3Y+7ZdweKaI9Px+6P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1whw2z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1whw2z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF47C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784094513;
	bh=p+ZSfNge5F0CSsm8GZfXU/DDoTPuruvkG8qaDU3k6XY=;
	h=To:Subject:From:Date:From;
	b=M1whw2z1srH/58XKIutxZDCAZoHUI2YK3+lMZOEMOmTCcijgwLa+rgaDrujqz4Sgt
	 FpfWA6+Cn+5oSfH6cZgSpujm8B11bYPwF5N9k3q0lgVUPj60GuCeX2x7sLwHeBVuVQ
	 Sj2Enb00JfwqHuzqkySNwC4EolGDNjNzteMczrYBCQXdV2vAqHa9Jl7m/XaVG6aAgc
	 EwALDsVuWvw5/VtdQy2vdujrde4/BuITHqewu0HoL5Fkwxfuvenuv+P6INul4k2kTt
	 J2aUoEaVFK6UB6yKV46Uo7KE91shapRBkEGp+r8OG3YCMpPDQUEd0y1kH4zvDkJRz0
	 MGz//9Uh1jupg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C9C4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409451368.8367.3662683318001194891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5993f1655204fd628b046aca87113e3f1af669aec0b4a7a6579f62e3cdeb87e
Date: Wed, 15 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784094513
