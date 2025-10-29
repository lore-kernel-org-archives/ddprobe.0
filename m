Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DF313C914
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761773994; cv=none; b=s+0RkL8+3/7fa+hSLnRxED7Vmt3RhY9X9WRo1Mkc/8zUz6uWRJWy9NE+m2H+6NrPKGVkNNZwrBrzps0tXGV8A0bdGicxKXSY09a1/lFNewM4Ed9nYyP26I6bMi+XKauh67Msl/TqbSyTjinIBJ431ep3GGG0ABqy7GEZ5LNCJQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761773994; c=relaxed/simple;
	bh=UlFsYTMFNLXtPaF/Srs1rL9xsaQkphyyEUlSSbH2Zi4=;
	h=To:Subject:From:Message-Id:Date; b=OOxCPqhhzqA7h0paZYfkb9RB4TWI6rFJKF9rtBKKn56f1B/9duf0u97gJo1nnMvzSrgqEjKi/VhweCkQrALp935jgKFU1jh5XVhefExS/pqNqXrQzuv14B6iluIFawvxifl+pZBGWWwSkvdzFpvlVaZjVzIroWNOaLOT4wT52hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4zuh+Fz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4zuh+Fz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761773993;
	bh=UlFsYTMFNLXtPaF/Srs1rL9xsaQkphyyEUlSSbH2Zi4=;
	h=To:Subject:From:Date:From;
	b=g4zuh+FzOjfIfMnm5VwzsffQvGscFn8oHgmXEVINJ7ey8W2WLnjWJkj5A1wUaV7ge
	 /pe6HbN2ozvYyTVAUKb9ckHhczIAwpVUGrWoq/pgpKcW2O/ffexnUCcFZIe6FrLpCN
	 eqzJveKcFA2DXmMMb5i8dkIxXmWvdz/12hOf34I0+hOthwoyS47ASjsfiGkmZMebR8
	 L4J7VKsCr/lFzCy33cPf0OCOIV5RImPoUF10iktgWUi/bNkbJ3it/V6qN3B/DXx2yF
	 V7ZwpEtqKi5HIcLl9vQ3/lMfpcdCLPz0Xu7JAKbVnJvMoXuJrIUGsQqtXy63IZYBGK
	 ZtKQUNnAYNqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BACCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177399358.15168.12165181494350642614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d952d0cdb9626e250710731e5375c3cd85c6fd76bdbd9df579ed8a9d28c25b
Date: Wed, 29 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761773993
