Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1CD84D2C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716657863; cv=none; b=Q/LeHzYM0Y3vfULe5KG7JlpdYfDTLfsUQEC+HlA4uXSs345poVSMzacimCyUPazWvouSXIHjbe5WNzwMMRA8GIBbQUfq3uxMtG7oDXLXnBjrffCI/FClotfVg6l1pa3X+WbhAIAWyNuDyaTszmrMNQlM6TwiTOclI9KOUCwp92o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716657863; c=relaxed/simple;
	bh=jpgUwGT6gDU4UGcd4vVUFWtuaZTB1srt2HvQHNcL4i4=;
	h=To:Subject:From:Message-Id:Date; b=qF3cHnJeQtOHHGjLGmGRLZTp7VRT0QYQ3k4ZseeIpoaMxvm+p9B7A5pCns5nYYNV3eKPOYZKpWB+BZZt4CyS3jRsi34eO3Qb6OtBbqAgEfg61pXWnmqT2PSATajs7g88mfiypaYAAk80iUqSTUABf8V2w93YmgLf7IuEwMRUnHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tp24j8T6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tp24j8T6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F104BC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716657863;
	bh=jpgUwGT6gDU4UGcd4vVUFWtuaZTB1srt2HvQHNcL4i4=;
	h=To:Subject:From:Date:From;
	b=tp24j8T6TBzuhDQaFePxugjEYJnfA00aMzCVdZsSpyMC74z/rjtFsioQOks25RCtN
	 4EY/nwJoOOLl8SsPPf1r80qJ6XbkVULyByvQZ1bA2A030xJTRvC04ce9PZfvYtbMzz
	 anWB3P+kFCBGWbZTBY2oo+VDMMuj/QRSr+WW/Fh3zk4bIjz1uj0mL+leTr6WnhtOZ6
	 GUvDf+i+AFcaH48m93ykLIjRPzAVTpkByBmu8Uh1S4bs/YPl1HLaE/39w3DiFooiip
	 yG/r0H6SN7vObOjTNVYJ2ncJaStHBQ+d3Ou94KFgin0WUQShfjHMlpjqRCVYE03v1p
	 pdyfk/1gq1MpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB1D8C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665786280.31845.4875926826463883950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c87399cc3048752a0cb5aa6d05b05d59575b0a7f9e631cce9e2b973000f790
Date: Sat, 25 May 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716657862
