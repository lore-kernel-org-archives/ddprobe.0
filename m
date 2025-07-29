Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390931A0B08
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753814994; cv=none; b=T/FZYdPq/aADzwNtOO2As9IQu+94liDx9rDZit6dUSIdRFfeRca9baN+zTPU6N7DVvFETVCgPbT8IeAYKBCWnLTR7iQZx5EjYl0Jbs+EH6XP0CHuK4OSemAcux+5lOLswRjt2USRzVf0g74jCUTg+yE1aDxbXNhhOvv+0HdHypQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753814994; c=relaxed/simple;
	bh=ZgMdkT48TLu6QipSitGdw6zGyyZHfcR3JeaZn/0h0wM=;
	h=To:Subject:From:Message-Id:Date; b=pgRABtVj3R/KMUtY09pwxBz+C6Jp6EnQYS0W/AeL2HWqotr7vF3/S5ANo9nal4Dl7spruT718ia2e7o1wymMEvXr1tHVN2Bo3ZwBDbQOj0NjE8DgO/anuBXT+c0hW7xJoI2PRNV0C6Cx7EWc9Ec1oY21CelT80VDQ5LvMMOPDy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+Sx8i+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+Sx8i+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4C7C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753814993;
	bh=ZgMdkT48TLu6QipSitGdw6zGyyZHfcR3JeaZn/0h0wM=;
	h=To:Subject:From:Date:From;
	b=I+Sx8i+r9GSQbDlqDH58T7DItrx3yusKReZCmRzfaLoX03hgJlK3yLOSUYG86sSUz
	 Q0qPR6A9sW90xplm0IljX9nPRzGEvRRYzEl16rE3/bhdxwUQvlmjZL/C44WYpUoxZA
	 wabdD1la/n9VY3e1YtixOgt41YGLvHNtlZ01dMGXxHMFvTv8bxtfcbbPU1qU8LFjv/
	 +z83bMrDZU30GM0mbcjf6TGj5j126ZtrVbNGA0B5rQXKO2t4bieRgrB/WT8QDa4c2z
	 CUq2N6kN3sjwEcEX7aKUjP+6VJarHeWiUNhYW3Bi1t8jj6zMsPlKfGPnO8vD1SoVfi
	 skahAvJPXqDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972C5C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381499358.8602.6691875372998814721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c25dfac5a00cea7c5076fe513ad301051b8d544010f2561b40252118c344f2f
Date: Tue, 29 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753814993
