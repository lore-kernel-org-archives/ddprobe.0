Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514D732E72F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782328654; cv=none; b=X2a4NxQ61KvOW2udPpqSY29oYG+ao4BKUYMSIyIKTC7uu5UpN1F06bArIarxZMNSuxuPLs7gSIpvF0Xhprl0Aay3kJoL1hc4802bMyFbGCswwpGHPQL/IaiDMzZRQxZ+yW4wcWxApd77Frylp2i2KxHA6zswxNohZInmvbIyJQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782328654; c=relaxed/simple;
	bh=Yj0EmH9W7w+f/Al8rcwhXGwPNkdhYTDxIfaBxABtcCA=;
	h=To:Subject:From:Message-Id:Date; b=psefGmWKGgqYc3ITOh3z0eX4G1rFp1HzpEM8cWXHkLWm+/t7+DDcKPDPN/ZHRQ8I27typxgIEc1KIoJszh9hlnweUUkXpkojt5E6o4v4uYECNCSOHtUG6gJXDlMCaDUWmYTetLH2oZbRWFBUB0ja9R3EnWk5GIV6mY5Wh6PVOVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpxv6c3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpxv6c3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5417C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782328653;
	bh=Yj0EmH9W7w+f/Al8rcwhXGwPNkdhYTDxIfaBxABtcCA=;
	h=To:Subject:From:Date:From;
	b=Wpxv6c3cvP8c/iN1jy5zzrXEelnqHo16RLb+D8p7/qgeNuM0IkviRUS9scmfJIchv
	 e+Y4lFG/3a2kgpoPTsQZ0O3BAu0Hx7eGl9+L5intc/PysankA1/gsJs0uY2Tlahv1s
	 WsHBygqstwXhh8MZ8N27vzwKKQtpSCxQMJsfSiX3IOyca25L3SkjCCZ7lYlzY43eiE
	 WWOfcxgyT4pc7GkAHjOfktYpWFf/PC12fGfw6jriA2TmG8nLYChxuS//FcWS2/6HWd
	 7Sg7idaT5IJOCfvg91fCWED6cSVYGxR2UBPfHSWhDLFMTQAhL85MKDk3EXznz9N3w2
	 NcI2z5NfuwYxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B795FCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232865373.19587.2791012658586538638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b8dff5b55a0ae48da4f6831a3aab411860ba7246d8a0ce621f4e66768707cb
Date: Wed, 24 Jun 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782328653
