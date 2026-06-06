Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA51273D9F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780784074; cv=none; b=YgjodzMLrSXt4BPZNm8m7xsqAZeYRoFhnmQHF6QqRMxtfkFFOAJr/weeBSrtJ0/m52TejbXs4Mgiasj20l2RZxdoOfagOU1hkbIEKBhFSL4sIZPCwuUy8W48M44fXx+8ybn4PWJ1FguUknazRqnWW0Oir6tvxByzene2M422LAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780784074; c=relaxed/simple;
	bh=Nx5xY6/6oTwSYwR3qppChG+GVSQv2i/4xbFCVbkLdnc=;
	h=To:Subject:From:Message-Id:Date; b=aBQ/aDfyKA2XlIEAYrHHK+ozhvt4A/V+D60Un46h8Zevj4Wo6CI7GQ/flIdiKnlPRjXTYgBPloMmNZzZQsYNYew4p+8/434EpesbjAODtzDe8wdgrbRdWiNGtf6t8TU4MsTaiyWHfMtlEeqXuaPCo+FWhNmzrcNGce40EdpwaAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pI0kyIHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI0kyIHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE8DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780784073;
	bh=Nx5xY6/6oTwSYwR3qppChG+GVSQv2i/4xbFCVbkLdnc=;
	h=To:Subject:From:Date:From;
	b=pI0kyIHRyFLL7PoHUqlZS/v5dUYr5jpkkKdwdzMHkJwaauD0P99dybRjFMErxIqhQ
	 EENsVnbWjw2lCMUxdhNSSgz/ftV2PctxWm51KjcJOk8juo8GNlMrN2CS+1Pj9PaANx
	 CTuzA8zrXWjXOYicKW9MclarJUMN2Va5G5YQ5qSai4J14gLdJvGefNebj0kX5a4VQp
	 3ulW/kUgG/kx2CMgKoWS5/zUQ+JvXYYwahFEHQTjgaDNuvekcFZdJkFt7pEVXpVT4x
	 lNvLb/1bWiuBog9E6OCW1CaKvkZEu8/p43+fDK0T1L3FrsQegJh8ipqnThoURvoBjg
	 +692u1YbczflA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DFDCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078407369.24512.4793699533635715656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b156205abac0d2f278fbb14223d0f2be6c3347266a6bc4b998c3e579db1dca76
Date: Sat, 06 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780784073
