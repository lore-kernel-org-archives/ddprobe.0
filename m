Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350203A961B
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778767234; cv=none; b=QxaypuWSwT2sk1dollHMs/jpIwfMgTQnoUIdiP2jazolRmVFoW43d5P2l7Q/GVFJVP2by74q/3b/w+8BaLlQHDgeRjBsjAyZAS0SF5H/OiwSNe3Mfol21aPsn7SmQgWucHNGwjWtsan5D0YG9V8B80qO6Xj/0ZvtOKaj7bXOGSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778767234; c=relaxed/simple;
	bh=+KJB15/Qkzr2m5sMogxamhUkp5fMB01g+PFzqjK1Wmo=;
	h=To:Subject:From:Message-Id:Date; b=qGkoVrGvOmyioV/xeJGs/LSu7pYQ4zr9Ju5BGt2blu3FuK320GRQvQK4k3ssRadwNvOw9LIp52IBtusVMbbVqTM7v1Y/1BKnGlFXv0Xv+zjsV3cv1no6DFeyiBZ8/TDPap8gpKg+MLGomIflKWOf4XQJnhqj3iKGpcfBttNpFSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2p5zbc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2p5zbc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0570C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778767233;
	bh=+KJB15/Qkzr2m5sMogxamhUkp5fMB01g+PFzqjK1Wmo=;
	h=To:Subject:From:Date:From;
	b=u2p5zbc8xSO7p3NQLv57GKlFjwaloQI5WKr7AdSF6c2mlCSI8UC20pkXZk9gRZVMz
	 eC44qUINHB2mNJ/DvN5necehQJzyUm/paznZlnVaf1RxWxYNSAKgHa7M067m2UDWpi
	 yoANRvjAPDPho8xFk4FW3USQgG1LC62qA3p8xROCLzI07JJwJLOMEZqm/LgMlci2F6
	 kFSSACj3s2bTAvZogM6Eu31PXqJU/xR/gAW839RFJgFTH3uc8uzYyY18jGiErunlqq
	 jxpsu5uNKHZ3/A84gM804QyA0YSnyVc9NQR2etKor1Wz+o0DEfgjKyYY34WP+V2T9J
	 X2R+lZ7kO/0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC75CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876723370.17935.10520482209109730567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063afc5b8a90a20c73bf70685430a3f93f12a7a01db3578f0468776418b554f2
Date: Thu, 14 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778767233
