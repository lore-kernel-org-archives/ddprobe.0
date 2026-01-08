Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E66B7494
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767846234; cv=none; b=HQ0x9veZrITZrfHLhRjIcRefd13zGetdppEUl8Qofeco1CJUwtnpiFt99NL8JPMvFZ242ILY7GKHIUTFvdUxagRbP3wlLCcair7EjvUZ9GeYdylutPOaeS5O0Wt4wkFkCXxN6q+8gPXwgEHrYnLQiBTHnc6nR3t10xUdlLJFITU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767846234; c=relaxed/simple;
	bh=ZV1ROhdJBYKKK3UvgGk25FHGvr8fJZwV6aKpUpXc3JE=;
	h=To:Subject:From:Message-Id:Date; b=YtRvpDDhX0O/6Eh478yyTEVex7uZTcrNkHxucAEUnGxvDoC0XgDnaMpdrS1Dl1yW23G0m4jKT3mWuQvs9OVeqO/rht1Wu69gOHs9+iT159HFdevaMiHLxm8h7LW1LhN/RX5iKreddah40rq0lndokmWuODk0YuwKNTJ+AZoE6aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOm4A8KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOm4A8KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5288C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767846233;
	bh=ZV1ROhdJBYKKK3UvgGk25FHGvr8fJZwV6aKpUpXc3JE=;
	h=To:Subject:From:Date:From;
	b=hOm4A8KS5g9E8Jp4/2jtqacIzIRfhb+oBY03jxrC9KybxUJxTZxfIdFpO65JqSOzR
	 uNf65WASvvGLU1hW6QcvlkIp0ZMH8LsgFx0swnWG7fsa8g0hZUs9jNPiONX8to9Avd
	 +GgcMWjoyDa95LhWC15uRbh1uud+Cp7Iqamo58BQRO1SgP9u5e1YKN0fU4TdtgBL+W
	 NRuSxN8msYkNtGPTIwqzN4V2VEWfLhEE/h6cZpqlumZTbkmMUxkudQEizMH/YgT+aE
	 K++ozmYVc93dv5Buzri2URYG34zRX4R3epPLlCtKAGZKtF5kLYTfKkD3kamkzHppuT
	 rPIyoWxq7AVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92333D14893
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784623357.1146.7798990247646415985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c021bc9c0f8ec121b11631a5b2d979805c6386be9b66b4326b0c72843cb61f9
Date: Thu, 08 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767846233
