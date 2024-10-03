Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453381B969
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727928954; cv=none; b=W5ivsTAeeje1F1IyzY7d3S1D+w64v+eLHlmbYyziayHHg/6gq+CQU9hoJnGeehELVC1UME509+8CHum09dEW7ceDZyoULXvOt+MJ/j+dwBgKNU6aNTQDdw4L9fwxZrRg/VVUXUn2qjaAIeX32aRPxIzvkylu5QmqaEtsGnJEUOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727928954; c=relaxed/simple;
	bh=NfbhXDDf0oreAMD3kGjajPbgJma8XKNJDTo34g7Nc+8=;
	h=To:Subject:From:Message-Id:Date; b=WdFUlS2/LDHpf+WUoTe8yuOvaeMw6QHCe5xFRleoJVd/IDDKWnUmVNf+5zKkRJkV/G4Cm4W7bBnSg6By8MDXy8mJ9mY5+8wSryHNhKnziZpimiOqBHAL66Atd27L/GUmRZh0741PGYuJ4sbYwMyA8FXea5nukEBfrLrFITRDYhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUYDXYBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUYDXYBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BADC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727928953;
	bh=NfbhXDDf0oreAMD3kGjajPbgJma8XKNJDTo34g7Nc+8=;
	h=To:Subject:From:Date:From;
	b=uUYDXYBhGTeuUhSRIKaPGImY99/d5jgqJMu83omDXU5ZPsmXkOJzBiKYKgwKgpuWr
	 z7aUWQGY459ZnMM3Fh3L/7BMqLIUQ9b7G8wgrvAeTTqQLLX4/zLKxkSpQGFh2BljZl
	 4hyOBrCQCB9QbQC5rmBdIdCX8Do6mpNDGyIf22IHO+Hb52B6JIfdhJbvlZqQrcK46Q
	 nTHsiM90lW/ic63JfZAh9eLMDSX3NlRZUOKwRiAmN5YZcE8m+c7pFIG0juaMt1Xxk6
	 /3frlvTROl+byIBX3l3quzs+mt+XhD0+06L1IAblG9G0zJzvHVyBwikXz6+5wuD0do
	 v1ERT67ZHEr3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC06CF855B
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792895362.16335.15173904964891468758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f003d7ef1a467fdb2fa37e207e7afe116cfd0f63b46d702fb23fd1446c4a0ba9
Date: Thu, 03 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727928953
