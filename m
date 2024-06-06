Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0D71C68E
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717643243; cv=none; b=Zmo+X35exCtsNo+S30s0GMyuaQWygd/3/CAhGJd8D1jbehFED4Ound1QkccVgK9Ui3efUcC0zUw60FlGfwDdycqpsTkgf4X8AQWfoTuiNjr5WX4PLnIZmcxZ3GlIAYjZC4jU13dbcK2C0AgxllPN/I+9u3SrwstJCEgImA5pzLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717643243; c=relaxed/simple;
	bh=EVtudwxSb2FfH1vjVElyBeJtfZA+oNXW57QDn4nq+zs=;
	h=To:Subject:From:Message-Id:Date; b=Txec+SUqLwGOOFJyXoZzGHEYFMmpnY8+5IqO1awh3bqv9kWz3YE1GAQRL3Q73m5DU/vXKdZfkrZK00wc+L9bF76oOzLVBIM6AoGaoaP+5MgfceUt3BpBZo2QyOBCP1iJJNhU/Ma7iK++O2peXEPCUPJNoCDchl5bs1R1JRBnFjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpj0/0Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpj0/0Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4222C4AF08
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717643242;
	bh=EVtudwxSb2FfH1vjVElyBeJtfZA+oNXW57QDn4nq+zs=;
	h=To:Subject:From:Date:From;
	b=kpj0/0HyQ58cHSydqZb+WvYcehWKtgsV6YBIYsian1j2pgKCSxCco5PvwtwzduAiV
	 yheC7blOfm2CRj/9ZyYi267RzDTszqHJu7wsbZ/KR/Vl5azz8Xxq0zFAaTkj2Ad2ju
	 k3RHNVTZlrktUhWfs1VJFwnO66BPlKkI3syFVSJukljn5FU/x07UnTxqSHwxY7OmjN
	 LA28JuU+w/lF51ccvFYVVoQlRjVDeheETU2TkdgpGKaOXdeE0A1gzeryCyPnTGVklX
	 unkPfzuiVOBJ6kMtIVPuNHz7k0jeRtsMR21cKPt2LeOPia+fGUiydzS0Zf3WwLO5P7
	 9qmdjcLye/Xgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C567FC27C53
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764324279.11463.16155583600973630663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa4bab827f722c6edceec77f4d6b684ad3e3249ffc92126290d8cec0939df63
Date: Thu, 06 Jun 2024 03:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717643242
