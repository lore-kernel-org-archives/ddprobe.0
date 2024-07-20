Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C12E1DDF6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721501154; cv=none; b=nnfeuE3vylitdhY6kKFypTMCIjXE7/qjs9oWL6LIjiMluIik+O9PjXhbDO2eAyKdF/ABslzFi6ARW30vF4XYU8HKlYGhByVPBTBmpj03PXD3rogJ/Y6OYSfnnE36vDXAlZhU1mW1HqfQpOvDOmOZ5RTwWyyR/qSq98+hSzRAwpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721501154; c=relaxed/simple;
	bh=8eP7tYZA0UpvcpS5GwENg/BXqen2tuJAlfCKc5iPD34=;
	h=To:Subject:From:Message-Id:Date; b=kEupEDfTy/ehZgKz3y+1HsUaknETgcHo9KBmlaaASa59+UmWji1fP+Gp6NPTLdY/zJ+4xycMZFDmGVqtKq7pLVDw1jAzUI0cIMSgEZZqzFrt+ASCzdJOLXaHJPhjG1sr59Fsz/lfoRzP+Jx/nBK52w7Fxevk8GUXh3+05t6KHdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrZ3cAVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrZ3cAVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3473C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721501153;
	bh=8eP7tYZA0UpvcpS5GwENg/BXqen2tuJAlfCKc5iPD34=;
	h=To:Subject:From:Date:From;
	b=TrZ3cAVzr6P4XZ9Q5CANllpQ2951ybxi+hA6rhSq/uPVsXWZRtQFX3pkhqV3qgDkJ
	 nSoV2FgF/fbPBUKspxDRWiVFaEvaua4cfmGrZuRnkgSfAdDJEhNT3dWe4PgYTy07Ud
	 xWtG4XmIEm6xNw5y9jEEqZFKscjr8FNxNZoq+U1vTsVMfF5QXADnRNE0GGVlb38Jjm
	 dnKMHL1xCIdeFEfReh7jE0x/jBfJecctfWxfqJnYg2151Z0gdR6HvAon6YiwRUNVZk
	 mpJ1n49QPVqAHjWcu/Pf8AhfIJjSlTU70D/o8DHdq6W/OdJATAfqPAaBzNic4GvNWu
	 oId27PwGJktKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A826C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150115361.29474.3806690733300139579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acbc9cada5d307ac2acef8f5216d17b2bb30544f647dfd7c2f0890e13bd42bc
Date: Sat, 20 Jul 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721501153
