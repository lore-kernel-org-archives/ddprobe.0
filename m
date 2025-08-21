Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FFE42A8C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755755394; cv=none; b=QOOZpdtXu/qkKQ/dU7rBDLyhbw+Y8Cw/L6IEeZgaLPuyZWQVF9aVacDjXVmuLP1Bot+Y3imhe8VPAqfGpyBrdAoHorHOGn/hWBsSXcrNfU1Q3asmipvjISC89GM/n2UCjTMryZYDNNLdk97DrTVqUEbh+KyjukSdOzKvAvx4HYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755755394; c=relaxed/simple;
	bh=B3XDasF32YWP8NDNunDg6Cuwv/+2TG0FSIKmQM9Hgqc=;
	h=To:Subject:From:Message-Id:Date; b=uXMGn+/BT4x2IECS5lmNk/eQGqq2m5sCfrtrU0ukrANEjYP78yAbGGxrPzQ4AxSSV7ONkxj0DMWMANoTz+8dGB/Na7pFtggHMgKZJOVoimOz+AJY/eqwlyq07DM0iiP72ZzOoTTWV0YSGATXdIqtx0k/PQQ/3oLaDhuZqJLLQlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGnCIza+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGnCIza+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755755393;
	bh=B3XDasF32YWP8NDNunDg6Cuwv/+2TG0FSIKmQM9Hgqc=;
	h=To:Subject:From:Date:From;
	b=UGnCIza+tRfxjCvIiy5Hv7fXvqGYcbDbM1QSUAavlrnSAS3QfG9vn4wvdHoyNylLe
	 3OP88QYbnigFZvaROfV2EbkzbAF+K4LkVN+9mgAE7/Sy1i2Lioi9xPP/DVjJOAGRMh
	 SBORGAoFzQNcA8OpTSgdedZ+gBnOVAonHZol5qWKoZ/YjtO+W3BqjKIOg8PWpPuQuA
	 GJlbv808yzh/q5sQxDFmZMHBV2p8HAdxC13QXQZX6AWPrN2ec84lCqlQswNES1NSIC
	 ETAI9rfvDbs9sE6YBTo2093jkBVVbKNZ5H35teOwJEpFp46B1Vc7+BqAJHjOhmfr8e
	 Uh0ZZOkWRdEzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F166CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575539357.6910.4125658588021433815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afb848c1b50fc0e4b95484ac284d0dc7a707a6319b22b10d3ad84b69ecf5ca7
Date: Thu, 21 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755755393
