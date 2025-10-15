Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA0E30C365
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760556594; cv=none; b=W1EAIvSk7tA7fVoqNhyo+FaMo+1QdvxD3+e+wZ2rd0yG0U0l1562vNggrInEBR7hjIFYt1RfuGR+MioWz/2RiJHjKAgES8n5fYWVPYC2xHI2slVACziIiI2hHHADO2Mo4gJRHMXOnksf0BjB0atl2QASArQTf2NYcsr84eLuxiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760556594; c=relaxed/simple;
	bh=ntwNAEaXJ8iZaQA3gTTT/fbaxHglmB9Ke4B56oMK390=;
	h=To:Subject:From:Message-Id:Date; b=aQIIRqli+Q0AuFVp5p3oP5nCPlMxB4KNXFPo7Rh6+D1YbNxFLd8jUZ4VoqZfRKuiLFeJjQ70lIqUrlLlZAq+1y7Tss8eQ+PMBMd2tYZ25BAS05Yig5oHQEYdBMXlAD0Ws2dh9rJShlIisvQSYtKysN+uA612hhzkLUtria7O3Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwLOlHwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwLOlHwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F867C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760556593;
	bh=ntwNAEaXJ8iZaQA3gTTT/fbaxHglmB9Ke4B56oMK390=;
	h=To:Subject:From:Date:From;
	b=GwLOlHwLXu2ZNw8lTRDeUvFc6kVQtcDu9xNmQ19LHMBZ8hDj1FkpKzxnjEpH9Wm8Y
	 HPwmNQc9LtAxrXmxefzBGKAJ+96tXgZlKXecubrYtLuqmAuI1y5C3T188wySNyA5rs
	 DWRuebXqCQh7+A+EY7+tU/nOQ6DhEGEe51GrnQ0RKGxIjEgKZcE2V6PPWfR6KOhFxP
	 i/CyiFGhpciPycPkliIvUgtIFOjdrqFQ7owII5vtihm4D/LxigzPFDJJxy87VCYKrw
	 EP/qWP0Pp5/CfHlnFiGy18KNOkEmcHFg7x8/uYF+MMoYiRiRYdWTbRwWR8IBbjNi+y
	 iUo3FT6QCZjkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E8FCCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055659358.27784.6151210201167940628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8630384af8ebe72a7a0293d12b80be4efcd7ae4460ba6294efbc9c594d131dff
Date: Wed, 15 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760556593
