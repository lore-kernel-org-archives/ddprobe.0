Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1091531E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732428954; cv=none; b=XgRdzPvBosFv+rZD5/dVvAyE/Ttl/E77iSHD5+KQQnZ6pKGexngAIRpMjtjBXhY2cSJklB9Tg3uwH8rTZu+k1R0lUOKsONGQ4PWAYIafpggGwikx8Yuvt46feWbV64T7Dl8wbaf5zm4MMUoDoK5OhUp+IKUdAFYDnVgmPR5MLV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732428954; c=relaxed/simple;
	bh=epKhLGcWagF66/Hyup47SAqKRW28shD5vdren2UWzvk=;
	h=To:Subject:From:Message-Id:Date; b=dD4aB79UFzdlGp8HCOe87ZKpWF1YqI5MYHX8SokmRGknzugr2KN5lVR7are6u65xLRzykbD+tvnoyTOTVE2epZQrD2DRvTC3b76jf4BwVbaSWx2gEcG+GlIEmHMueHFJwD/o0DiQEGdwb2GU/U3ugUvjg4/FuQsyijtvBZfgqiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvoEveWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvoEveWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF92DC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732428953;
	bh=epKhLGcWagF66/Hyup47SAqKRW28shD5vdren2UWzvk=;
	h=To:Subject:From:Date:From;
	b=uvoEveWZiARoB197InBC9aClc6oGyy9EsUJIIEuIKm1z1sI3f2NgxP4H2Ap6m5zCY
	 /RU2AfA+KzUTp/siappSrbPIdQNXarKDmzkgK2UyVzU7Lo4mnOQrihbx6iKIJiVYP9
	 0ZWIKrLFGT6mMOVXbeXiCP0IxyvaFctFNeQeRvclU25FOGGInOYyIxj1L9KcZQDOze
	 aUIlYJK86ej4oKQOfTKTnt+4Xgg+E69Ke9FZvBA0IQ0fezRvWNFgYPPbuLJRpso4BS
	 82YP6l/WgRKYhRs6T3yvSAopfeA54THwFip9DkoYhV9ak4YexjRCkyPwE/W8ck5lxW
	 ucCX7TxlR2T7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C67EE6688A
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173242895360.3320.2008553622796773463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1ff6c8f3a4bd566b2dfc12dcc476cec7cfcdb1f6a222276e9b04240d86968e
Date: Sun, 24 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732428953
