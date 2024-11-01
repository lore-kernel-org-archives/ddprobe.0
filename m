Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162821D0F49
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730491554; cv=none; b=NJMi9rX5VKQ8DYr4Yw7axpfRJgE7NAVMYMQw/9hxvXNfQuh+y6YEnFSFy/MuedDlnlKYmTcoapyGKBvrIL0YePqv+rNVOLfo/HWUypo1TB5rH7Kcr1GXrm8xpYuodnVi89rQo8WYKgx+rlqR8fsdHLbz3SVoum6MiHZ7q3HDhyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730491554; c=relaxed/simple;
	bh=CCqghr7kiqmN/3LRD3Hnz7qboHOyM4ekUsL1+x6rm3A=;
	h=To:Subject:From:Message-Id:Date; b=NNUROBUOq4WBU/cQfp8qPOVjEGLRAWxz5y3HVAdKpVN3ml8Ww9zTluxc2+UqPP2ft4vaz5xxLBIJ5TPXAirm/Rfc5OxOzvIKgKgBBhlBtl/DqDwHi4wSNRjzuUIn+0yjJtxPGJF20ZahuEtRfF95yTtMAAwe3juDJ32gkBeqB/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/RVa1Yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/RVa1Yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDE0C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730491553;
	bh=CCqghr7kiqmN/3LRD3Hnz7qboHOyM4ekUsL1+x6rm3A=;
	h=To:Subject:From:Date:From;
	b=G/RVa1YhoRPIpAE0tLGZAuF5cnE0sJs4f4CvkAvLyYncG1UFRzV5gRvMoYhSx4uH8
	 M5PcggBVDoE20qtZAwMIVP1yASPrwKaBZnySZBgMhZNxgy1y+wln39/CE/21bxt30j
	 SKA1TcuvjbVoPFQQp0xn0O2V6EZG3BQxwfXlguMYSQTJYarZZaC/KSKN5nhSBE5JW3
	 8rmmWH/tg61n9Y2Jc4jCROK/Hoa+L5du6vpBs20XGE6hGY0AoRzA9QtkL0Wa2gXk9q
	 RMEAP+6BDNzCuQCo+AxZ/QBtrhfnZ+ollKJ7z68W8PlMZBWxdcKUNJeNtVDd7qCS4Z
	 7Ah0yTj1FV+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF093E6F084
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049155368.31480.16731556210266081758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde6c73e188809cb1dc7bd5fe17d9e16cca3bc30f0d2834e1aa31216b124bc6f
Date: Fri, 01 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730491553
