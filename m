Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A5D19CC11
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734513954; cv=none; b=oew0fooWvseUmokCtg/5pWS6/sLuYV648vya4OUXrcEXx62rXdZ++7ZHuQDc4ezIhWIrO8Svm9pKLlap9LK28Ee3rr9JzOfSRYuAFexbvKMu68qzJvooil0zu2wuhcWCLkJ/pMyK9dDG5ixGvTy4mUOAjszUMLfepiGCVBf6aIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734513954; c=relaxed/simple;
	bh=Wzcub+nZGp0mt8R1zvwzi15mUS5+7Cv1f9tilAMNyzU=;
	h=To:Subject:From:Message-Id:Date; b=EZD5bO/99l2DPmpDju7dAeO/VPF8/QQpaLy+/UxNl48U3ptQLXWCEDwa1Zw65bT4gQb07ZAJGSChqSRpohjjFmqoBFcVNBUWsk0CdlgFlg86wqd1coGJOhrZVZotwzFJ8ab0wzAhOMbkP6YDexRr2OX58iHFTB9U97WIuBjg4EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiAyRJx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiAyRJx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6540C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734513953;
	bh=Wzcub+nZGp0mt8R1zvwzi15mUS5+7Cv1f9tilAMNyzU=;
	h=To:Subject:From:Date:From;
	b=uiAyRJx5a+k2ko/966oigazrejkbjAk1fsWS4XH+ZeKiq7uGlm/ZmagIScpKR7DcM
	 01kGhSCP7JC9s6jqPJDB6XGPiKGC6IXfCk+4Fob2P4fO4JJnVWTdJkqn8IinR30RPD
	 qkX6Sft/TNNMXtGdYDR89LroIK69EN9C2UaUIlol9k1ttZfKCzjr4oenLWb+Z8dEJ6
	 tMtRq7q04BxYwLFiHd10g9OJORdHT+GOVE82Kr5szC2z7Prwd9DLJssYk8xQobTrLw
	 V25uZdAAt6dm2x2xSKs5T8ZaeF3xTBXQaxen0Fhu8CHpp2qX2ifpAP4/0Ro0CTyp04
	 AQnFUXygL++KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99158E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451395361.16705.18016561467717183846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb4873d57a10b706e5471fc0025f181a36d146f1e367b0eaf2f69cb21a27f35
Date: Wed, 18 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734513953
