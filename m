Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5091C8664A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715181143; cv=none; b=mMrTRVp8n56dv2WhGuvH1YvgdWdSKWlZQPcH1aJepeWBdb1UfctUBl+zr/puQ2OhvTzgXFn7rxkQHH0/Swis09MC/Vm6x9YnaLW06qTdrvCpp6KBKUCcdiKbxxExJfHD5VBmbpRm0ThZX4BvED2FatfQFEqse4lQVtmNxm7NIaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715181143; c=relaxed/simple;
	bh=nndVJK2qec4TkLTa1HfA7T9DENdUf4IpE323MCFhRg4=;
	h=To:Subject:From:Message-Id:Date; b=FnVNoFZj7n416R80s/Js+hmE46KqR8HzTJgCqFf14gX7wsE5WGnqtRle8pIEmo8jAgzwbaMTYJgcNSnvjCZIFAJ5Ou6OoOA5pwVIkm9GIHq3KHs3hYJxuQswrBUL1R1KhW4KF3n4cBAwTqRSws05TIpNpNyN+668+zi/mgI0BaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ian0CNEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ian0CNEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0155C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715181142;
	bh=nndVJK2qec4TkLTa1HfA7T9DENdUf4IpE323MCFhRg4=;
	h=To:Subject:From:Date:From;
	b=ian0CNEin3Sa6vv7VQppvFhYlXw0UPydAZ8AWZsbybL5zNeqPs7P3cblfzNYkFAf7
	 M65BLFp+kXOOyIN01qJ0Qy3g/goXl7FabcLAS0yu5SGV0sd/ArJ1Zd1/oK7JwVUL1T
	 LTyFEtXVVsMi3e0/wtbQ/rOqHnSWDw9+q7AfFeDrgcC98FRV9xsNpSnZNjoyhLiAb8
	 OWtSNBABSytZ6aIkxkIC8ojQc24tHdBXhrqDDsWSLscO6gCsFnQw3ZENRVLLSgefne
	 psBTdkN1Pj4DRS11unIfIo7acGkqAZCyasqkNIaK9e2KRM/lh6C3jeocb6kUYISD2y
	 yTaDCZDD+op5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1618C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171518114277.26620.12042272977584403082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 796528aa6d0c38b225f2187743f61f752dfe1f651f9562e68d5cab84c1beb1a6
Date: Wed, 08 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715181142
