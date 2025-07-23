Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E472472AB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753248594; cv=none; b=Wad9kM3pN3COChcw83i5IdI+4qg9gzQIfIM0sso5D3TQelQ6eb4FCSSLQSjtaAqUa6mUufJON6BTXcTg2E62S71m6B+urOsPQqJxfvlyIHh73IIqsyPzo61mlY6sFybL/LVgZiMES9YEdwd27k6YI2G50qmMNmgeG1Q0n3G4ckg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753248594; c=relaxed/simple;
	bh=1pXE8B/+xP/8WfCcdyrKQuqnc8fcXec0pp3+3Ce9xyk=;
	h=To:Subject:From:Message-Id:Date; b=s0x9dBCEJs9Zzhe4hdTDuQ/eAVJN3PglXlX2tDdB5UNsYw5f/nWnaAGW4v8GoHtBz6b0Hg/r59tuRLQVJxL9qMiP1kxzd4EFXq6iksZL3vE7NKASXDNS2DAxC1doNbpLZrABzN0Izwj6X9ahsGE1auzpGr3M9N90Nve/B1HDadM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzWMMxak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzWMMxak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC2BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753248593;
	bh=1pXE8B/+xP/8WfCcdyrKQuqnc8fcXec0pp3+3Ce9xyk=;
	h=To:Subject:From:Date:From;
	b=kzWMMxakJlXjSl6iXZnygpqsKCEPQaOOhBMdVMuP96szTO8yT24pMfl7omT0PVO73
	 2QJlycdLCIGxF6ryBMqhMA9XT/w72UPsOHcmFyKPUeMcro71yoJnXX8yd5st/f5GtP
	 284x6INIZoncNhaVHMoOoRDF3fy0ffKd4+Effs25beQmMWzFcyLe9ETUZ5oYsNKv9c
	 hV9LGiM/6uNNS0ZZ2V+Rehb3ntLTOe4f2lSID3GwW1uxeyHid/4AiMeDm7AmQmWAdw
	 04UIrEx7lHGitAEp23khExuJqubmJd0EFavUgUqBj7TCUdFfJuTumx4rLB2Yz6G4x5
	 GUmtU0EFR2ILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10CC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324859357.5931.4080669410162030784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86767a5a15f759b1db91950ef2b6df71d3249ec43bd33fdb6c045b58ee32b5d2
Date: Wed, 23 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753248593
