Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492FC33BBCC
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787094034; cv=none; b=MfTzLU7ymvLy9RpRxYqMWJ5Xxao04bvHsyBq5T49VSP7fH4+1K5QWwTX7wAguYCB9WJh4SED9t83C1EcU4KAEDnNS+kq9p+tzREaSTnh0lpNKuxBSikRd/WZZZ/wnmYjasWU/kQH5Rg1zdjPXY4Z7L2kjYOSfk6ww7W/3j8/6qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787094034; c=relaxed/simple;
	bh=M2rvh9YjZDeQ+ZNEKdVl8Mq7M+fZz0y9OMH7hUWxAHM=;
	h=To:Subject:From:Message-Id:Date; b=U+KiMyeyPmDCPHAENQ19DzvEzRmwBtFXZgZaEuVSm3Lhvy2QImP5UZk/hfQaiuoLT6gN5vDohFZjdymisjaCu4WxtKEBj78Fer6jEKTsdSlrEB+vut7GI3ulPGSM+x4HyfsSgfeynvM/DPqk4WDb87xSnPTO1mIwG8MD0xJvgTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxkwDkoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxkwDkoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18DDC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787094033;
	bh=M2rvh9YjZDeQ+ZNEKdVl8Mq7M+fZz0y9OMH7hUWxAHM=;
	h=To:Subject:From:Date:From;
	b=LxkwDkoXJUQECglS7hL3o1N8yhEshsq6ECH2TyP+0YfH8mzJTipBZc0w/lv0O13Jn
	 ufpeR45jP8b9985Gr8K+ddNlb/gFdythK7mwcdGRQSI317qH8kuboAAphlHC62o8v0
	 9LdtebocwUxJkHT7IA8Jr/DWEsk0qCCPLO1L1ZOticlXzZ9T8aZtYmxNXrXZVEwegL
	 khRwznVa613wNJybiiJgJsft0SH9L0QXMrxXBpFHuH2ULwrZumqVNdzuexyH0KGoE1
	 7NYX/dqbez4ZJqxoKHcKK2aZnrT5fA3He13TXgetSn38P05w3oy+phx8ZuILz0S1lD
	 +KWMgJyQnvUdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB132C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709403369.21871.9248864767004857949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65147473aaf7e9d837fe4872f8a8adbd9bb4e2667a90830356a398f73d146ebd
Date: Tue, 18 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787094033
