Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF2E389DE8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786824634; cv=none; b=KaRhs0g/9CJlVwxvroZ5x0j0xiS8i9t3OXbYh5YJddZqPGr9hb6sEd3fXOZIXgXsu78cVhkErnIwwmBJ0VUPInfN8XmCxx+9FB72XpyNtjqVRWmheMqMpW06CfvWgHRzKtD0r/dAHL1CdVWAYxzHyocDMKKwWiSw4rbQxMBl/Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786824634; c=relaxed/simple;
	bh=OJ4NJUUrd5p36RzLal2TyXH5qwvqiM7w5pk/3SMmWgI=;
	h=To:Subject:From:Message-Id:Date; b=ND7IVi9l1iN7MnVsUTEaIsZxCOStBQipqQG4GG1A7mgf8zwlM84+OxNhH9dYAmSHIiYfDLg7NgAGCsy7g9re9m567UP+drO6Vofz1yA+P5B2K89K3BxbP/Jgko4sST/vZoyWqpEXCR9k8WhP2uLd57MR1AsPyvbKPiY59utVU1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIoCDa3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIoCDa3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43D3C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786824633;
	bh=OJ4NJUUrd5p36RzLal2TyXH5qwvqiM7w5pk/3SMmWgI=;
	h=To:Subject:From:Date:From;
	b=SIoCDa3drDsT1oeavwHAI79Wb2M6iEfnmAWCcGmG9bw9sMjMMTLNvHvzlxGJIv4s8
	 Z0xjiUEq2YbZxp2vzO4nBm3gvGH2+xZY136281evULJyvKKS5M6qkqYFw5lqmmGPoI
	 xmFpXsdWBCGhPkWHDZXsQD9OVMM3B8yyQt89P6b2j/lY9Mz2t8KuR5TtpdxfRqtM1c
	 IZopCLg6p2vXl7g4H285sOHUiLz/cTHvKM/CP1JQo41SpE0GRSWsbLLsQ0bU9O1KQH
	 8eCA1kSr7PLRi/kPL1sx2jRHRBA+jCOaJV2q4fcHV+YbXb3G2ieLHu3rrxQKR7tTV7
	 Z1UVIbVnigE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E0C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682463369.14096.11731877442267912645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43968ba47d4f06cff9f28d529ed0f1bb03f623b748ac9e4df7403e8302c1721
Date: Sat, 15 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786824633
