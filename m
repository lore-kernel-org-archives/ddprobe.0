Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCAD46AF0D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781692594; cv=none; b=JHzBZ7X3bagmwe1mmEA+bFWhjHfVbDEsz1O9xouqYx29z/j6QoCW2pUxY5vhysZGGomthiOrbmw3DYt3IzMwn0U7aQgB4U2QqLPxFMaqF2fQsBifmxuDZ7JDay/X3FRuNOHdtxdDFxGimVoGdIkDrOWzHm8GIxO5jQFA9X6YK+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781692594; c=relaxed/simple;
	bh=Mx0ExzrPcmIOurAI5bdzIplglJkdLTSl0xTWx2V/29E=;
	h=To:Subject:From:Message-Id:Date; b=E0ZUcIUUcdbJjijUE3emyXLSENX1+TD/2ujHlL3ZTpwR9L7rIzkn28tsDsVpFCnI2Meq/sx8UPj7p97DQVYvRKUmBUkYoH0FNwbzwWIEYvRUdahrIj1CngzVlAVg+UksUzteP1IMvKtaoHptbj0zkDaECA/Jo02y0SLYm94Lp6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzfdaF67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzfdaF67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4E3C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781692593;
	bh=Mx0ExzrPcmIOurAI5bdzIplglJkdLTSl0xTWx2V/29E=;
	h=To:Subject:From:Date:From;
	b=bzfdaF67NNuZ3V0VulQvYP4W3TkXsHB1HJ/p3GppwN4wv5KbSrQrQdTyokqDaGM0g
	 z917q4VtmGpTIcyMGBk+sNnnvW/b8eiQvDDITDUHT/r+z8rtQheRc0CYGYMhICxNR5
	 Wy6aCtUx7Ga+oGBxc0AhOf5LZReb5hKzc6VcJZYv2/Db6Ah3DPoE5IPg/mu+op53k7
	 LgDe8Yv7Pv3Wou9pLwmUbTxM1EdflKPA0EJCvRJ2Jip4QWORzCJUS1V781ZyEpxDG8
	 lyuRL5YaHlwgCGbaL8t342faf32ZXEZJrjgDyi2+dS/KJVdAMhHQ4ljtdgTpI9dMKd
	 TpGkGRDKCqCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBAECD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169259370.9351.5584372466253075942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22470205b0671b1772e4cc20c30fc0e4f32d737801744cfe3489ccf7677cd617
Date: Wed, 17 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781692593
