Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2511A23A6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787632234; cv=none; b=sf3YoDAfX0QohY7vLGhOMevHw+drQDdRo1iPGa0q9cLbrAlwwgKbWmBlUZIRbpT7wXe9pxVuHfcfeYJBCW1xZGwKpuY+ysArerAhiHJobHr6OHJ28xPFrtAILxwTh6xrnFu65mF3vKpudwIZoRq/J2K4qAxOns59pYhEn95by98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787632234; c=relaxed/simple;
	bh=Sqgx2CynN/srp6G85DTS7tFhljzq9uXKorxK5YVNWKM=;
	h=To:Subject:From:Message-Id:Date; b=DfxcKYBtx1lgZ3X/CxJLtRrXErN+IyQCJ4eIIQ7EaEd0dRsWOlQNq9jUeAL2SUbMQYAvCWTl4njm1mLaCRieDN/J+gBgeW5NqSXAwJXlL2aZOuFsK57Q37DevlWlD0udKg2vBc4QJtlVi1fsEdSKlQRZuCqqJJZYpU8X9Zvgftc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+ym94Vk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+ym94Vk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF883C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787632233;
	bh=Sqgx2CynN/srp6G85DTS7tFhljzq9uXKorxK5YVNWKM=;
	h=To:Subject:From:Date:From;
	b=C+ym94VkGg/U/ETL1OC6IZEtz/FaVCdmOFe6dQtg0AV1fsbhDKYV6P9yqlkfvek75
	 M3tPPExfPcvXqeu7lWvkJ8KOHUlqoVfyPjbLQPBEw3qldR6AQgEA9vW4/DlL/Jwl0q
	 J27aJrEw17D7Gtax4daAAAhANqtlDOLvw/adMu85TDmCDCi17/Mja3dLy4fidV3Ydq
	 S2R/2Zvpc2QEgU+QLoT7oJ/GLXOqFN2sIjg3c5N8bD84SHjzqxxPk0Twxa3+2yKbcT
	 9hbQWfxjdiAuVEGTIK4dLaXJs3vQm4z3M0Dc3okH1srqemuiePgCpgJyLMHJfSZTdc
	 wm01VnF5HK7Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB746C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763223369.6322.1666115932958124142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f58cab2516602ad18b4162fcf66f673118243752db17b736862e42f78bfe842
Date: Tue, 25 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787632233
