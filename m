Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4F740D575
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781741194; cv=none; b=DEJRxwCOv0nNONdGAfw6x0fvuW168kKpCDMkx8LLUatbY6lHNcxInR01MfildQa9iUxdgl8y8MI8OfUnoSo7gUJNGmrRfq6qaPDukj5I215rKEhiR6gaNt0R5XrJlVE1YZKvAWtwITxWwxGvOhuo9UFnvy9Q8htqnpab6/haFl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781741194; c=relaxed/simple;
	bh=K7WyYYqT2EmrZ5jSFa9U1xE2yknO+RvEp9BYbWYiJUc=;
	h=To:Subject:From:Message-Id:Date; b=qbKvHDFMtqs3eXVEKFE+3rtNsbmVqmYD3TQnIq2wIxX/MXBcRrDGD39I2a1MuObOy/D166lb3rj9qZd60VcTcacU+QUylORKFJFj8QC4Z6//880kCLh1Ws3kKqgAVgXRHjVQ7hhB3AEAy9cfqZ36uQOgIa5mus2bmEesO+60mk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/iEZqpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/iEZqpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F6AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781741193;
	bh=K7WyYYqT2EmrZ5jSFa9U1xE2yknO+RvEp9BYbWYiJUc=;
	h=To:Subject:From:Date:From;
	b=F/iEZqpwX/WY6NomN3F+Tk5udQlmUamolRqbJI+BUVA3TQ1lRiAWGOKkGVXi1+fbm
	 Py1qDZBN+O1zRbXwHZ4qyYR1RMRrlQRP7D+YtE4ICsknAwLJpOhUzgXdpT7jQGqpy9
	 huhnvpD8ijp4hVm+Q/PBCbyTxh8gKsjnA7KVDnd7L/EBhbKW/nvwm9QXI25m2EEjfg
	 1pR7KTSMKrys6SK5+JWhqpcqL0ExtmPtcWnQ/U7x2i9iry63mcmIfeqbWeDnznCOzx
	 dJZuuXZgHkNYH0P0wRxyiyKz1bO2u7avwvh4MjPgPZYgWTrRT40rLYaCtmEK+M8c2W
	 jFeAyEEijuVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B99CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174119370.12378.7013260883203685309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715cd2fe3f02a7f68bc2b5d1d130d7cbd11d5d607431514f9e1c4090d78441e6
Date: Thu, 18 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781741193
