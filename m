Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4019728851F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785214234; cv=none; b=stJGIZCndfQLoISD5yfPbhf1Qwd8VMqsZRp+ARpnlHhRGNi4TDVURlewufoLK38VEek4e1zutH6A79qSAiScB4rAXMbMCnw7TQBUBsjnnbD3uUhLXnj04Ih9HWp6DUHfwFI/mAF+rYmTPqXcAdRLoBWH5YotCx6t9nRGEZRpbGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785214234; c=relaxed/simple;
	bh=prO5cOzW85Fm6bKjSAvJO+Kf/lFY7XEBzag4Un8O8S8=;
	h=To:Subject:From:Message-Id:Date; b=Cfmv74XT1F8PUOO0LbJiyjqGYTUXqgVAu9J1YRJC2/dq5VMSGB7RAAJ88cK0M9fIXLxpLLzbB78dcLwe8mqdVK+zT1oMHTcFGkNV55ZsGScswLwysppEWKWEFTJ+vt5M/or4fauwHqD18e81yaDnw5WPIfG6C1FubLXPNPFWpxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCzwJSmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCzwJSmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C916EC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785214233;
	bh=prO5cOzW85Fm6bKjSAvJO+Kf/lFY7XEBzag4Un8O8S8=;
	h=To:Subject:From:Date:From;
	b=iCzwJSmDucPC4FZccDU76D3MOF6FTDgNjA9YO3dqzxbjf3+mW/Qflukg+KjpDaLAw
	 Uv68L/RpsNgupq3N0Bj32PnJsIRVE8DFD+XD2TeK+6mX1cWRAGbLb/jNxiL0qAzIOE
	 0pfB7jJQFvXnzr/dL/2bYIY5kUrr0/PIcAO3ntQtTmMlfnRT7G+19JzsuYCCZZr016
	 MtKvg3nVYW+pGCVKorj02Bs4sDlFYkm2IA+ViLDGw+7IdxaP48ili0G3sGhqeG6g3Z
	 JiDk65pOWvPUxb1Mt5iCvkW0TCl90LgebPPlUrw6g/K4BxhQMEb5JcEWC1R3aKnJa9
	 wVJLTfG/a455w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF471C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521423370.6027.5040327595481458514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8bddad26c8602c71744276ba7e927673a630b97514f673a6100a940b062b4b
Date: Tue, 28 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785214233
