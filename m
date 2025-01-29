Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CE01DE3DC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738172754; cv=none; b=mZYxspgPel6bvGRaKwmIWhiS0mRX1d8Bxqy96MqpOCuoX60zEzr/+jQGniAnBJvkGpRLGkr6VHwwBbB14IjYS1V/wNoCvCyxS2VFLLtdmzyePZgix+3nqutGP4iOTp8MtoOO2nGkIPFe43DcXoE0S/kwcriEKyzofOE/0ZNkDeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738172754; c=relaxed/simple;
	bh=JoxUzF6jnG2FvfNnojmhchFSLG9Hw0zGpO5+SeKKQgo=;
	h=To:Subject:From:Message-Id:Date; b=nFx0jgakaDOxPXJx//eAT5NHr/HlECOJ1XEgyVpBoDJcIhIZ0HUSBBG00gQa6e8Brx23yN9o8zuJVYkA/utwJd89GcTR4b6SGZ04wg1tL5rItPbo8r7gvVscbo5gZf3U3h6XzrPn7N5KI+XF9/lrQomymHwYzohYL+D1fq2da/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLZwUvEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLZwUvEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D6CC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738172753;
	bh=JoxUzF6jnG2FvfNnojmhchFSLG9Hw0zGpO5+SeKKQgo=;
	h=To:Subject:From:Date:From;
	b=RLZwUvEuQ9L7yweTKh6oEWUNw2tue8+GpyK1N11QdoFTmYOMVT0CQ0jmAzNYMdT/D
	 vzEZjwTIc1Zktwc4u41HtSR2jz96dnF71nQDaIn/jUORyqjaH9CzfXF5g8d3NC0VDv
	 mhTaoHRtcAjojPTKdlmSu6Fdx8QG73/1CKWjVKiXVZ/kxyGzq9HqE+WgEUlfvGK34h
	 PFtQZjiQQUx2DRAjYNJaf6Tz8dJZ2AWfypvMqTqcjOE64VfjjItSkV/1VBdMUb+SjK
	 T8/nskuV4PGRDuN3WYacrRhIUrF2AglguNe0hZ567V8ppX8K92mdM2IH0ubQDi3DGn
	 GgMiYa/ajcEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFA4C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173817275382.31838.5296824274841319276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2219b9c80f8c0f2336a7a446263dede9414f4399052024764c872752bf0f859c
Date: Wed, 29 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738172753
