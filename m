Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C96F2E610B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750948194; cv=none; b=NnRMlZLR5l2uwu77p8X78WctMPDnuunDD+Oy4lVK/4oeq7J0vpGClJ8LLJBIFuUKmJ94TmExmjzxZmXn8IKH9X05WYIHFbjNu56pS6l+b7JzmnrhyvpK6e4AAfVX8SRAiamgIiv3AMj1PXmxtaBahCofjKMZquua6WRQDAhTFvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750948194; c=relaxed/simple;
	bh=DyIr47nv85XNZ+yRWqGzu0u4CDg55/57tNBTx1To0GE=;
	h=To:Subject:From:Message-Id:Date; b=Pp1csyPzEB4gUKVQi9tu+mree3juEHfbx/4kykHPSyqYPA8B2teg4YA+e3k93+6N4Ct/LYvmurmt29R3rleueuJ62SLlbI45cqUBzQAN3eInl+64kTabhojIu+o6BuIcrFHZuzPj1IZUNWwvnOHBjVO03elIumZha2mNAM7Gtyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdfyRnLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdfyRnLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41D8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750948193;
	bh=DyIr47nv85XNZ+yRWqGzu0u4CDg55/57tNBTx1To0GE=;
	h=To:Subject:From:Date:From;
	b=bdfyRnLJY6X2NF7I3kR2fwLknXb9xs2FcY0EnMDeeBxmDuZprQfrFLjk2+upLSdmb
	 Te2rP23f05p+U0HosV8i8/Bm4Ig5jQsXhbjZSFoUlTcmmBfhvdYYnHAIJjjndXw34k
	 VPmvRbhf5dpcq2Bn5xQv8Bqkvfx1OkCEn7XhrbVTWCY3yh0le0bw9Qa1OJY5Dt06ev
	 n2tiqqJ00UyFii1DaOh4+uWyCOqxxXquqBXb8ycRFjKJYB9lK1dmCZv9JBOkqYstbK
	 nk+8s7FrYlPyMJR4AgXW6moKqt9D5aeSOO6olzxGCQeQbMt9pOLLQpG+6/iKVJTV0E
	 MQAYkKo9vTfhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2040C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094819364.12490.15586064944273206366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124d8613962dcbb0bec975d1b9ed948d0ac27d261b5b74f1f410d2d358f6c5cf
Date: Thu, 26 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750948193
