Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDF4471432
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792151434; cv=none; b=WNvcZQYXiedaQVbov/INwCvQJsrhwDAlVtsx6Wu8A1WKSAuoJbKSumVQGYPhS0YdgjFLMn5qVA75OaqVFZTd3VOH+xGz84f7k2sLT8/P89vVP09876DJMg8/hvmBqsRxSpSiN+UDPTmOIAR8RQoXrgp0KS6ABvHk8WcpJyO3p48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792151434; c=relaxed/simple;
	bh=FGjIlASQjUwdbPonTjBPiPw6kzg2+XN9Xjiv2lO0rpM=;
	h=To:Subject:From:Message-Id:Date; b=eqDLSoc5NLrDO3a/xQeWaY4ZBv3B0ztO0gSv0NFfUWw5kW9dV7equcHcRyhBeFk6Vhgq/OYhMSnUTVGIYoDZ/rSjM3Lsp+e7VPYeC5JAqLscicLGFdPRkTI9jc6/j9PBSjqrEhqnRN48q9knTwxlCSuzzvTVUeOlfcGyytTZJ+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuCRITI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuCRITI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8586C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792151433;
	bh=FGjIlASQjUwdbPonTjBPiPw6kzg2+XN9Xjiv2lO0rpM=;
	h=To:Subject:From:Date:From;
	b=IuCRITI0YkaFvEe2SEweJOXNDXp47Vf1O+T9ctlDArToUSl+lerFJsfgZBKYWWNLa
	 yHUt3tadpU3YJn+jHdMT/3JcZGj9I3Ht944+p1KkqKv6Z4KrKeMHdeJ9QsLaiIZs4x
	 2eyUOd4XED7EyRU7HneC8tsOUgot+4wH6rZefbU/SEyvyWai0xj190nN9eo1C3I7qP
	 9x54RfQByHvZl4qHN7/S5wtfcY83nGQHZAxpQ7oaS4OPIWEEV6J/J9SnFe6cMQK52u
	 1xzFQDN3whVf/RR4iGfxJu8Jhv7xjcv3tP5TPEOVCi94HkbH4hKtQr1Gts5iYHjQV1
	 byhW05f3AKB9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C2CCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215143368.1546.1449233659156822512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30086aeacd15427550b12f66365c60009afe1f259e3cc069f7e4cb38c9f89c74
Date: Fri, 16 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792151433
