Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332991448E7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718281103; cv=none; b=jeMYWDW0I7MhFycqZ0lUmfY9vASZ1cTfrQapkt87Ep3hJMs3yDKyGr0uw7KDiA4SnyZ2EGNEmiOj290SK4B7jPC93Xxu+6gUWV0nLxRXRff8fuC0kmyxhNQDv5zYT1MaCFcWTeuT9iQeS3sHIPOy/O/mvhdvdnuM3hGd35aYGHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718281103; c=relaxed/simple;
	bh=zTahdXOikGZeKfUAmlJ4Wo40o6qPkA+8DBfqKY5iCtM=;
	h=To:Subject:From:Message-Id:Date; b=TJVsIvDSo36IQ2CO2NYAqTwaW8jq6OjOIvKjzZwXBPYaZiHJXrUCDH9HFm4eUD/3h7hjCU23mIJG0xnveNa3A2EmbMEz3JXJtxh8GUFxSbLZZ93l4aGGCx29PHcqUFfgnwYAwyw8WGOO2yliUd5YktmJul3qX1+C+2QMqzsgAS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfy8oT2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfy8oT2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECEDDC32786
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718281103;
	bh=zTahdXOikGZeKfUAmlJ4Wo40o6qPkA+8DBfqKY5iCtM=;
	h=To:Subject:From:Date:From;
	b=Pfy8oT2rHpTFsqc9Iuu2TalHOh2iWKpwyhbQrvpTOQaeDBUh4T9xoWe/wJlZL6kTS
	 u06mQSetKwtR6dxztVygOd7AFuslsL0VYBp0VKEcUBxLC40atEJ57OALhr5Q83mkxA
	 gWi5tuNwgviU0Gm7BbzCHj5oFNAKwREJbA6rzmB8ImQR7Wzr3nxZIlCC+f8v87pQkC
	 AoTM1IxMKRAHhc4wcy3mDKSgoIAvT5coP5mpl05+7bRMZwYywD1ZlpqwlsfZLxY8Eb
	 1i2Dkpfl1+4q7JJkhKPJGFOfAGR3YwCcbwzf33FmO+Kl/qDyjLFWL+Fm+p14l0N7Rq
	 eJ4kVpf9HZArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4358C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828110285.2862.17528817243282766862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25b4bac9047bb727abe710b0d8a1c42d568158beb881a4b97160a9498bab52a
Date: Thu, 13 Jun 2024 12:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718281102
