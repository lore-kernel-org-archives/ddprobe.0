Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219274400
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714527743; cv=none; b=S9N8q16OTmWrZdJVaTljvh72vntIqe49bxR8VxtOMUBAq9z2qLbt6qtuQnfDv/E/ai2rxFdtWtUxH4gmEQ6l6ePyGLu4jyPEqUSpbSB3jTrI48JWizIkDgrO8+8P/SiUggPMhRM456zLPzaMpxUQuju1GtgBFmAEwKtob7R6fvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714527743; c=relaxed/simple;
	bh=3Y0cMJUeoPKb7eSwC6lUMhkcHrwt+KEqzBk2oWpnStk=;
	h=To:Subject:From:Message-Id:Date; b=Svwt5FM13SlucGruPOFykr64GyIlzlbHK7bhAQ1tEtG8McYr3mwwvvMmHIAUSQIqNAIy18pCIIbI8KG1IycK9gq6gRMCOq20dRS5raJxfrh4w9m8eLK4NKhf0OTcpXaQB6jjDETLkEsLecmL3QPrIg/RTcO+u/aIhmIC3t11gDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCjjiUp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCjjiUp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C2AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714527742;
	bh=3Y0cMJUeoPKb7eSwC6lUMhkcHrwt+KEqzBk2oWpnStk=;
	h=To:Subject:From:Date:From;
	b=WCjjiUp2wN54jfmnIz9Lsp8UIQMOnIg/5PTVCr6rERe9kuwHXjLcEiu9T+Z/CFQfX
	 1YE6OQVrySZHQ2oxoAEQvtcY128ftPKCH/ErbJwHaPJ7XNdAuL5OELkEYAKMsx1pXO
	 MkwbV3RFcDN674zCz7dQVuPCQ9k5JYRKW0dMxcJhf0RYActU24FoolaNRY327kdmoG
	 6g31uu3Peri/1jBC2bd2QhG759A9mwC+Gwsfuk1TiYuUW6phrgiHq5DvEenD8HOVmG
	 O9Ej84vjCbH80Z4b8iJzSiQlk8IlTgAzJ863i1Av5VFO+L6gE5f8BM2mdzKKXbT+PF
	 +UelU89XgrioA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1988C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452774277.23998.10366710076845155219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b699163298510cddea65e693fc2c5279ea8af863140d94695b79084a2b7df299
Date: Wed, 01 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714527742
