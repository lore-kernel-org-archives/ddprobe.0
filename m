Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2183232
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732810554; cv=none; b=H8kpym9lef7jHKNbgwTnWRLk3KFXSoHehjbFxWGQta/vRU4+pModZkUMNoTzowjNSEWzIy2BpPyGeLLnzAlcR5bYr4AqRWMTN+/wfjF2HgKzAjQzdeOOVs8tLldo8hrkN9pjOiWYCN+oWflJRxkqMYcC6QBKar9HXPdAa653hFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732810554; c=relaxed/simple;
	bh=ksy2ZR5cL77BdmOHnGmtWjAILvx7nNnuxDmrJEcrxG4=;
	h=To:Subject:From:Message-Id:Date; b=Y5N3m99UyxgeIHiN8U3rqe6n3o9J9MBAuYSVSWWyqjkxINakOvutywHSz/XhqVPPx81dZi4ywdBi98KPETyTchm9Do6FT1HTutVCCWcXeQam85GL2Xsv5oyaoNXdOp3XZOlk6e5gW9zuxN0jNv5i0QsnNo0jsXLRm1+pKa+3j2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAltS85Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAltS85Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99F5C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732810553;
	bh=ksy2ZR5cL77BdmOHnGmtWjAILvx7nNnuxDmrJEcrxG4=;
	h=To:Subject:From:Date:From;
	b=TAltS85YquAM40JGmyKZdwk8nNRalHomRxhKXFllEk9ctcRGaqG0hlZnQhlMVzBa3
	 1t3Y62EDItEqUrfytD01ADO1XPvzZ7ILpQbXKi9BtoAbOotjJJfzJaRDvwN2JeJD1P
	 ifpdBLrUFZZlj7DzN0wWcAptwYhBOCNzH/K+bLWyIHUZrfaP88jsQDCYn+NJv6MkQr
	 4qbC0JjlE/RVgS/uwFsID5vzeNs2FA+pa3slxCohjyqz9XOJLuVQxUtOxChGr04S6c
	 +o+TbHumnaWPfavi736VeJ6OXsWcsgh+vAIeKp2h3udEeBPnpgN5maKUSPxJ4MPosH
	 i563AqHpqV4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57BFD70DE4
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281055366.1856.2383541118018617581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66a3a06ee28490ba4cd8a8516584e237b1623f8d41d7423e045044bfb26a44a
Date: Thu, 28 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732810553
