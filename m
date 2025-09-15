Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FFE2D8387
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757935194; cv=none; b=mb544t57i1cv4CYOJxVM5c4lshEm4clPHmmRBCE5tCz607/96FmF7KJLjsojgLhiVmO1ZycIGhgV3hVS4hUvO/Wp3T5T85cPmCBreioTiuy+FKWwe8JrQt7jM4CfRSMbaN5D48ieempdxESgQD4sqwslbZSKUZpsZX3PU4xZ14Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757935194; c=relaxed/simple;
	bh=8NmNvy9BF+pLlTdj8PnjfVtVQNTliqxFVUFR5kJ5Yz8=;
	h=To:Subject:From:Message-Id:Date; b=RvVXejsdluRDe4dqAgujzLDPggNLlOYx0MenQdDFR3aHFSuFl5IG8+npujF7HLpn0NwP9mOIhllxrzjtZtAAxkbJFzPRF7Q46nauOVuM+z4x+BT8fV196SkkqjMuddhia9nnRJhfqNsqtobSFFHsBEL178Hv7LLkEOA3kTTTCRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7OMkpMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7OMkpMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02AFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757935193;
	bh=8NmNvy9BF+pLlTdj8PnjfVtVQNTliqxFVUFR5kJ5Yz8=;
	h=To:Subject:From:Date:From;
	b=V7OMkpMj6fAhBwhBzk8ghz7D6sytWo/lU8s9BQsYWyS5bsfZayNk1VXpKfluLp3mw
	 Fg2a67HvZMnJzsZ7/9wM1O+s/XnHJ+EcUxvPaqzBxfa4vRN6bakXGgRpgIchSdTStU
	 fBC6XCD7oc6kzDwNEKPN2yonu/k1p++yEjbuJXOSLzzeIkBQ62xSBB5T3mHo9qBeB0
	 u0t5OW2nEu1YSVkcsjg8hHoUUSzrG0JmkidbQNRaObggfqA9lYXQt/8fOy3FmrN4hd
	 JmyB3PoPQ/Tux+CtfUUUU8T3DFHVtUloKprFSqIyL6HSD1hEELEjJi5lZcXFiNM5iC
	 XdrYsh8cD/r/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE60CAC593
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793519357.4245.5466256781795725050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8140d8b01b338b690e89a0f228363d2cf8853bd2d2de483947c325a82f7257
Date: Mon, 15 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757935193
