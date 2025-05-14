Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB12289E27
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747249195; cv=none; b=pV+VSL9c977E4fLyK+xlkRAHOARBWEsqoT38bJ8ghG5d6qu/CZfLhdxFMfe3cs/14m1oXaveTGgt2Bu1L7SL3qaIauj8dRw95VmLA1pDC1zEMUHhLb1GRNPPj9XOHxXi+Xrk3CtRww5jw79mleoNDRRk1RJs4BBTwEAlNw06F8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747249195; c=relaxed/simple;
	bh=7QEwPjC0gegI2hfE+V+zr48hGD1fMiqslRzm0DcLdGA=;
	h=To:Subject:From:Message-Id:Date; b=DCbtgh0D7DDuddbRaIS5XYyTIIcYXlhFLiQRcGKaxgIv1rz//WDPg6RUZxiGbbBQRSHe6ZP1Gh4bKoEytduWWsb7wboEmh8NMCXcBJutrOVMeo4zPdLpTqtyv6fE6fNQu2nUK+RWGXepBqepabmaehTBsz8RuqU7wmOnvoREUQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1/VcHXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1/VcHXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE1C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747249193;
	bh=7QEwPjC0gegI2hfE+V+zr48hGD1fMiqslRzm0DcLdGA=;
	h=To:Subject:From:Date:From;
	b=d1/VcHXNG+qfGolWwhI0D15z2VuAB6L1hO5uIcVeee1gZD49V7eTz0Bnpmoa871vk
	 om/uDgMESfam34VVrarpmZMLqmaj4VuJomSTdoXHCGTdaW4lH9yV1WwNL2094yBDmV
	 JJVX1aHi9sfxDx7aVkTnrfyDYgBineShBj60+EXpgXnarevwrjXhIY0kN+Kuc2e6df
	 3qOR+SXsAT+VPNle/s4CVydfiEatsCIRcajNV1mTsNpCZ7dsYGhcn+FCY96Wq5r0Uh
	 6duC1yAbpCvVbFM3Fm5IaQl82OB8i1yXSI9p7yQZr7fDjxq3lEEq5xV4htisT+28Wc
	 w5g2RMfFvd5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63EC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724919357.11644.7404898906164729271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df81342ed72978df8ad83d7a4f9ab3c0f0f91b10a537c3b183f9efeea08530e
Date: Wed, 14 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747249193
