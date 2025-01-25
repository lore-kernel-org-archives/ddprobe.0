Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDCA18E2A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737840354; cv=none; b=om7mfwYxSJMroplzQi0uqapja4RD1CeSxR0zbCve55MH2MHkya/vJz9e4bBb+PAwT8vNMGdW0H3eF07D5wkqt/3P6QpfMFoDbUosIyE30C3tVAugGzO3iCbU2txC8MbW1810tDAjrwRIRD5ZqVVdQ2SWMAcgIf/7j1Whh2hthPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737840354; c=relaxed/simple;
	bh=oz9sfJesGJO38Z6UPkGU7yWW0l5mX0MOBsdORaknTxc=;
	h=To:Subject:From:Message-Id:Date; b=P7NHs7/E/jt+yk+9toAlnc3UCUGy8TqexkVeCI1qBil6fbHRo/1QPjRbYQ22ySfw9YR6UGaN1rmmTsGID+Y5pSm5D3iK4KjkYZqbDqzjDNGvbKsPtOXIb779cr4yIRssMcU+6+/Z6gCK+pMyneJOP7VVBoZXV6Li2+vQYCmb4Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYZ7e0sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYZ7e0sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B6CC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737840353;
	bh=oz9sfJesGJO38Z6UPkGU7yWW0l5mX0MOBsdORaknTxc=;
	h=To:Subject:From:Date:From;
	b=EYZ7e0svORIK3q3H7d68xImEd/XLkJkdjCJrSLeH2b3alkzeJxkzQ/gTeGfn1bL67
	 a3RwU31FZQNUZVOYw4ZI3kZifJySs0UvwHqFl7PmHiskj1iFBubOF37SPSp33TqMZT
	 y1xyrV8I/AxZ6aB9DFq8eqOuHLZFjuO2ZfsP207pwWtN7rnIx5dz0osfyJFAycoYWa
	 XYTMJgoXo50epGr/BXxrLSHkiEJdjfFKxrVIQBLwIf3SgRhavHlN0RvbYECZ7ynVjq
	 Age/G8Isal4GCVlfg1pvrfa2Cq3VjK7c47wnYS+1rd4p+6o3b/PHFC8gKIbxeLSrTL
	 oWOdMtD4uxBeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E286C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784035357.26486.8068866724374909697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a28cccbbf66446f2ebc4ee5e7e84161086c6386ad9ff5174f7b4a458d05048f
Date: Sat, 25 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737840353
