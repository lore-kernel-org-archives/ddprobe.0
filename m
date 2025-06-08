Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3556BBA3F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749344994; cv=none; b=YVPxNCWEcfNnuERqSwKHQkimpEWJiCCmzVAolvScSraUGTSyVxPyMzneaTDSnZ3uz4Q0a6mQFvc79+USZCvigoRjZpghAmSKZDp0grf0rWeOTa5Zd7eR3Alr/iwq9JunP0lD9Yf7Vj821f76DuB/2HBxvWP7MtaTcMede/fH5ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749344994; c=relaxed/simple;
	bh=f2TzxuEUy1/tq3N1Lt2VQcTYF6l0sd2exVms1/XoJs8=;
	h=To:Subject:From:Message-Id:Date; b=I/h16w1TlmUuvUC5kxPTVqTpyxZtBu7eTNdPBmrwTwQJ2WYUMzZxp+CrXykN8GvqTfPrHMsO4i9TNMrSfFrYkM7oFvZp8gmkEjtB/eAc84vWKBPj3UZDn217gERBBI85KhdP8DfwVDn7yyyd9hPE8k6PTonuo5U26hecgW0xDf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hovISYtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hovISYtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF9C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749344993;
	bh=f2TzxuEUy1/tq3N1Lt2VQcTYF6l0sd2exVms1/XoJs8=;
	h=To:Subject:From:Date:From;
	b=hovISYtwmOnwoUjoNUjhbJNEGpXBn7vundoID3qiiDL8ilf6JM+xFBTNDOaYuWEA0
	 5BZOjfxiW3TKf3mMNnNXHe/1/HfG4E6Ac9YxJWzOUmRD3wtgVM7vW4ML6S3uS/DCph
	 yq6vSK8XMtxnW0OUKMCrzFzSCvWO0FeF1220Ewm4Af9Gvh1Kx7DCOiNUODp3/AN2mj
	 qW87oaFcaPOEVo19KMrh8DPlUR/Cs2Biujky1pjogLsIUpfGaB+L2ZC3/Gt4ZE0/7L
	 qBUBHZjh6fDH2NdCIg7vJwL2qgnPe/ZtFPjZnWcpm3a76ieB89a0FLXqSolXbrFsSN
	 0rjfgbZMelZtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97507C61DB8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934499358.16063.12678197534002235603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fb694567ec4cf015a2c11c5f7e5b59cdefa5a3e88b9aab1acea433ac56c1aa
Date: Sun, 08 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749344993
