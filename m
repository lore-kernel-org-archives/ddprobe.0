Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B0EB640
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781934394; cv=none; b=LaBSRupeefvjC42wdC6sHzpaQZLBStio3BROT3e5Pg1LwYfvUfBEHS7aGEjWUsVAU5+63wHY7u048rKjRxEJ/crkuXz9spQg64WmN1Tf8B0erzoq6IvtSFVC9RVef6R2vTuuz3uSK9LOmWoGwu8YvCzkUPB/nC5sCL5YrDx5PRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781934394; c=relaxed/simple;
	bh=Qxi7JiUrl7KflpP3nqt082U/opZGjIDdl9eNuvroA0E=;
	h=To:Subject:From:Message-Id:Date; b=QfUyVbanuRR4+6NfuvGKQBidAD4rziMgTSI80TmppDSwDTDPOGUbWU2LX5IVHxo+oJ3iR/2KinjWZFAH0fv/JoVOYb2dKwz5cxxCaxi0ZYKUWTPE+YOHyUOGlDyCvG03BwnSHoTS3pNjoVxz4OIr4akfacH8kKyRw/KSHfSugHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/BxxJdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/BxxJdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC867C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781934394;
	bh=Qxi7JiUrl7KflpP3nqt082U/opZGjIDdl9eNuvroA0E=;
	h=To:Subject:From:Date:From;
	b=P/BxxJdpPA8QBWyxuB7Dd0BvXf9VH7HoECsK/+5fkO1xcLP/UQjHmlgk1C/1RfNHg
	 6hG6d+D2GmUaRCAkZHhQ+dUwdM/qRLUxyQsBeThrgNXbP044FH4BwikzfLEVzYBraj
	 YiM36RcNCxJZ/OATaIPP+4RjU78e0Q1sT4OC68LsXEf2SfR8k4e9dxBCsmSIZkW+Ta
	 of0Kp+GiE10siVihaEA+JXHL+kHrQ8oDRd29IO9mjiJtHIJOaj7mhI9BiyWT+SCrp7
	 ++tUbsgE7/jrdUnYBOF+8Eo1K11dEdd/ra8untu83nEP7jGo44LYW2dXubQCNjY7n/
	 VYDYyvxXi6NQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16D6CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193439372.16964.13189428011485538093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6d5119f4f96d3c40940ee9fdea84af1704e700322b08874e83a38513926bc8
Date: Sat, 20 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781934393
