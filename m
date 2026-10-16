Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577AE1E0E14
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792117234; cv=none; b=KdasFfNB0NLvowrGLKk2t36im6jx7dKcr4o53JY2AGDIt1AxE1mnuDt+Tg+DPx57jNztyD1SKCh2C8e2mnV6cfPiLbkqwuXU9gCle4Jd2tYpuiFWECKjo/wCdjutHWVsZVmUVLW1RppN9W+mnaykWIlC09uzXB44tbS+iV1evRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792117234; c=relaxed/simple;
	bh=4WyGljN3Kt3iMKKfUP38kkgYmf5wJf9lBehTGtuDuxM=;
	h=To:Subject:From:Message-Id:Date; b=fbpmzyntjqfKoPGb3Mkehmiq2BQcDH9280PhqRBs0xAddcNe75/+cbZ5hJhAS72NHqWhbNkRQH29ndVlJQex7PsBvthOLdjDRduz8B4FmxtIfnEEzmdQ9zUhT3LmdNNxPEEnsPKWlqo+wqCYsN+uX6wEQfa+hydlGOOvh10x/7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlYIRtKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlYIRtKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2FBC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792117233;
	bh=4WyGljN3Kt3iMKKfUP38kkgYmf5wJf9lBehTGtuDuxM=;
	h=To:Subject:From:Date:From;
	b=FlYIRtKKxaUmG0SIZkxJ5Z7/LlmD+3hD6+eaxVl9GiQJRpVMqsTsFI1yxkXLPdjls
	 IFP0J7Jk7ewSiGawDsoAsIt20Hjoj719qynpfAJaUCT1p6uDVm5LuDS89hAzElMMZ8
	 Gb2kR7+YI5mgpxfTmFMGp+oreRMauesP1rinN+ShbquGSwUnUYJsu2FCiVQPKObXSJ
	 kvw1ppsVPCTcfs7TGG4eH2LlbAp7hPL3lg3+HZfdVJVxyuvuktc2OGlUnq3oAjDAmR
	 B+deh2Gv/mDdk2jPFfW25qTGrkG25a2RbeDA4IcnNz6u2RQdZdPAm6NvNUAafIjGGS
	 SxwMQZut1Pn3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFCDCCA463
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211723369.23896.17449882623192322936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f79c513c294e635c587f04482f325880e60d550ebc90f9fdb91749e0c208f52
Date: Fri, 16 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792117233
