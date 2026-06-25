Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9595D342524
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782420454; cv=none; b=SRrezBcBVIGlQQEAYcegqVQVsaXJYFTuijzK/d5/9grnjEoJxTOZXpOHFykp66Tm3ABEy6f+MRWsVmXsTIHyIETz73xrbhjNBwKAdY31yAwh8sG59D3/Ukt+ozF5ARymOGoU6pDRFUl1AMVmQ+oMLThhqn2pVX/xQKhvSr9R9mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782420454; c=relaxed/simple;
	bh=k9QoQED51sgh+DnegMSDpJO0ciqnXFRU0gdsshD3eww=;
	h=To:Subject:From:Message-Id:Date; b=QldiIJgMn6MOZdtGkhXVpT4et1BmHjS9hWTbioMFDpzWLTtXell2tjIbmBGxlfa0eaN3UI/t36YsZN6suCeuJcnt7pSbuNoMrJNL6Q4nUi1pRqto8OzLkMUw4/7y2VDl/VyhHU5QbDEvogl0c545KoRath3rnHs0cl1F7rCeqv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBBsBlo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBBsBlo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19E2BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782420454;
	bh=k9QoQED51sgh+DnegMSDpJO0ciqnXFRU0gdsshD3eww=;
	h=To:Subject:From:Date:From;
	b=CBBsBlo8lbR+mdgMAzVqq/fRGyDZEVpK8Eg6mp/gFbeDjzQSc27oM2AByVtC0CoBF
	 Q/cCyZi1pMc+cXoQl8ZleAePBlelyT5vIek5w5kGl6DBPnHPyYPpy88YMeKUtLVJ1x
	 GqMx6XP0FEl7/iGEj9OOay8c0W6jdWGutaCyOXvGfoiCl6qb2H/y+LtCQldUolstG4
	 g/vYfgvR5WOBgy1YH0Ock8Y5hkroFF2P6KN50b6Et7tJP4QNLDR4wgPHQuZ/bBFxwD
	 XivxuKuZqQLZQsEeaO9dTz922ZI26AEAaIyLy765JXjUjSR2Fdt8IwT9EbLPalI/vV
	 djZ6M+B11alvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D73DACDE00E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242045372.16103.8360693506865058225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ab46fe6f2922b71c8dbb1e856bc6a960d90119ea66a9496f0c0b5891d5244e
Date: Thu, 25 Jun 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782420453
