Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488A947A885
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789216234; cv=none; b=GAsqWGOcpO+bakl+I4q4qCB2YTS6hS5bUIIs4Uado96Upb6VlWsB/o/10wXR7xFwhh6U087hALhTpaS+tKffX9KRTT9qUeh5NIPhWUBZK7PUXn8vKcv1/qC8IdHCZsIY46Itj1hqqyEYh/RKE0fnd0QVUdRfRx/eYDu3ull1ZRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789216234; c=relaxed/simple;
	bh=3lWXCLZdvUQH6cXPj4lezqh09uWWbZ6/q24jEpTznqo=;
	h=To:Subject:From:Message-Id:Date; b=E69CBF+ndeIaoXkmuBNREUFRBilwOS0J8/Eacx8Oi3fosHO1//0TDjWzbD6GBdPgRhS+VN7rstP9PLXLhBTGDhQ5KL6EaRDjPyzzQHBSYBj2Epgn2C2iyRb59yn8aKDiWAIJA5QMuJy9ufMSNPoLVN+l408+j8itEa95dkjy/oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2EW6KQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2EW6KQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BEAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789216233;
	bh=3lWXCLZdvUQH6cXPj4lezqh09uWWbZ6/q24jEpTznqo=;
	h=To:Subject:From:Date:From;
	b=H2EW6KQ1TXQlT6joPnjFeE7f06jhC4Tvt9Lt0QahwZRk4MeHmEfx9G9cGzUp90nyE
	 Eh6bAfSprnywvfzoVtiipscY7WSGN+uYvYlUmTcAoW3N9aHv6A1WBNtQH3AdW0O6qW
	 fNlLw0UIzql0EHqQIKVa0vHKNL0sBtYVDhYNrS3I3DHleR+dAxgthEfx4o8FWD8Yym
	 szKTJqNwbLPkdJA5vdv3jsZsNx2SllR/xlyMFt8aqTtQaLOZIkETrVp+iuRdNF8np/
	 wjrnlAlcdT4xn2SgDTXWutuqSx1nxncps8baiCKSvhrfz4oySHm08sSTUbLM/zI5Bt
	 Uf1Zrok3ZVERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2D4C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921623368.27852.8720225771819852160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c239f451de1753117f495e46b18f0bfda846adf8517b32a42cc20e9a0db2277e
Date: Sat, 12 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789216233
