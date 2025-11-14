Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7A121CC60
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763153994; cv=none; b=CA4vPjgvf2PO0zE2cw3GoK7Uj8lJuGW1o8dg2t/i9uDHnqYpssg/zlBj/5l4G+AHjzvhB2atp/Rk7BUMjeIJ7jRXOUnVgsO41e8LnNYnfoL3cG/o/82gmrEwYb2Y26ItRRwfMqPmIVhwYFt83c+52UyiD6H4aTKyFpPVZ/6wVKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763153994; c=relaxed/simple;
	bh=anYWLoTaWHMCBlmUsPXzd1qnXD7cLUruznyx/o+g5Go=;
	h=To:Subject:From:Message-Id:Date; b=h37GMETSHr+aUzGkKYvwJYx1bbgAgEBm7OUOCGM/QLhCerMfED3/oXkIVTAHl5XD3mvItRqphnm6kT8Vjrug23AX4n31Q/scihaL3LTimMfekD7dCYZL3yrAtrNOdnlkwyK3oJ49SiY8Sn+T0p6NLyudW9mFe/5J6iCReQRbRq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmL9hpC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmL9hpC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45F6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763153993;
	bh=anYWLoTaWHMCBlmUsPXzd1qnXD7cLUruznyx/o+g5Go=;
	h=To:Subject:From:Date:From;
	b=nmL9hpC1ghKCSGnoLjm2XBkLNgPwJAviGT9/8eWZ4LuNDHvoyV9gMH1x4I/tcZGS0
	 Zp5ABTOiimTnH5NkltvbYfPLcl7Lc3nwKBbuhdLqrQq/vyVjGdjG9hYHJY2zF7ga1+
	 za0i1EuySESAWILlxOY15DfD7maRW+46mPAWLj2UzJDlcPrICDUSPmMvK7mCKFs3Cm
	 IamKZOD28FBiFFxATsq5nDmMN5HQodXIZSEqYN71AVJ+j/vh9Gl34Vhv2uG5P6FrqD
	 UtZ/UkjVMA/w+PirQCopw8EG9c/7SLEKg20anK4XTClxPpGYIjP/Bpx27I6obDZ3kX
	 Px/vCUVmaQjHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634ACEACCC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315399358.32141.1973922748900509407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f350b196fa2b114dcfcee56a1bb23e0a433c783d250e122c7927e420022e6437
Date: Fri, 14 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763153993
