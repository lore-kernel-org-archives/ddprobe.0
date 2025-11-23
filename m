Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3845338DD3
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763882514; cv=none; b=Ghbo/yEkGm85cKbFdRFaADwPl/OLKCn+fELLc6V8rfbubH6zgUTRNzpBB6LkYkMkmUArVEWPKbJOQG7U5Pm257LhGoga1ZWzPGX8+0UdWR7+xk2S9KH1NKhqgMNsveJK3z7HPQm0SHVkdvZaAiIQgtd4j8K6rSufj6LMY4Ey90s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763882514; c=relaxed/simple;
	bh=78lmcIqrFJWRK+/z8itQ1y/6R6LAjGWLZ41id/h+9j4=;
	h=To:Subject:From:Message-Id:Date; b=QCZ3qOLbXixO3Ly/EorbONYSCKDSfcQBGoiMmFETqmli9EA5SdUChLjIPYI4tsn1yS301VCeLLes1PvWE2+Bsxk1lcNtbKOPvShNwL+E7Bm08IMhsSSaqnrgxibPkmSlPDs2rmnu4cQzmyC62P4pUkWFnmGVNgsihS5KfWHa9cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz6v16fU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz6v16fU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83AEC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763882513;
	bh=78lmcIqrFJWRK+/z8itQ1y/6R6LAjGWLZ41id/h+9j4=;
	h=To:Subject:From:Date:From;
	b=Tz6v16fUS+a9aQGXwheWfETaQbHBzf0YgqpK/6eY4uo4SGn5zMu07G2xlip7achRR
	 yZZmLp8dgB+QTu0RSrkmaYtenUox3ubKBjwac9EYIo3ZHW+F66IYy9d70qKNSfkGC6
	 OYvqnNT9MF/c8IcPIX/vDZfnO+2F06YMXEidATHHkZqFjOBs4PDUdw3xN7WIAGh8ey
	 h4upse0bBPIxMp0LL0oqR/N1NreOvhjj48jBwBMVD/yO3IGmzyW/bewfcZUvuiXOmD
	 Vmo90rT1Ild/Ii8vXNokp3gJ8heMQP5sNdFnnPUkC84ghKEsw36MG5M6wToMUzCrii
	 U+5YeDjSzU9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BEFCFC26D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388251358.7382.11946197800845179243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bfc03547c79635a3f7e12ac8aa953d7048ca76b266f95bb0fe27bcaea2b93e
Date: Sun, 23 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763882513
