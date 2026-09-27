Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DC83932F7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790551234; cv=none; b=BEpvFeYhGO1c/gulrM1yHiLzm9XEFTBENDfZCpiwjBxPeTd4yU+BY7iTp8s5MQ51bkPKGMsHVKhiw0bybGlAr2JzXdwnq4MKfIram+J0pCzTR5SzPdjRZ2l7miIZn8peeKL7d6rlsIYe1rcTHPiQNUO+OGZlwYRa/g2D5NAAnr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790551234; c=relaxed/simple;
	bh=BTi47ZwXg0V2SrO2eVvp3dCMtA0iNPAxVXfSGiVqUmk=;
	h=To:Subject:From:Message-Id:Date; b=qfz0eSwxuESpbh3hoy41dFuJHH2H5B9i7MSIDH+Y7XHsaZouPpcSi/6gil2UuLRTBU9UcAZrqBVx3todT5w7DDC5yqepxchhwhseTyvZ5b9sekTSYL5FkWHnTtFsUYzCSLScyeXCslrjsDluLv+RE7tsSGRRrIAIuSqL9tja/LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZRYmF0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZRYmF0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36DDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790551233;
	bh=BTi47ZwXg0V2SrO2eVvp3dCMtA0iNPAxVXfSGiVqUmk=;
	h=To:Subject:From:Date:From;
	b=tZRYmF0CTAi52bD4v7n/MQFU1ESH3v+YKaI+DcX0almysR8Qd42H3WyzFKJG0zidw
	 8xm1mlgt3OniUlZOsxRoiIg083Z2I9+PMepMCcMNYHpIkQX3oGUheIlNIyDWrkeiUZ
	 OoXtuJX5QArgYwgmaUk6DRZF8A7pjsEqHudz9XL4Yrg4CmAk0fo2ef/moLijCMqy1Q
	 XNon/ImF9VOo19GHcHV3V0zsykfIz6x7LTlAj8ani1CAli3IWEvWSRWYUeRg01ixM4
	 xA8Kxj8BTyhanVeLJsdwnolWpBm13sE/qNW/JZwb6VEMcO94Xk9XtPllhskiqs8kFn
	 Fe5cR+0fp7ACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE34C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055123368.12921.5472542247368893646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca07306a6c3905da54bf7bdff52b7b96ad2f2177714f81763d4ab9bb114ff99
Date: Sun, 27 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790551233
