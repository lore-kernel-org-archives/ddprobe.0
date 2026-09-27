Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066BE547064
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790548234; cv=none; b=uRvOZxpjjoE0PBH8b6BpyyPUciAGnyKmMUiSASSZFt3CMW7QpuUnCZ1zXqntdKI78FD7iR17oN1nOTKYpCqi4J1r/XKXGi3+0/0RIA/HRLNiyuhbElGyhQKkgJos3P+71MR1niimqYaSiw/TwICpLV4Cr2mUnc3xSbPEQdyM4dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790548234; c=relaxed/simple;
	bh=zxjdDV1GF5dcd9P58ezx8yuIOkH6f91sEdxsZzDl/N8=;
	h=To:Subject:From:Message-Id:Date; b=Gp7SzC+SSLyCgwY6B/iCv3z8lG26p8HLeNPtj5fzh5g54UViZPU83MQUKN2j/TgxohsHoZK67xinKT87+AMigky2VNgUOpe6UrH8V43nvsBR4R6nzaxeLdcomgVvx8Y8EiNnrKVcB9SdrYnCUTVBG371wg97vvvr5Y6CeVl6cks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aN2+VECw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aN2+VECw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB64C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790548233;
	bh=zxjdDV1GF5dcd9P58ezx8yuIOkH6f91sEdxsZzDl/N8=;
	h=To:Subject:From:Date:From;
	b=aN2+VECwq2Yp2TlWmspoPizYnyAZ7w8KSgWtXYvhmAI1z3y+PUelNix050dPcH2Cu
	 PDQrbctsw1TQVSDwiL1nYXyY5cK1PkqYqKlTLkiEk0Zu0nbzhDlQH9WLy/yUBFo6vc
	 V8A3OZHMBKU6huRzBIaH1uyaBdPKV3StJKN6k68jCyQGgIukOpMfEqDa9qKdUBP2aj
	 Uw802f9Cy1JC3RpNPS3Yojsak70WiKLfxwhnVg/xPJBzuPIu/ylha3GtxoaIeTM6t9
	 GpNFKomF4EAbpjPacwFp4hTggSY5TNU6USSC9xjRY5LctDdqlvLd7wHK23d9LWLHCr
	 1s3WrZ1uE4kQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA27C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054823369.17857.9066497501488688709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6ff3f621d33e336bc2748cccf18c832fcd4af0c75da83ce7e79024a00d7b10
Date: Sun, 27 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790548233
