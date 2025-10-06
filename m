Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D189199FAB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759780194; cv=none; b=Drhb6v501bA8reg/+e3iFZB+bqrv1P+uUHShqKTeXulJgec5A1vHLH6E1XTehKasKCOKLHPbQx4XGsQUMXaYDgX2dP0gfeea7iyPFIfSaBCIDLnzgLQ2VQ5lhDTyEkD+dq9/XY+GHDZRkiiBDoRM58HfdrOF9M7wzrdT5ROxu9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759780194; c=relaxed/simple;
	bh=iev0gW76apr46r4N0Z/M3Al0ubn5K2ekVvD96MxlOC8=;
	h=To:Subject:From:Message-Id:Date; b=r9fYkVeaLYjLNTYjV6b5ciZUn/S96f1IWvrpAgL8xMiAJY1QILEGDoni4pnLMdHedxtTm3QD8rqKnQ9rUQBfHdYR6mauR//vqhEhEoX/yXYYuynimtLvLMMoL4F5/z+MBY1heJNgH4DfLZ8TK242+8OcysH8zOVQ5fXdWHn9SLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkpTuIDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkpTuIDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBECC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759780193;
	bh=iev0gW76apr46r4N0Z/M3Al0ubn5K2ekVvD96MxlOC8=;
	h=To:Subject:From:Date:From;
	b=PkpTuIDe63zIMhc1W6RavFYrvPUGcDEhSAeyPslwKMQza1/QB0j7l0ufFxXLZn9M0
	 XuTrOUGVK+UXEX7aZdFqxv6bJIhRww0UxZJb+NQmq2aRfD1QWXbt+/7sLbNswV+IQC
	 4jsc0BW1aTXH2dtMPJZAaV5F9bB4sOeA4n9pO84LqXSsK93YGXFxRmdQ59OPbZtCl7
	 td6NDueDA14GGqUC/xb0OM/Q+tNOaQp6FKQ5GA088r56b7DCoeQaTdhq8wSJp/nCx3
	 0/bB2ZEaFdq8vUxTyin/uSBtXUCJ8o0VBX4u2Icmx55MUeuukTs5HqSyl+Kh+c9weO
	 geMQ+q67MBrYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E6CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978019357.3461.11978522415367458885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9718a775cb8a7013cf0b7f594b6f36501e63c16d73b754189b3f20c2693e49c
Date: Mon, 06 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759780193
