Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1651C346E71
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777818454; cv=none; b=fyn9XBiLqW6Nvk2N6VAsqAb8rlC+tmgDITxWmv8A+qw57BEtcN2Q2tvU7ug/GARpRzfOnKEgfU9qgYcsoSSx8OG7H+5ca79Jdqy6OZHEfo4yP8OH6ahHewWXdmAgdKdDXf8uGsQj5FtYy2yVUsFpgPBnps/pDBY7ihMugnidodc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777818454; c=relaxed/simple;
	bh=joNUg/SBvco8jGmtxY1LNO9YdKuOCaAucKLTUaWTQmE=;
	h=To:Subject:From:Message-Id:Date; b=Op1CIDWZCEADDnVmSRR+LNAMvpsMYrrn8x2WC+twxJA0QRRYRh4nBIgM2wEqk1z5SiX/oJjGy2yP6Onb4tBvlikrtrSamfRGIi5DtWnGIRaxWRrrrkPuITsyauw4NaEtgLPeki1pI8eZcx6LThJoNOgBlfwVNO/cvx43QTbU7yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzHfpvRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzHfpvRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C234AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777818453;
	bh=joNUg/SBvco8jGmtxY1LNO9YdKuOCaAucKLTUaWTQmE=;
	h=To:Subject:From:Date:From;
	b=AzHfpvRy1KNZOyS3dl1RxmaXPr7jX37nQNgklkydPdHETUTz9gnec0mCGhu7549rb
	 I5w0KleXjfTDDQjWwAXtfwUXhGZBuwVZFue67TSvCWu/pSBVdMCdkTWjE5JXtdH9qI
	 c/5uny6xEF+YQp6w7VMmjFM1OSs6OwcRyNzSwm2sdrzEKQgUTWg9RIlSLhYjkP1pvN
	 vrdqSgmLLPJ4FOmMVPRkvsMBlA59Fs6iCgnzwtNYw9kW2vqdAtPZCrJcpKm9dwOGSf
	 uethBOafi9sn5fjGDXaMwUurPryZNSsSBcJVsjtAesp+DU6sCLMKBrHdcTstjqkXvM
	 CGfvlThrmQDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A0CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781845368.12884.6669113148862046004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc9879e056231e2fe9cea592ba113d6b304437743ee6aeb23b9572ea6bacd3c
Date: Sun, 03 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777818453
