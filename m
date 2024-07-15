Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4017413CFA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721042663; cv=none; b=jb3ZBNVGFcbtzdQKrVZhdH6IRGpPht2gS1iwdXcTgFm7BBL+dS3llC0007dDxBMpuuzIHWrPgQmdPjnyuhEm3DnllxWbGYGt8GB0lPM+IHm1cm0/go/X7ftX8WXV/JWcBCkAxRPL3A8m4FOeMu1XQFXKYZ2wIo79zLgRlzGvQPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721042663; c=relaxed/simple;
	bh=jhPn6q7Ib1mKjdVPtv1foWV80FZ9fXsmL9MtRCxqFAM=;
	h=To:Subject:From:Message-Id:Date; b=UjdHZNxZ3aCSlIP4S+xL821GFk3ysckou8xkg8ymJchtMKwFrdw2TnTKKZKrzrCXv3Sus01Go7J0DtJo0JsHrN6fquZ7xGdbzfYsSCwKoYSAF7EDwete51HaHANMNJNwmgaJSM1o7anZ1UrMG7DHqWhf9zfztuG5weJen4Vtz0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9mUPOfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9mUPOfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0959C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721042662;
	bh=jhPn6q7Ib1mKjdVPtv1foWV80FZ9fXsmL9MtRCxqFAM=;
	h=To:Subject:From:Date:From;
	b=q9mUPOfAbyXW1J9jryieQ9ILvDUHRNFMWEIfAM4j5DozMRu/ZfEkib/WEW5/9plHT
	 +gUibEJ7qRX/dW52jUn6fGiJpQXGQjgz0Rj9TTXPvJF5FxhKGzRSpZU1UuOlWta+qE
	 F+wZMkzYIthMwdcJ7Kt5410CWeXKJis9K1sLNthg2L/NI+LBGueRATvCxCpb6QhHCS
	 WMuJR1mf6+lSg3nvztEKLoPLhvmet2eIRyY01A/3NewKPQITqzcqinym3mpVqMwA4j
	 R3ThCRugghdKqsJ6Q1ZwDvwhC4f0VdRE3Ef0D7Srkm4iP9Wf6slSbN2U4sw/+mY2FH
	 t0X0vGIAFWFtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD710C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104266276.24084.4995945092677720366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd477f03d4c39630aa672d549a6a226942422d2cb628e5ca1124a5230fd300bd
Date: Mon, 15 Jul 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721042662
