Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB91D299
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708895897; cv=none; b=cPZoaLMCdum6/FEylWJCSni2d8NAkqUn5Siu+R0uoeY9g7c/z7KIl6M7exNP65nE4jEgVIaV96gUZu3gcTyB3g5JnCt4NXZOilelYS2j8K2UfIed5ppyfPzGAA726zCvPaE4px1f7iKtrC91Wk3t+Ch5gN5TV4Fjctb9Sw9KEEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708895897; c=relaxed/simple;
	bh=xi+kMHq83Cz6mXzq+nAbm5TEu9tttd/DqziVCqj1TdQ=;
	h=To:Subject:From:Message-Id:Date; b=FUtPn1z+xPX1+QlO7+5y4OGCkvh09gzCt6n92x+N00VwfK7hOG6ezQXRBjcSeMRqtsmPlci90/vlq7wR4KATDdicdOub2MJAN2BP6/T8cjvp2LHrWgWgZ2J1mSN13KMqJDfQ05gSAv49VeAejJNLVD0rXAYF2ZxfsKTXaFuvWiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz7b18Ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz7b18Ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FECAC433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708895896;
	bh=xi+kMHq83Cz6mXzq+nAbm5TEu9tttd/DqziVCqj1TdQ=;
	h=To:Subject:From:Date:From;
	b=Iz7b18ExFIgxqfXanzve/Eo/yNJkejAq0m001PYrzjE80o25wBRVVBOO+owkcEAtL
	 62ruLn/WFPVlluJWgrVCJM4pU6f1kzppFlK1SR/YcvbCFlqWRP8f+QreSrOX1NjZEa
	 rxWIOUgQSHHXvmtyvgNkQrTNM8XZBWu2aqWE3kjr8rHF4yP5EAT/cwFnLvsx7UKZSg
	 WmEbjMZhxGr/P3Xl2s3QiuDPx9nqlrtWLJ8qgJlMwJd5tifoN3w73jTYDF1tFfr3A9
	 9U2u/vjPPr6gcBCtXY4veiz1TRNUp4KgXEcTL37AlHoQQvWP/trUyLx4S39/jBEEYp
	 oADs/ogp4vZjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75251C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170889589645.9822.10373445973237226306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791b3890519378f9a3cb3999a8040d6ce56841c4a0db12e8d45f6f2a16053658
Date: Sun, 25 Feb 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708895896
