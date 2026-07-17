Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE24265CA2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784283514; cv=none; b=TAoX2H0EispAIzlP1j+iIBYQVD495q/d2lWGk3EL/hvRC8FlGatvdKT/1/0Va6vCz0RdFebltCuq91EuaYKvP8qkas++GDA4Tdwt8J8EDTsahCylFUnNNORAGVlbx1kwtSGBQFaSIoniyeDOakQ5J8KpA7ryYbzETmdTL2zNf2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784283514; c=relaxed/simple;
	bh=PFepEPlWHtPhGO4CHwCY7vVbxR81nVuEAeB4XdP1hPQ=;
	h=To:Subject:From:Message-Id:Date; b=R0mMbnI2pTzGrvo1ZBJeJFTMVnuuuDyPBxHnbO4wobuDT/tsO8QPlRhS7PnqMq4IIiLxRuZSbG1/Tjzhq8HarqfZ0h5ez+aibTQodoJG38FSD+Y+zD6DwrKbhY1dejztmzBADjrSuiYKlnuT9XHCpM41lTLw/ySZ6nbmDhaLsek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU3ms87c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU3ms87c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA70AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784283513;
	bh=PFepEPlWHtPhGO4CHwCY7vVbxR81nVuEAeB4XdP1hPQ=;
	h=To:Subject:From:Date:From;
	b=hU3ms87cv+p4RYyuEbaKX49nP8Q9JCo8Wkwf5QNldaOBN4Jml6qtCKBJjfEOJU40z
	 jRwGUdkMvTjQ2MWGO65aBQNVLmHm2SS8qzQlLV4CyI6wVFTHZn0gPpf1B+znXWjqB7
	 poIxcjDa8OoywBBkRsJWsIYnRIc1J0PK/CitOgE1CF6/IBI1U00/OY5JFoBuls+PcL
	 R30R3LQ5dNLHD9q3uKwuK+rxI086WM70/OA1iMcfl7RuSIA/VNH93pXGa79lLtbE3M
	 RwJ42IByk9P2pMpvqlnRnufpsJCDru4oiUaHWZr0liIumQWR2YRS8/1g1n7drwR91I
	 joLpYJmDgVV6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E49C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428351368.5831.10769498626661803692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d90c5e219bb4f22ce842f694a0dad3ce21319ec7dcf1cef54536d7fd2a1e94b
Date: Fri, 17 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784283513
