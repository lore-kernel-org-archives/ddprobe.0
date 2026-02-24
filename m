Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242641E3DF2
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771914294; cv=none; b=WLskDqCzN9erfz9hA+EOcPhJu6N81akKnVd8/EKLlgVzl7I1/AbDGTq91b77Zscslj5islhzFqvLM8DRnpStKxZXPJoTKzcII3DwEslEQ8blrNmsjrV04e1h4ncR2Ui8cnGfV4jZgQGG9ttAwI/K4eds0exfmv2UNbbbm925eTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771914294; c=relaxed/simple;
	bh=syTd+S/fT8Slukp5hGU+w7A28DtWFkbmkvKt8NeAvS4=;
	h=To:Subject:From:Message-Id:Date; b=e4QSho7lEvojAXTS6IxDw6F24OVGDkqn2BMxAV3W+C5wJXDcu+m1nwWPj+OLOQTdY2msJBSr2IKrEoVHeuzC/MyD/lMX6eHUIysslGebH1cLpPcSC75Di52W6MFoJ4EMwnp6MoNIZhTzfKm7erPfYER6W4ihnfU1NOOK7YGWmvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkgCEWL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkgCEWL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC839C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771914293;
	bh=syTd+S/fT8Slukp5hGU+w7A28DtWFkbmkvKt8NeAvS4=;
	h=To:Subject:From:Date:From;
	b=GkgCEWL10/nXqXf2fdKRx4JEWvgRTIn5S7hVBtGX+L5qm0hmShsXcpKKnnnrV7Zit
	 4TcD9mkIP55AqmywLoXb29ELrZxu741q3vCPEXCSdLZJYQZ2cMn7tIzobXoNOK8Ksb
	 AaAWxl7FkZkarmadWXvZUhbV3LH6mHsyiJuA2cMCYm5TcdICBo79rSthhi4sCpgOms
	 4DdWueQLH9X0+va4JuY3NpdllFXxgk2Bby0IyhMyEVZeutv4CNrJYHM0ZrsBe3Lxdk
	 e1QNBHpcv3k8LLhs/6WZVj7noraqFTePrWcoQyt1n0DZZLrro4cNefi+Yi7/TDxC4c
	 a6bxm9b5n7FbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51BCEFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191429366.15325.5928425090468221620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1520d4249a2ad1f8c579b052f8e60cc7f8ab43f6f721b247feb577a94593ef60
Date: Tue, 24 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771914293
