Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C25354AC8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761935394; cv=none; b=pqa98pEuhsUJdRnwQjASIhg5+10FfKq3LkwV49MDJO+g7e3mJWEx0iotV4U6TZy7BFrrpTFJIV0h4mq0TARBRKGoNrw+bhsfm6Wi7wZY5ZQkzSdOFspu3NL4/TRW22GBlv9iVOUJDsHZY1wmgiTdzsBkJlQCfm3bZcZsPJMUIZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761935394; c=relaxed/simple;
	bh=47hG0MDAs3Agqot37/yuJqAEx9AJffkfSWOmg/LaLxQ=;
	h=To:Subject:From:Message-Id:Date; b=Mq9jbBFuUxJ7HSwIaQ3oazuw6jBxFQwWVqMXerN3TQaKqZgCEMjxh1J3+kTkJn0n6akTDtjQZNSNh/FM1+meuglnwrndz5sI/FFZpCr3AgFjT526HfIAPYan8elFVsoa1+1tm4+R31rqp+r9GLc19iGICsL1w2OGM4M7AB7DEgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBIs5lqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBIs5lqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB98EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761935393;
	bh=47hG0MDAs3Agqot37/yuJqAEx9AJffkfSWOmg/LaLxQ=;
	h=To:Subject:From:Date:From;
	b=jBIs5lqkxv0zYqsQ4w0Gz9IZ2e9XRSuy2nKbuI5fyw5DWvhWuPaFHL602+uA3P7R2
	 VwneEwliwkgVG9AF2si979590dVyFKd2n/9v4JsAi1qr+iLtgombBgYZuGKi7hoSYQ
	 hyNUBUgfAI4PlP+QUa0RDryR/QxuCTgzil/Z+UDt4nneV0/f7oqCBdZcwmk+SD1Eik
	 dlpY/D0H04xMf6FK7ntZWbnNua7ybw393/N4CKG5UGhd1q50ju/EjHbaoE/k33VEku
	 Mkp1HoqcGFPgcTHxPUcsZGlcRdl85G1Gn0aqQRbf1PyZkKpAqVp2qWOWgZDC2enHmx
	 NWBsRvEsJ8Y2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9824CCCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193539361.26922.1210505452197502158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d14e51b82160b06368e4f2037d7a15ea1f5664a1e56576d6a5ebc11b8988c2
Date: Fri, 31 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761935393
