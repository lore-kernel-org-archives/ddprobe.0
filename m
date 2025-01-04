Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208072BCF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735998954; cv=none; b=GF8qRhEn8AkWtKhOJIgc0y78c/hVUT/zx0mNpl7x25NtQvew6lVTimisnmSbc07/AFj5phT23EMjr8P8B50NPs+tKV/aZbFFBRrkY56rAyPDH5FP8rzRO0oBwZCFGCch0exJ7gpJ5hcY64NzRaFmc15A9uSD8PbQboGXJIKiAiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735998954; c=relaxed/simple;
	bh=z7CJeFc35z7Ngm2/TKzB4HLRttLAooAFUPRGkg6uvwY=;
	h=To:Subject:From:Message-Id:Date; b=Q2/9Glxo6IdAtWTuDZTxyNbuZDGpjp49dY2nZKGoUIRCjCcWo91RXCSygMEesJWRWlMrteSUCroKn0Auvaa+bJFHVhX0otgbYsMLglyQCrQlNgXijz1EKUbQE0xnSGA0GwHYZ6NpMY90cNEjd+U0bxMA9EuGCec/+JXiBEe8NIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nbe0/Cd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nbe0/Cd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F4C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735998953;
	bh=z7CJeFc35z7Ngm2/TKzB4HLRttLAooAFUPRGkg6uvwY=;
	h=To:Subject:From:Date:From;
	b=Nbe0/Cd7T3AGcQGew9OrCchUH5Xf3V+krREjzmR66fBX0rHG3s2yf0Yn2aTkwKhkK
	 UYjDeMa9tUGAOipcBr2sa1CTSYJZZ02ZcP06kDPGtO6aAxF98kfwsQsYrTcOSpODha
	 1L92F7keAnAZT5PeHfUa9K+sURrBokIzibWU5XAz0TYmNHA4F88gSUy1D9H6r1NiXu
	 nw2COfIQYvbczoJRGIMOAy/iUTagBessLnbYgMX+OKlPvsPXWofkmDDOjBI5ZL3T7D
	 LG9dWXt/z63aUbtJD0IrSMtik11Brd8SEd6RGrzxG7/ByaUubSlastVrmE2zZHo4WF
	 jRSJjLqIN3o9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD5E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599895358.13404.10674733085188783151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3b5399252c808bdfe6fc529cca34a73bab292917d27daad8f37793d754e571
Date: Sat, 04 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735998953
