Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DC31386C9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784227714; cv=none; b=C42AjYknZGhcpotQXbsMstzwWfuwvWp/L7XFGVQadkw82b4AeuZNpbYvHL35uAo4FNCFd2wF5xSOziWMpHk6C60KL/ZWveprpR8n1TF6E5AbJiXf5E21JU9glKGqMGiAnmkVegiVfDaJ2Vp10ChHhlVo6isUpulQ74Qnw0n2QIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784227714; c=relaxed/simple;
	bh=2IfMvlsVmqoDr9J/SbFzbYZm0S5/Nn2nQT3RTBL0NEQ=;
	h=To:Subject:From:Message-Id:Date; b=fDizocr6HqDP54AX4QTrMaoFXvpINrz1zYy/LxcVZBJb1pyc58FWuHuAEBetMwxRUu77VLerJwQ5OdaYKX9e99nE4C6Hkq6tQes0zx9MIbvd2o9KcatyYjZSukIwCW9C5iVxDR/uj7fws+WR5VV6/CtadQCxfnzIkOaRcALqMLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sECY4XQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sECY4XQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B2AC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784227713;
	bh=2IfMvlsVmqoDr9J/SbFzbYZm0S5/Nn2nQT3RTBL0NEQ=;
	h=To:Subject:From:Date:From;
	b=sECY4XQwEaXIns/MXGEA/2/SBazv+qww4I2mY0+nzcqAWjf9p5blJf9W+CJs3NBcQ
	 20DegP5+ycggVTF04uB4K5/pPxA8ZPfrBqt4dQUyCY5Ah75NlR8sEVLmjBaBKKQ3jh
	 e/ye/FHLJZjmFSjKeCEtpuxlK8GSq9AIJqCD2c4ozxSTmYtn27K4ct7Lx2Eob8nKOK
	 X9fcwFzbeeeFgaf0dyshHr5kyhhGifUy4ehpaWy/yfWjqY0KwvXVwHvGwncpgvcDvf
	 1ipR5F1xUA0KlzsSTx8mmcvSqBp3vEWzAmdsFgewwum2axUV7Fa2yjHMRGZkU/hM2B
	 f/KwFBqA/3KjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB584C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422771368.5054.17813648454360180392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13449e8bb1bb42525c7ef495b647c5dc52d53728d7a01bd7ac74dd5980035fa1
Date: Thu, 16 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784227713
