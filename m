Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713B617C2
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714874543; cv=none; b=HbTk+e40S3Q5x0Rnd/g2AlAO5zqfIX2qQDfauc3R0vjF+/hMA1JRnVJWv6NFrY6F2J+sjYxo/Fryz5awqi2eRmonluChOR9qme3BqG7GdBXCQKMvgLKMZ6zNNRHSxJIoz5ailn62tbFETjsO1zMIRvPeldTaE5glLmXK+/X7tS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714874543; c=relaxed/simple;
	bh=Bcip4ncNBRkZ7W3XgnNDg38O2upZRKVy+2w9+tIEpZY=;
	h=To:Subject:From:Message-Id:Date; b=LD3TuO1dDtyMAqQNdvkD5QwGKt5ggwGoVV+sMeKRb3dSHHXth+PljvUXcEKznLS4/i7/CxKwZD+uYquN7FE9/RwVzJREEcqj76TqOfw0Biy4LkMoLGQ5Ck5gzcWg0VjPjGkjV8Lsaj2DlxAMY6k2DujPpQv7wGfa0MIb5s1oVQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak4bPrzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak4bPrzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEABEC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714874542;
	bh=Bcip4ncNBRkZ7W3XgnNDg38O2upZRKVy+2w9+tIEpZY=;
	h=To:Subject:From:Date:From;
	b=Ak4bPrzI2XrVbeM2RbrFAPBqLPz/txh2qnQkg/t9eCUzwKP3MgS5WUShYooTDFRWv
	 wYO0IdjWzpB7W9hmOFQkki/vhrHNVttnMkYrWIy/QieuIGbvxCXSoJUWf767U1LBCm
	 QhWaUgA/QWu3R2YqSUQR4ERAQ8SsIXySP7rGk5kJpFCMI3+rT0txsV1EOjoCDG0nh/
	 R5Mlh2cohV0KwDH08E+gePWYYjPHx6oLIudewVgGFkWXXWkI5/piOs9J/x1KKTvvMQ
	 UsKoH9ZDACkulA+hr3EG9oxRnURIChUn0zglVn2KAdwOugOyHfPLvSyn/Yv/XixydV
	 kNPMLIssw1NeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AEEC10F1A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487454276.14899.12775874583295113563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ee8b445f6749e462ca9f9c4b76b5a64a3cc645e9052976cf853a675902d57e
Date: Sun, 05 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714874542
