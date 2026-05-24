Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4648A6FBF
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779627754; cv=none; b=kyB0iBIG0QOg1pl4XgY1aFZstAg8Z7+uVnk2i3cknlOx22PHAALG8XZYz1evziCJAWkPda4+BxWWW2qC2mFHgDumezTkIT05Oc4f4hdPN9EOl9MZw8EL+SfpNANNOKaFKBN6dZ7DgWyQMIOwN7tM1/ZUvr0/KbOfy8NhNu64mxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779627754; c=relaxed/simple;
	bh=PtfGZXTnHe1alJaCwVcCgbcuECTY+pCduGjg0eMheEg=;
	h=To:Subject:From:Message-Id:Date; b=SAaoAgsQpHES8hDUWJ+mzxBAPmWnOssZeOeZ+s5k+/P/2kwT57640sZT2nrUWA324/jdp1gVoxqWnGqH9ev3RVKYTVkv7m/4MgvVxL4BbQBLwhYkMIGMXP3aJIJdUD6UHD96F9FsT2b//54+Bh446QHZb7RvLVzo/tV8yk/CRdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOJjLPEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOJjLPEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DA3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779627753;
	bh=PtfGZXTnHe1alJaCwVcCgbcuECTY+pCduGjg0eMheEg=;
	h=To:Subject:From:Date:From;
	b=TOJjLPEPQ6EVRIEqokTfhghkJP9pAKChU0gW7LNookOTE7/IQLpGRQtvpo6fWaD3F
	 rT7g3CbBC1RHVC59DP55ZJaAZ1cvFKTpz1X/KppDK/80e3+zRr3BceBnp7M+tBiH/C
	 D80XfK/eJrGFJQztmLmuHPcMIXtnUCtpHuRNUZKSntMugWaFKIWMSo5wNvJy4Tj9nS
	 Da7oD9haCb9pPqQ7i65WOWk/mtiv5IvzAHhy87vLUXtNMnGewJrJ/4WYOg5R1G/lO0
	 QY5CDlXqAU0Ueb4Cy/R+Q0dTyDMrZlVEj6OXwznlu3KUoPDWmGB/MiqZjqCbHiGJsR
	 ehEUDJBhhT7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10FCCD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962775369.19602.2106271014678602026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836324a928498d5527496177fc9ee41be6e15b97db0ca4a5b64a61147448943a
Date: Sun, 24 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779627753
