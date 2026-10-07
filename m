Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B61B2931D5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791355834; cv=none; b=ZnBRXF9X8RArmVHoQOT64Ho7FcNfEWmTg3WM9j5egmRxOhX3LsWAOzTF9NlUWprLko4819aRxl+/t/UFoJcBoEvIXzFML+LiEgrkRbG7Ba8IUzCLIwJ5uWu+V+bGrfvKWgl/q2InYzmqlhPK0VIswgOYu/Ptwrt8IpxBN0DfApA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791355834; c=relaxed/simple;
	bh=iZWbZj/A8W3CdrexoSus65eIkvB3wGXULnMZfnnpTbE=;
	h=To:Subject:From:Message-Id:Date; b=jZQ8e9V2lfakjr+5O6KimGflAoKODF94v0e43wItJP2qS4cZlEm+iKI3aMF40mLDllbEGPU8VG6J2yYrJzvM7J4JtRzulgOPXnLKsRGV7+otcWaVaII80f9THzY6Uep6MjN0k58pJ9v/bVAyAgA2lkKpZHcZSNkyLPFsbZdjO74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+sAvdfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+sAvdfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB853C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791355833;
	bh=iZWbZj/A8W3CdrexoSus65eIkvB3wGXULnMZfnnpTbE=;
	h=To:Subject:From:Date:From;
	b=S+sAvdfgulrWTx3XRVxo/SEcDVgpe1GmmgER4nFt/E+EEhv2V/mvP9I9FKzhwTxRB
	 CdO46ARI2rdx7t0cxxqMKNy2se0+tfGOzsQyAkX/9nzf4/4CANd2kqxqenfeGVV12M
	 gsYBGidzMIqSgT7TEuqKuxwefU9WCxCi6YFSg8qidy+eba6Xwp1A2G5jCO3l30zmiX
	 oEWkSyEJMMfTDJPJSlto9hmuG1r4ew4+ss9dHodXnCgwvGpY46lKaEhIr/nf6rUIsT
	 RWtRILX+mwLro7rWT9f8fiz1G06X9rPGPpdmMIq6VGMxoJvMfPks1xz10kh1WyPhhI
	 ABsYWeeRaOttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A977DCA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135583368.22250.2953028911672572171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330099fad95f463efc4ecb4dd33ff2bce9f7ecf55573fb3e4c6e437ed34dbbac
Date: Wed, 07 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791355833
