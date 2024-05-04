Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3064689
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714817543; cv=none; b=cSqzGXC/XifCs+PJkv19W2vLQj6sPXe9we8KnllMXAUZGpzHLRFKC1QIM93crPH5OLHR7dyHRzhRqkqBYDc0m96kzAGAliJI8ZmxiY6JniN+FxP14XucbLuxf7/RTtGt8uvvnunaUV1tdoVD7oep5Ireg2GUAXGDUAO+X2WUfNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714817543; c=relaxed/simple;
	bh=Ocy4EAS/2q76XlQb3o0JjlIa0aKZSeWqA03f/llEbDM=;
	h=To:Subject:From:Message-Id:Date; b=doegDxyr364ktQB5CbHZj/nZJ5jm4g2/jWGKb6wJ1FGB3QaINPxN5JnrwX02ulErVpjzvQ074MbLj+4N8rF+okabSWsYRnT75Ops6zbA8V6sZ37rCAkbV/7PlVfDmuNTKeEcJLA/JKerkAK0Il3hZ7DSnpIFUNZ9lPfdCdwit3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SacwT4BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SacwT4BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5232C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714817542;
	bh=Ocy4EAS/2q76XlQb3o0JjlIa0aKZSeWqA03f/llEbDM=;
	h=To:Subject:From:Date:From;
	b=SacwT4BSwIdNasuzQhj7w1flblcjOgTYHgBmsp4xnUrTeWG+MH+nYKPNWCPRd3sR6
	 Gl+BvTxIXcfr/tRSS5Z2G3PqcwTsYz/cxMcpMRzf25MkQZkmfp6Y5EXaBZPNF+b2x2
	 imaZ2X5RQN/FmcEaP3nnwlHXsf5J9XqBOHDu95xzPdi03kEJ00cQyMkvlzFgJ5tsPr
	 viRy8h8Hm12OTO/Jt2HRcSNoL//5B6xI3U2lOFIJnFycwnnuXZhDGc8xDpsI7eMujM
	 Sh28PUmJwSCyOURVrs3WaOo8xjZphCoqEqP63diRdUiheQtBACSGc0bOObdXh2imlF
	 AGctJGTlqlh3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF74C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481754275.27421.16590591593690001802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33fd6975d5496b40dfe7693e43d9b265243ce40e7be8b81e0d1fddd5ad00dac
Date: Sat, 04 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714817542
