Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A8D390CBF
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789581035; cv=none; b=BD5g3sxLaa3SpGbJ0fQM5QllRdSE7xXxwBc7pko4N9hbE2pALe3H1FTNR0y9RydHd/mg0u/F/vS/KWXM/pC98G/H9KnhVYAFhGBmMZVoEXPAxB2VVYkNvG+/EtMfED/zkf6ZV01OwCUT/Te39GjVCYP2ORvIIASqv2UF1nWFQ38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789581035; c=relaxed/simple;
	bh=F1+H8gYaZv7fO0UhihIiFLazQMhTM5HBIyTl+rlaVGY=;
	h=To:Subject:From:Message-Id:Date; b=F8GHQWPWYH6fmSI/cOr2eQVEq2H1c1/FZ1Z/KYXd1SHy83Be09fqJ2h+hPdjCYRHhG33Ut3mzoUGJz1WoMhH2YvFOMAI2uRmA0nyAZ7YjW3LnKDs5E6Lja3p/AbdIzNjTe58NNSMPOvTEbitDaZAweOV+X0CurHWCchLccIdKVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QODc9vYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QODc9vYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6394C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789581033;
	bh=F1+H8gYaZv7fO0UhihIiFLazQMhTM5HBIyTl+rlaVGY=;
	h=To:Subject:From:Date:From;
	b=QODc9vYpQDRlThQsMxkb9WADjJLpDLewk52c8ZvmkU+7AMkawhIlYvMcDqrcL+krd
	 wf57ydWLI0BHtaiGAxNF6vR0+XTHE4AqoMlDScSD6G9BBkVsgciBlMxUZnkw9UGsDK
	 vU/l0EbBv/w71fpG2uf8g1MbAAzCNx1xsvL/TuSQHAWPPkfVIPfwz5AIQ1Vbh0aiGJ
	 XGzeq27fMKMLIZ9qtoZUi/QNhmMe9uIQJrgMnmeOGDiLMUYg2LJRNtCXewZ6phy03B
	 KPjts7gA4Z6GGw2Q8Ca/7dV0M7iaZABq0GS+kt+7iMZ4eCajXowone8lKApMRXxfcR
	 4qWhpnkvgyt+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6D7C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958103370.25172.4474843207815338376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7753501bd1e461b8d6f1eab95dc9e7b166d5b7d4f3c5b585805197b341909660
Date: Wed, 16 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789581033
