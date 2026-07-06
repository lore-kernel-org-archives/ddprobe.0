Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8625B39C657
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783328314; cv=none; b=D+3KTGidBCfTUINOxK2OsL2SmhBt030iIgZmTSdDaFI/+y4yv1ZNEL35gGgv+sK/Uw56EAIsxAWGv00N7YigQSDtoZcRnQzXH9v31QWDptiMOA3hFDnuQk6c1scwsPL1mUXTHfiZJydYJ6PsnzZ7KSIH9OGzQylj7a+/CJ0f0Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783328314; c=relaxed/simple;
	bh=9vC9jhn+xUiTGfGUykAj7YL5HQyPpLETdl5en7gN7UA=;
	h=To:Subject:From:Message-Id:Date; b=StyP4PXyJULAQTec4dS1Qy7XDAf4Xm+fc0WsNb8Fh/+uFIenHcuuEFa445Q/eaOvw4gG8/iu2FtBlvS7t03wLkBcPHxEjQN0XXrh85CqMeUv3O1A8yyYC/mTlGcSluST1YIP2FUfpzRO1FTVv0yR6BJ7xsqQAQ5cqPP4Dn8zztg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XivHrPGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XivHrPGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAF8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783328313;
	bh=9vC9jhn+xUiTGfGUykAj7YL5HQyPpLETdl5en7gN7UA=;
	h=To:Subject:From:Date:From;
	b=XivHrPGQuKpF8SjbxE0PrZW+txJsobq0t8MSaSZjLN2n9vSDtv8VKkTBqaKEBWgbY
	 qqjtDcoQntMAKsvrFJlZLSGazKC/O6uaJOBi6iDomMXRBUgu6QTxkP+d4CLxRV5sCW
	 V2neiAJAngqkSlp674RbuU/h3wCAb7+Mm+120PvdHZYJi4+nGDwsQJE1Fw5lJIeygJ
	 cY+aDwc4xGYo8pCatA097eEYUsfy4HQTIrNTaOQLwP3RyTWJIh3qK0mJj8u1qdOpSd
	 062OSYvgdrBfTORiEm7SX8Upx6+Zc+F6xob+DMRZWFExVpFiUEQsJkCpV/9UM6qYI0
	 uW5Ub8azAPc7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF4C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332831369.29380.10766395599949798620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0215864266c9b64f47c90539166c987d0a2593050ff3137976bdc54034a8882
Date: Mon, 06 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783328313
