Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB267C47
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705446497; cv=none; b=oRfTm+C1+bqt4jBk08AKt8/trHhj0D9oOSiLsmg9v1Ew4rdrhbC0OGanfIrmhhq/EeoZY0Aemd+Yk6hzkeW4i8OpCgFNWg9sd60Fx3gXkaPkxip6ZRq6ALIdGYJLmaBuNRiFLOXG855K+m33eRreXWdgvGRrMlpsjqXU7H/l5wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705446497; c=relaxed/simple;
	bh=m+QyK/lAMJEelhySbOYUhCkFoQdTC/RyTcnF2EMNOdw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=K+GxC9Cujd/TNZqw8gO54rH12ZpPyEFgteDaF3CMK1Ey2hNyLCTulCqqu34brx0M/V/EkKXfZO3sMy5hH+tuhMzSM0NgY76lZwk882F+/ke/vDCUGyJ6L2HLOYojWANOduuTdh4VI7dZd/mAfm6uQI3Uf6Hoc3kKRiA/RKnN99o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+BZE+qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+BZE+qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849FEC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705446496;
	bh=m+QyK/lAMJEelhySbOYUhCkFoQdTC/RyTcnF2EMNOdw=;
	h=To:Subject:From:Date:From;
	b=h+BZE+qIQ1HwwmZ0Pdm6xe1vkOLSe9M8/qRBmRk6KorAbMcoeBXjnBzQaqRWwnliL
	 24/8ABf38Ue0aXWqHIN+I1sy1C727uFj2TzrKWo8miigWGBTWMIXojo0OM1MEpReKK
	 RGJJ0zKvjek2yR1mkk4ZTqlgp01qE06Tzlmm6nGipNdWJLRM0XzNjiZEHolecIpdgj
	 Nb7CMDl9pKjgmfLjYBFsGPy3M8u7muXKysaRzux0pU/WiRTvogI4wChGIZBrKhlzwq
	 L/OJ63orLlbJnZxdz6LMVP9OpPo3hYqosyQ5rez6x3r0He6m4QWPDUoaWMapXUBAa7
	 QHc3OlM0YaT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6414DC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544649640.10931.5430488563660302428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a505b03a6fe0e015d59d3ed14d8f2eda3e46f4dc4e8476ccb6da5867f26ed5
Date: Tue, 16 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705446496
