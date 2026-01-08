Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CD9145B3F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767854034; cv=none; b=ibwLlQZsokcUK++Q5XhnRRCezgyohP2XJ9IT0OuG8a3kx8EeL2DUfhRQ4yFCCDtQJXe5TdjI90Taek8ecqT8YAB5Cyi0BR2ptPjoKoPaVtYhoDq9cpD6zixvZF8kbVGENSo4pYQFAIvKtReJyhIyM0f8sTycvE/CLjdnl/QhyOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767854034; c=relaxed/simple;
	bh=rUyFF3lCp/Oyhmj5DkaJCL4zNz6ctEREinDusnzTCZA=;
	h=To:Subject:From:Message-Id:Date; b=mSlzNtiLgFRbPPq9oK6hh6fB9AJugaAC/E+zcB8xdIrUf4+Adt8k/uXBZdmVnbKhJS5G1FsW2DCdum8FqiqwbIIA9Anziv7q1BxhE2wwGyWxL5YRHgnTBrsUtyZGhsaZrKvsLa9cbL+k3EdFxJJOHaVBsbe2aKFIoeyMSWRiYrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrgVEKvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrgVEKvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3BC116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767854033;
	bh=rUyFF3lCp/Oyhmj5DkaJCL4zNz6ctEREinDusnzTCZA=;
	h=To:Subject:From:Date:From;
	b=TrgVEKvDA7WVswimpccx04ttINp/C8kpRpdPp99rUnsuESXzeepoNrUnESRFakxbO
	 xxcPtFc4gUy6wwqacdlWf9ZVy6c/JeDHUDFEunwfMdz5vAag+VZwmg+NDm25opbFuq
	 CZs+5IyGVoFuMSplG3RjtRbe5e9QrN/aJimE6112fgZ50wq6S+fHlDBTvYVROUFG7B
	 La65bIA9VlU9PnIUxho8vd6EeYC/IzVbRLbpFSbdMNb/nY1R9hrXdNSB1GygQgOGLT
	 HAPrWLgVi2ctgwjz+emFWpAjARvoCc8OBWCdJT+i1cHZ1z34+1Ca922Q8nYPyyzuB6
	 3odxhQ/9QAwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95311D148A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785403357.27515.10204720369931473124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e394e61ff8ee3e84ad719639bdfd0b17bf75efe27740c4133f9fd24bbd527114
Date: Thu, 08 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767854033
