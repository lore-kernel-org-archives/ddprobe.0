Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44545C8D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723329954; cv=none; b=KmJzJbnGlMnjXKYAiSjYa6YZRP8+1PmQnb8bVxhQG17a5AKroULdd+69f3ZpFMlNbPzLo3DNnTj6txsIguYGHJIaLCzYlM4OnNyr87jPbQD/C90xXbocq4XfdS0i025cNElKks8vLXOgfTqfHWE/Gki9B2nlIlAID/4fhjv93Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723329954; c=relaxed/simple;
	bh=tdzyd291yM3n4KtGHy1FJC+nYbAKUXMOBt89uHMuxog=;
	h=To:Subject:From:Message-Id:Date; b=Jlt3owTPJpUD9aibQdYEiZDXhYn+Qx+Bo6WgEEsKnc5e/1zVIFA0ihEC0cGZ8B+oWatT/M0P3qrHsPw0QFjmMFspxQOBgyjK2dbABX1oLczRJdZriZuCR57C4GwfZqepmxOxdnGvSFeXEwTFFp41NSf4TyUMOpVCyg5ddckuoYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcD/ZRAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcD/ZRAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44F6C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723329953;
	bh=tdzyd291yM3n4KtGHy1FJC+nYbAKUXMOBt89uHMuxog=;
	h=To:Subject:From:Date:From;
	b=ZcD/ZRAixVD5qKCpL4Lxuk49gOF/+ZzwBdaROmzH/rjgbUjCr+Q96ZLZK/QGFQ7i5
	 GAI1oLVdNLb5lyfPbjlCT1ZA32V2sZnK8rPtTkDjnyQiWciEVlDORUEVf85mwaEAnN
	 nopASeggR+Hz29Y4oiSuloJsv5AyXRBfWWAMslAjKLZX/vTc+2MZkY/C1XOQZRDeqd
	 E8wCbRGmNyPdb7+9dUPKraGUKySeX36bTZpF1GUYwR1QK7pE1tgspIEXu3Hf7Jul1z
	 M/HulVh7f2qGJEpiFV3fKGUtUj46tGum3VorZhYdXE6NwPKjnhqgrareYZVDoDOB7B
	 /rRxbuB4o5sMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0227C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332995359.15304.12136313353857980251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d99668e190f982e99b9927093d526ec92f9614f6bf404a3731b148fd9f1738
Date: Sat, 10 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723329953
