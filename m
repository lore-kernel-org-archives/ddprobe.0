Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC841922F4
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745056194; cv=none; b=OphOBon4wurMV1p2mIXzfDxfyJ4oxQYP6T8+SATAvYE8tXTvyr0Zlyt+0JQr/lYEzunuuBG7/3B1D1nUGxEn5CTGfG2rR3Pz5GYvP4YO/7Nq94ze7M9noZukgYoONjVj/7ogAPqHDfq0xojDbpaG/R4ZQcdAVi3vLPmcYqIPsB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745056194; c=relaxed/simple;
	bh=uQZmpHxRrUi8v81tbrUu7XiZIzPfUe0Kt7t+2/Ttqkc=;
	h=To:Subject:From:Message-Id:Date; b=AiNcEIb0CO1TjFVaHaw5u+9I0SScPCiCel1VQpeBXgE6BmpwiaxA6d8O0NhcLu2KZB+IE0YauitGwmEV3O7rOqLSLlk3OzY67eawkzmRfFDDBCnab9okROxieOiS8VkZZS1OESznyyLTVqv0U2bSEWC7xxMt2sQ6EJvz9PAFdlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBsU3NFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBsU3NFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D06C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745056193;
	bh=uQZmpHxRrUi8v81tbrUu7XiZIzPfUe0Kt7t+2/Ttqkc=;
	h=To:Subject:From:Date:From;
	b=cBsU3NFY7fN35OVxYe5mFXT3mQ8Bn8b9ey9zXn/uj8bQP1iiNiemF/HmdvFIKGooC
	 2D4seU2om/HK/SlUDP8mrkvBLwDtXckfNa3lnVmzK/z/uiCTdblqoBODojyJcERCNn
	 Bzr1KRUJaMDpaMIQTMUGdedV8Cs9Zt8vtI1edOKCQWnexP6O/s5GnWN2yBXgCtT2Ag
	 A47h/CloICPqim5hVr1WaX4DrpYCfW15KDBVOsyIW03jmhD5QEfxt2+H57ddy04QpK
	 9g8byXIrkmqy/HgJ5ObkmzzXimgB8317tqMwOBrogxacvYgGKomjsi97aAje1CYlka
	 hDeDna836MhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DBAC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505619359.31979.2452949768211273795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfb81de2da05f42bacf7fcb567b49718af05d0fc77bf8c66d32aba5d819b6f6
Date: Sat, 19 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745056193
