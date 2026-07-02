Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1811039A061
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783000114; cv=none; b=UwsjqT2B28Y48U8i4sKM6qK6/prui1OkeC6pt5aEo0Imqo5tYt4EgouCCAvS27ANkA+G07KQAgiVBYvqvQzQbXrFqFASxNnmAp8+ZQCLfBwHhIa6ycndI7zYfvlYDd6zvcbn89z2pYPjvT7dwpINNVDq/L459PcM7yQOqzYSCBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783000114; c=relaxed/simple;
	bh=qEdkKVfA/QHoJKVSrcbQBbAbn1+MqDl5ZNybYG0fdRU=;
	h=To:Subject:From:Message-Id:Date; b=mDbCx3RO8tY5OoNO8wfsSMItSoONj6O9g6N6t0lVr6YvvFEZ7qPmFwNRMq53CnjOEX6nm3vw4WSXkFrua/TzLrV6LpjulrGFuRN5Ffal3cHQRzSuauJJW4j87IUQ3oA15GH0DxFR1dqsssqGLyK5h5KtLKy14IKxjxOhFjnbqqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEeuqu/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEeuqu/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD3FC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783000113;
	bh=qEdkKVfA/QHoJKVSrcbQBbAbn1+MqDl5ZNybYG0fdRU=;
	h=To:Subject:From:Date:From;
	b=EEeuqu/nQisFv+R1r0B3yi3NrX3A2twRgqdM/0wjC2I6IZ3oqWXDQYb9OgisCwmNt
	 q5vZb12UP7Io+YC10Wr7YY9EgjHuC6Uu/Y2CpolUGbwtRqAhIKefdAXDrM24e79/G9
	 e9JhmsXbSw+5RqUKkr36k5tWu7A1b69brVbznvAof+2VgLE48NSYk0Hpn7fr2idh2T
	 ofNDV1ABfD/ENMgLw2eN/WavtLLw5aaUJj9ul3bDbpsyPH1eN+VV8q+EC2IHJNpKNb
	 is1uudZAdm2AyAcnFbwPbO4bSsATaAxGxks5w+C9JDwo82QqW4w6qlY+NNEP3t1gtA
	 X7WTXWGqxll8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9414C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300011368.14484.2747979247681243768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7684d2b8d0636763a9a49af4f985d8508915abc499a3336d2bbd95c00d32ae64
Date: Thu, 02 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783000113
