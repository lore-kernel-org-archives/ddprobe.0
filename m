Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57419394797
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787177434; cv=none; b=T6vSqxrvVXUqBXVb0tKsVusJuu5aUToUVP0/2H5SkXFFEsPV/SH1wLv4iAUPjvS+v4V/0YVfBTwj3r8JttLsCt7MjNIFhS4DSUy4bLXLhX1RlGSIvU4QSSGNQf7wiurIAQkiqNl3Ve91NjMQvf1OjEauA2hKJNm07PKHFsl90bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787177434; c=relaxed/simple;
	bh=5ssaw83F2N8EevtpnSI543sGu6C8D3CjQ2Pp+FPOfjU=;
	h=To:Subject:From:Message-Id:Date; b=FSAOK86t7zKY12kVoIf39Z40dgs7g6WPge+RVFuEHu7qR2BIFDoDayPv4pIb0h/x2ga40/nvcTiEN91fCW/NEtBXvIrV3CTZx4pGDqQYyV3WVM/k2alQ7PaoFfytfO2/vM4n4A1uBToTUyh9i2sZJaoPPYP3HLsCLSKWUrWl7gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTeLoNn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTeLoNn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C4C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787177433;
	bh=5ssaw83F2N8EevtpnSI543sGu6C8D3CjQ2Pp+FPOfjU=;
	h=To:Subject:From:Date:From;
	b=GTeLoNn6k4eOTAXOPO29YV8Arlz+bxIgUACfFJ460HUNHliRpfISKGh9+tnOjdBw4
	 moZ5NAXm+++xSJi88urzjNIDZT6HoIhFB3TBaeft5u8pujF3RKUww+qCHgNunCw3Wi
	 lYPSiNtm5gyUlLyskTEibSl96ELVsH7EYq7bIOmn1llLNBXB8hl7ITyZUKLBRRXMuj
	 NTqBb8zaiqnxXYR9InmP6Ojpygpg64qUEEdm79supkVcSzAXep40B3UTNh3fDqgfK3
	 lazrXpvilzVe0LSODnU7u4632aP24SlGW69dzLvWFCx/32430HdR7Vx+5Pv6VNagtA
	 2IsFavmlyPBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBD0C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717743368.29949.12657222307893769699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b9d44a0151bf05c9f0535c05907cae9d5a5d27125031754863ce70375c9e85
Date: Wed, 19 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787177433
