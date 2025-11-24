Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C124217722
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764007314; cv=none; b=u92LbBFtQiwIbNJx7NflPAJ2PraM6dAo/kqAk1U3LyVexdSpNpcnbeOxoDtc5tRIXEe6iyjiTGZWiope07D1RDZxY66boxIGlE80awEHsdYgO+dyCWD2FXisvVlsvaaXqqxDI/CzyYt0+qxnqCCV7nvCnMyC97vMoChi37Rwp4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764007314; c=relaxed/simple;
	bh=YlWTXqZQ7DV/BoKtmvsRPtJ9CGPMUs6DUH/xaxSkWg4=;
	h=To:Subject:From:Message-Id:Date; b=hJsVYzyUSR3OWcpXQaUDH0vYmtXnE2bmJ2rdsApmw713lzOM4GC0SFZOADe0YVUkswtwYbttA0w0hlBgC4D/ORx0B+N85+C7I8xn1Rs5antA93UEUnGu7ko/exzfFM6tR3gMS/AD+pt9NtvnBB44ZS2evNZmQ4RUrS5TPZdH2gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stf4NCQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stf4NCQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764007313;
	bh=YlWTXqZQ7DV/BoKtmvsRPtJ9CGPMUs6DUH/xaxSkWg4=;
	h=To:Subject:From:Date:From;
	b=stf4NCQdPuNXoZE7fEFOYSJXKtV3O2SDzbVlwkU5BQPFPLHUH94omIvKxgG60jA7A
	 6RUPXBdjhHiO28QnQH98syXKetcW42nSrQbsdNrvxsOHbQ6RTCr18xlHfeNB3iEdGl
	 tc2qO0Y9JbDb8bLPbVQBKB8ONhyGPhoi5B3LE7RGpTtqmksiJehKnC7FK4dR0t6F2S
	 Qo8MYVVIlREZLy8Q2d/t2oCpgH8B0Vt1byKIkTCqEF+8OB/zX+RLMQxRZsKD9Gh54r
	 rUqCawdJBiLZBOpJv7NAGcHeXETj7G3NkES03dpKmMeNiDbofxwKpMk75iG2fFlcf1
	 J+L1NzrVuHy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9619BCFD341
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400731360.27650.3737828137091677444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a3622138ab197e1faf53b4433275a4cab2041f780d20aa86104c9de40e9950
Date: Mon, 24 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764007313
