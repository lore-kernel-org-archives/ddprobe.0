Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A31A14EC73
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728726954; cv=none; b=PQC2x4ZP8q2JNBwU6e3MmOEXkespnH4X9IO+XIkFRP4YkW0cEqX8dybpawlXEOglz3VTlzzZ4RyB4YAG051mqheLh9/UG12CiISBqO+mJ4F6cOON66ECA4ZGFNNThln+veegstEk2pihwapvAWeC3OmRewCZ7XYBtXQc6A/MjME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728726954; c=relaxed/simple;
	bh=ovfOU8Q8eA9tqjDzb4SLxKzpIhhY7TfXAO8Je3IIH70=;
	h=To:Subject:From:Message-Id:Date; b=j4ma4B0pbqNdligTPZNXtR18EGa360FDVYPRK2g4H8LartMpGI6MI7P4lTi++DgHM0Glh4fKLv+hfu25ul6HxV6VxBSC/EE+0am/AK38ZzzpK6VTH+ypcFZjgOWAuXZ3apXTMPjilnXoCbuz0ta3u/JTTcB+hGjcPTEppaPHPNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjQ3tFMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjQ3tFMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553BC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728726953;
	bh=ovfOU8Q8eA9tqjDzb4SLxKzpIhhY7TfXAO8Je3IIH70=;
	h=To:Subject:From:Date:From;
	b=AjQ3tFMgZv86HaMUcr7M2NsioOhTwnlxsJuCYvNmmFwp6C2FwQMhzBBCRWrm+6+D6
	 OsRyrWK7AI57kVAxsBogdnToWPC8Qz4iHqbTnQbfSpWWFJPvGcVrNt3akSraJpZ0zz
	 pWVs3ahagLKDdqMPpqclY6TMaRFTUS1hqZYaTvZMKW2VhC04Sonnk8It487CbOvRCZ
	 FifV3euMIYmaMoCFWJtcwvCFcE3CuCu3M8tivoSjKjr0EDq4SBPDO5Jwn32lG09MhQ
	 yvmM9yEiMcrWYOWPj6oeF87Ah4NQtw0jePWdp12zBbOQe6DsiZwDdlPHbHVurKbF4J
	 lGb1M2jUKfLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632ACF2560
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872695358.32133.15823993785508736054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e1e7cb8c45cd6212ae53f8c50742d9455d97af71f8dfa114be718100d4da3b
Date: Sat, 12 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728726953
