Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAAA28DD0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720364183; cv=none; b=eNufQnAUV0ALQgRgVZ3rYRayhR2enpsrHyULxtm5axCp3fKTgfvbmpvQV9rschlf8V8rr3PbK19FTXieype2K14HG5YZFJLjcRbLJHfeU4KpDo1H/awOrhXccwwE6Jmk6IWExdTmbYRlzwZPUqwe3jPwjfEUj00HdirondqD3Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720364183; c=relaxed/simple;
	bh=K6pylRLYptXk427cDdVltvUfGb6YoIelBZ/zyK16F7s=;
	h=To:Subject:From:Message-Id:Date; b=Cr711uXs26qhVg0W4v7E7Uz0CdVS1dRIPHR9YKYvJPIU7t2t5eMMrFIVcmYdmt8KFDDeysreN5A2jfNYKObZmE2/UOXPhmRsxRTGsSD3BVqidzvVCKxinw5e52WhqIHxxKq79K8KVoGmnH+hGjhez5PzPeuLEafw15QbLSNmO1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLrk8ivb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLrk8ivb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE563C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720364182;
	bh=K6pylRLYptXk427cDdVltvUfGb6YoIelBZ/zyK16F7s=;
	h=To:Subject:From:Date:From;
	b=qLrk8ivb37Le9a1OiMCYiJE8XyRzGow3GRrlPHZVy/7pSlP8UlVS4I0Rb2dUV9A2T
	 BhPS+OxSesUr3ViV1AksAKl83oYnKCRsdTGxjzzcaXFcO2HxuFfDP/iH67Q3FvJNEl
	 6NPVZlPsatGmzrvpGpL4NINByyeO56d4uv+f6eEkssoItyz0BUQ23+F3YP0OMtaHbg
	 KLfypHbahJWidDIKGMfeQ73+5shrAefZItBlKcTesGB2/7X6TLrVfIdIMlkE5A36G0
	 CqL77jduadUkXwFNnPMhP1g9Gu1GOZlbKMv06FFvLFBQwg4TtsQ7cxTotNBf37nAdz
	 I0/RPBGNYi09A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7D9C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036418276.5686.7122276025345397214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858cfd259e357cabded2a913d914e2fe5be908269727a92f8df72322f48c70ca
Date: Sun, 07 Jul 2024 14:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720364182
