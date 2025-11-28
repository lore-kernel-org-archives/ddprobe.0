Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7F43AC39
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764294774; cv=none; b=XaPAwEIlPec+LHjfdb9XYWyDjgK4J53Nz7CnfNiC54i3uieUOcesYhqllqWHzS9TDxcFcvIQ1pebrXVcLOjOCmL5X59glNFj96oLVWtqZ79vFBG11SAfD3SCkBFTm9PB3CDRLme94GEc+kw/k0mhNINTf57NmVAvbdS2rw2OOl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764294774; c=relaxed/simple;
	bh=ifG5Gvpb2yO0Rm2Uct88plyy8EDf74YlKzS5Anq9slg=;
	h=To:Subject:From:Message-Id:Date; b=piQiReNAT5RWlAqytRhdjlrBPikVTijnR+R1BfZFE+qLtZHe1Bqc+Ye4Z49mZJVwTn9otXYOwgHBzwfsHDd/N/1Ct9KM5WvofDKlobUvSKoXSnmvKEQGcnoSwCxpLFkeF5cf8GW+5HZ50/NkNiMdC65/m9HzU+2YdRTxjvC82kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGiszTtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGiszTtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B011BC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764294773;
	bh=ifG5Gvpb2yO0Rm2Uct88plyy8EDf74YlKzS5Anq9slg=;
	h=To:Subject:From:Date:From;
	b=hGiszTtrsAFJL+eh1xcGCblpHi+znCRCkFjxboeArBfRdS7+EERVG/1q0EtUTNwE+
	 JLrZmZUNpwyswGHjm7wqU+BJ/ugGY6tnM4neWbkyGFPObT2GoaZpD2QXsXgA05mt2j
	 lRTgRu6LB2UFJAvLQZ5Lxm7F8KQGhmWmSobIMlSAiYP1wum706BrVwa8l00dQD0vH+
	 +RG+cn4MHkaMV2b3xPGE5qRZ7Z5w87gmDm/xCQORfWoHYqiUS82kupbemfZfImsf2D
	 ZrXO27AeECiExXLoVIDU2X2Cnw+Ni1afgFFl0JaHMsv//XXhtiPOhSXh1R71mXxan8
	 SKMmRjMih3hqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97063CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429477358.27775.10706316035210162619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5f313a6e754f64dc214cf0c1d3c24fa4ee4f2c073e126bbc6e7de9b359e6ef
Date: Fri, 28 Nov 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764294773
