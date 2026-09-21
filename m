Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4412E13B58C
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789950034; cv=none; b=OILx9cGJhsPzipj457JM85R7f03zjQaTME6qjPqlnDKdlPbDVamCLnAL9T23DBooYmNye0qECGwORwVNov5x9P9t2/OBJnSeHKuCX4hPvMt01oqMWo4E2nBH3mClfizK1pvXgPk/iayNMJxLiU3ACFpjipNfVNiEw3xMVWvWteM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789950034; c=relaxed/simple;
	bh=Gany33EbCvdo7hAQX4eNPBQYnww6Fg/PScnpvtKfH3I=;
	h=To:Subject:From:Message-Id:Date; b=Ncl9qZcIezob7I8TOPcWfuRXqFMwDFoHDJ5OSh66TJyaVcv7cMCtIQCx2mt6M1lQLiz6PrV+7Q/IFAO4GL7Lpb7AnD0MF0xtMfnnO3EHtuCjQoBqGgQnZPAIqjTsGD4Fop8kkP4ql9OyvSF6exg1L+ck62jBiHLPT74poU8tdFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YP28auZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YP28auZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD64CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789950033;
	bh=Gany33EbCvdo7hAQX4eNPBQYnww6Fg/PScnpvtKfH3I=;
	h=To:Subject:From:Date:From;
	b=YP28auZladK+gDYuEUkqq+wYFXObR9OB0Lzjj0201HDaHZkybdcXZ8S0NG8sJVPkU
	 YL9ouzc0y6fiRLQ656ZdSh8B6A7ACsWGd5AMX0vNeDOwQaYUPHLMQy6RvM18+erD7V
	 KIsnJ1b67XPHzUNlfPUOiz2bPG349GphGoG4Cr46W5vX5/jFuVHhWrJNN9aTQEXVCm
	 QG89djDpBk/KLY8zAs4hrFyF0srlscekgd3eJWY0JtOsIwbXXwVmaXnOFKRAZSyTM5
	 I4ZCPpaNvetYkUCQ3VurGHCYD/m0vtwE2/BjogvxkPwEjJHB60vVPNNAHXMWAyCupP
	 YMTXPRTIOLanA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA26CC982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995003368.468.17109787024088499553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c0e548f7d8b7b76ed611db8c4cfd5a4407631b888b93261cfbcbb8cfec80e2
Date: Mon, 21 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789950033
