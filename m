Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256DE204F68
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729249554; cv=none; b=BG1k5Xs0CJkkYq6nB64m8wshnBeyySshmjwAJuxhHrtEDQ9pvpnDdem1YfottPorHAjeONK5wMS7R1cyn96RiNnWQWTv8pqImS/1G6S0DvUHPDVjijdYKGGDtB6w2qlANNo4Uw44LhflEzIB+VO5AdFnHty9Yecq97NzCwk2EXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729249554; c=relaxed/simple;
	bh=mXa27DdzHFu4hMhr4pJk+he/1XlH2oaPp+IvnbHpH/8=;
	h=To:Subject:From:Message-Id:Date; b=RBLGFMpY5BqkmFjsDnF5fmk7KZaXJDWgsXMLfXhoJq+SSdz+Osqh0e6/M6c//S+IzVR4jmYrey0JN19RubLxJovTLdv4yjykYFpbQrCBYEaw3a5opnx7HsQofzZW5oWPjT6OWLojaGtULykpaz9iYR701oH5nccPckIlXzbXE6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoFUip49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoFUip49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE72DC4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729249553;
	bh=mXa27DdzHFu4hMhr4pJk+he/1XlH2oaPp+IvnbHpH/8=;
	h=To:Subject:From:Date:From;
	b=QoFUip49RWo4HzSfKJL72mohTRFpS/lfwuam+X0imzRtjzIZChzrKCdbi1WQNuBSH
	 hCTxGDpQrYmMvAQcjobqIqLR1aYSuQXhk43OexeIpHXxzDnjR0ES8d/Mlh6sXQgMnv
	 auUt6IF6XK5CmmzKLrpCE8TAItoikOUD40TZ3YvYqpKOAzYNBafNcRfze+rlU/e73+
	 wbdQnoGIUYNY1xi0eksLptN8bh78cVus2k5kEXlQDGsjhFKgMEOVKtzZKprR1YWDf5
	 qnK0qCwnQc52DnbgnWtXEdp0abJxXwIhJucXlDIZVs//eMZbegdgCKIeuqVfy9Vu3d
	 UwFjWI6HivtBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F41AD2FFEC
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172924955363.3864.1426271691486896788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5348deeec40867395f9010a0ca3d4c4870a8f2238e978300948f7de19514a9
Date: Fri, 18 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729249553
