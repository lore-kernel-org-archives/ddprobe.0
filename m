Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404F833F8DC
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788670834; cv=none; b=jC/1z/ISF6Su90KdmgD0tmw/4F2944fI0ndoAiVxOKa1xMjLm46mBBO+PwQCMeX+lI+3/thKEf+ZxUbZPY2cEOTbbTgHIFdCAb5DbNaXTrxWHezPAO0TFvZ0qGcW+cI6RD+wx5d2T9rumAUL0DaSDBRlwLRfpI0MiP6YQORPFU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788670834; c=relaxed/simple;
	bh=v9vyhqBntwQUNhvNZl/eTgnHm7Esz2jjnJADd7Oqpl0=;
	h=To:Subject:From:Message-Id:Date; b=IJ/nYWPT2Io3UKLH+Ergz55bLUW2hn0AfSXCAk0+jnM0pbtR+HPhd3wqCsaw+4NCmykM4PUUUp10sgpNGUYiev+c+j1V4jdVzRv/kqhbkEOQlhqIGbjrpDhk3oE7M8PWTMl0CXqsoRe4rtG58GqZjXBaxgyokPJUCfZlOo7nBag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtsOVNej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtsOVNej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF833C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788670833;
	bh=v9vyhqBntwQUNhvNZl/eTgnHm7Esz2jjnJADd7Oqpl0=;
	h=To:Subject:From:Date:From;
	b=JtsOVNej6Tuds6a6TtnrzLSEC5BpgSy1PpLKCD0DRbPXM9YmC4qaZOuxZUw/I5WqF
	 QHTFFBctVITq0lFtWCTSjG1iG8Ks8oam23L3YwruNkcG0FimI2cSkroB4fiAfpCAq6
	 dQOLaSsLPVW19Lp1qCGXa7UsO3Qio7ffTKRJ6kw2xkxulLn3H8pX20bAeXVlbUbp4+
	 q/79/LBRHFz0Wv/rw2Z9VkjVWt5/0aB89p6yz4djNEgqaR2930EyHOHoye7Ge/5uq8
	 Gr8s8Abj2yoZGMRNU54I/U3HJr7bwdhkmWKFLbOn76O032qSR8DGETTcv1OdpVPFBy
	 VXZn/3u1hQjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEDEC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867083369.24573.1359439198161990736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1502e2d799baca7255899b19111eb9a4073bf8c605fb7e94c62ca12296f16628
Date: Sun, 06 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788670833
