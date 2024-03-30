Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA8A7E2
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711763297; cv=none; b=Rq28vStp5iRwG0AX7s7KIpxdUq6EiP0pC49eAMwqbv7aDQBKDswzwY68hTfePxHzc7i82XqeAIECEwYLloL7mIH+4kpSxcAP5peIelWtojjSThmr9VoVqJZEzaSfOnu9kO947igILNqSKOptrmIEh1r7ICnN5cUvqKCIRDH/XVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711763297; c=relaxed/simple;
	bh=9nvFwCTb5gsdEqsMTArIojBt2CWRhCNQkxVk0w8o64c=;
	h=To:Subject:From:Message-Id:Date; b=m1xNRVcyhZe4S5D2CuaGFDJ/n2IJdbhkErgCE4tVLWjc5uMd8zE93iLEOYZhiDXVW4tiv72XoWgutE3MIsPrGxjG5+Fr4AZTzoBPDSyhuRnPTkR/OESn/jfNLpoUSJvcrRZGO6yBv86NCD1rmsMS0dVBFarHzcLTkvDsbPuCG7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQ2oKoay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQ2oKoay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D52C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711763296;
	bh=9nvFwCTb5gsdEqsMTArIojBt2CWRhCNQkxVk0w8o64c=;
	h=To:Subject:From:Date:From;
	b=WQ2oKoayHlot3K6ElV9rI2FZBoZzKL7xAMM7eA7BBUo3h9RIYb/ngZX5KXFzvcF3k
	 aLkdLXXzqz8oDrjeKK7GQaJY3JKpb/z0qLyOZk6Kfyzrd6EQuRi3dMjDLar8RhMTIJ
	 4Ik8t61tBbKUYOU8GAl2IZ3/UEf0g1V0jBKLhjE4A+LAwzEuJ0kclQ4VF8U2OFFH/x
	 Z4aBzH5dws6FD+cUY5K60OXRn/1IP8efp9uVJQ4yIqe/Dxyls1alWbRnUj5/5/NDZv
	 N1EPFL/ViF2K4p9n25pQLq6wd5Zoen9B8qdK/cWQWCKpslltW3YWyMSCJlwrC5KoFk
	 WPJZN5BlwV7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6479DCD1283
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176329637.9608.2117776090515077430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5bc69fe6999c00781cce372e41b28ae9ac715e0123870eb5054d71cc3228f3
Date: Sat, 30 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711763296
