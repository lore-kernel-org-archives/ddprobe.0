Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5D417D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780801474; cv=none; b=FbnbrDXJ/a1agtjRT0jtotoL4ZnI3jrZWvhWS629eIg6sZfjVtT/ID1KMEKWZ2H6Xi3aKsIg4xRzidbzjvwiPDpWemz8mklZ717oDSE/Sl/rjxrAD3LPsy+idqBUNMaembmB7EA72tQxXXh1Fd9LG53xV+6PMX3DjxIguOVk/5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780801474; c=relaxed/simple;
	bh=IOE3ovN50wKlTGM0xfmLB8QRXsxPeIFvNtC8UuVv4Cw=;
	h=To:Subject:From:Message-Id:Date; b=SiFwGr6pkwVrPujD5jS3aoduZOpj3qgjVV19TKiTRHDI/AlYsfFTpklD7IpxUcejaDH14BjvoqPfeMRH94kOvsQsULwJOhUWZQ5qDk8AkW0F1MDOi28ofPocr9+h8Y6HHr60tbky3afMooKU28z4d9mrIvL8+B4A5vtkM/wRokg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd438n4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pd438n4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1ECC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780801473;
	bh=IOE3ovN50wKlTGM0xfmLB8QRXsxPeIFvNtC8UuVv4Cw=;
	h=To:Subject:From:Date:From;
	b=Pd438n4ygG4GDVp+YgD89IOXVtizw4oJAVWTH+XshVUvasE7iB+/qdOaJqaqcCyfG
	 5UsUeyBxND9N79FpCJxBe9xza7vnNHN6PsPsZqvps3Lm/XqQ3kZe9t+KrY4mV5sstq
	 W/s50443wNyVO/fU3yTy5JNRxF4VKX476/k4kDGbpKugAhY6p+wLL5mO8M3dfVi78O
	 cdh07beK4c9F3MXBWVdhCfGi1nH/QIAXKO9pJZ038/fH0oAVQfNfsdISQjbsvoAnUy
	 phHpRC1PBsJcLSAV7kv7TtCDfYD2MG9E3oSQaAdxuaYsB1CeAnnOxnHXXdEYO3tnKS
	 DhDGFcsVLOuZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF474CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080147368.1958.7972367407123050939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deec4dbae194c690d4e19f86f0e8f19cb42f638bab9d4d28b10d169a7bcb07d
Date: Sun, 07 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780801473
