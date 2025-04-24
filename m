Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FED1DFDAE
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745476194; cv=none; b=MjEEHpZEAa8zYSJ0WzoSSIdLWIdzU4PKKGMywQ8c/B4fgnUzaX+UIgVihg6VOsgav79TOfySObj60v01wsWQGrKWDv3reKxvGcR3abcAlgxN+9ae9bjd492dCmf+MTZiHyiObLfasZrKZ9Drm8HhYAwwymNWstlHABojV9wfim8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745476194; c=relaxed/simple;
	bh=Ihw5G/cSpv4MHgK+ZY9gx8WFlBNtF6I2U3UybQtc/b4=;
	h=To:Subject:From:Message-Id:Date; b=kiIwjEbGq/T83bP0zVnRvYBgrMctAwZ8vplMNBX1ilS5axsFsZpYypxxDR6bUTX2AiYQtys+nwdXezRTezRqOAExTSw4qBXWEgUrwCJwn2f1tTtoJ3UawQ+IG0Ojg3Q6u8dL8BFQNfyYQbqs+gnOKY3QbSs9zxB5rF8aD/PNk3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0Je4HVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0Je4HVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745476193;
	bh=Ihw5G/cSpv4MHgK+ZY9gx8WFlBNtF6I2U3UybQtc/b4=;
	h=To:Subject:From:Date:From;
	b=Z0Je4HVHNc62OQTAgMA7GiK+T2TO8WruzOU1fBRakvCxlFpjXatvrv0a5KCm1LjMa
	 Mi2cw2WEc9c3qsJ95I42NBKZKm+zq7C6GLEbbc6D2BNnKHQqZibGjjUoxr7cq52gzx
	 2eI82OP5gvfuAzkNl7d2GcHbQ9c6EBX4zFncPiQCuhn8gXVL+NkiVF6075zbS+v/lS
	 LsnYX66vE609LkLO6IHIqjf770QhnNYOapL8PZCis6zkKVtyvFjbEk9CI6CKseWI8h
	 cIE4FwoeUNgYyeFwM/2wwkJS7VKotxledu6y4XZkgBXbUdZ9dXr0A3wdsSWTTYNofg
	 gpX925mymLicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB77C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547619357.27992.10086497423866795595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5628f8f9bd3a48475455e58e731f17b9122024c23be9c4f4801c5c95cd98c6
Date: Thu, 24 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745476193
