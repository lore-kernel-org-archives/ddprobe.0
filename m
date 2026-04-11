Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCE333CE9A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775906854; cv=none; b=OIReN9DUF1Xu6xlYDLy7FKcQk+pgfpC6c1JIe0UqFrIpm8B4HA821FShmJ069R2vKmC/A0K86s4y467g3WByikU6BIFZiQ7AkbCUaJFMrChaBU1HG6Nm+Cqq128LMfCeloG675kEYN6Ud6GLpipqiahiGrQmeM54mSEqgPMsDIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775906854; c=relaxed/simple;
	bh=nvytUXH43sWSG/1J8NKG9f5j56m2XLRSTKqtL+bGvT4=;
	h=To:Subject:From:Message-Id:Date; b=nHc0Ke0zeEpgKuPZUPlXfuoixDNlSOpSQF6HU2hGOs4WArjqJzepSDFkeVDesgkXilB4FGXvkKM++e0YgEb3g0a4gqckjnYXvO6pYR0TWZAUAiJbFXMxQommlhjnjWcjhRj88iNlLccInxt3xR7RyXRPYOlNz1OJU07IiiQgNZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfl+8Z/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfl+8Z/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8FEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775906853;
	bh=nvytUXH43sWSG/1J8NKG9f5j56m2XLRSTKqtL+bGvT4=;
	h=To:Subject:From:Date:From;
	b=dfl+8Z/Q/seQELPakCDqBou0zmzYY1qhcOPisehWN4+NbtqGkLLC5FpGDhmJ9FtDq
	 rbGsEbk+hd6OwerWCk425bsjGUmS25ltBJfU0UzATOM7iNPamEQKV0uJmry9Tux6c7
	 wpAb5wF7HT2rrHXQp3bRzE/1QS5YVVzdUZFHbf2/kGyfphLEIY3BZDAWB6EhGSl5pR
	 fe/xmzjhNBNngunzHa6+NEhFfISTBfyTBquBABjeNsnKxp5uJs08tsOuFwKennY7R8
	 T3gROkt8z0alS6k4lOVVyNBpznB4psgoERde6nn2/mbiIhbWa1Qp3wdxnECJt7OR67
	 Nvbdi5iu5TGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C0F3ED4A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590685368.2477.12680698141170883908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7b23bd06d095b1d9db4fe4aa4712d3d59b53d1a3d81a347f9ea14a1b0dee72
Date: Sat, 11 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775906853
