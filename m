Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3868A35CB95
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790534434; cv=none; b=K/O5nQ8x07O9K2tVILK1pdwNevpSD0F4awkx8N5UTalrZJHc3jawA9pO5xsKOCBDfPVB1yaFNR9iogHzflG6ufSAxqA4V5CP8vKXntGHvbFnHsGJ0OJkyCZbgSvyAD5ndj6Lqo6dsphM48YP2+moBGWakwJ7GEz+gcBZ2pPB6/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790534434; c=relaxed/simple;
	bh=jKT6CTndQCknGqsqbo+b1AsLHdNLom5ies4TB0UvIhc=;
	h=To:Subject:From:Message-Id:Date; b=OQSwFcNREUU2bBITgOvLvodEzOALUrFNpNWiulq2KpxKdHpD6MO6vbsW5uN9IQN9B0Zrt5EQi7cQ79WX17MJZjUy7971UZH8JQ3S03GxScockQAXLUZncAX5sfBumLa3FV0xrHMQYv7oJZCs6RXE0SHRHmtEmodIMUAvnAfRNyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSLlG1M9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSLlG1M9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE90C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790534433;
	bh=jKT6CTndQCknGqsqbo+b1AsLHdNLom5ies4TB0UvIhc=;
	h=To:Subject:From:Date:From;
	b=tSLlG1M9d95+o5AAJ3e93H+Z4igOiPlN8Pjp7+QAIWftAbv1FKEkMwjWFcJujf0M5
	 WlA5EzFu01kLcn4MP4nPMkPeugLZYzB6AhpDXIcICB6POuCGp4NIb5E7PHhfpxKS28
	 5b4SLlGNzLnP0MnixfSFXUHtrIjrx68C/QIH1SsZFR262JSxXLFa16sOh8waZdvbj5
	 BUmJc4QK9P79OU8qmt+iNPZUrMWBhtFnRGJ/OyMZf0LkBxydx8jz0fDOXoxpwCHHz9
	 acF2kmYhRFP6kU+zpWZeZ4h9BvMHxXoPdeLhs2iIYAQQqy0YstaRP5KzryZNE1aUQN
	 3b9XRlwKgZHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA943C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053443368.32501.11144386210590510138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b9e71cd4a8546f5e95565517bf63234aa70389123969b651f4b1821e7c4ab3
Date: Sun, 27 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790534433
