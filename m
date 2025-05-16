Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C331192598
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747425594; cv=none; b=oZgkXkoBfHq7OlOq5NtfuhDqvJiI4FgH9RSDCKMNU0xPDfOTOvhzVdNjD7MD8n/Sn8MjwkM57oSUsO2YAN445p/jYSDCySuxyA11aM3ow1hoZlPz6VVfNNXsq/kw0d5ZGiAMQ04FpPevbx8PpB2TUHR8NOacEHppVl2Ukx5P/xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747425594; c=relaxed/simple;
	bh=axEsG3GVFqVHuDXr/MDBlUNvRm1G0Rwob+FTiySfv9A=;
	h=To:Subject:From:Message-Id:Date; b=CxmTiazvrSgGnKm3XSwUJikv81LcmtUBWPhFUXaXsyYLthrUPEMngxLFk3Hw94ZH+kMQcQ2HMJfs6cR0RL0HWZmQZP9hzhHgxBzkhowrsotgvTJIU+VC/8wtPsZ/XcI/d++j0QS2QeSx5Gd8S/iu8s3FdWBHwIItk/ju7B9G4g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNp5Ljxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNp5Ljxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A383AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747425593;
	bh=axEsG3GVFqVHuDXr/MDBlUNvRm1G0Rwob+FTiySfv9A=;
	h=To:Subject:From:Date:From;
	b=bNp5LjxszlhAGJulrEHYzBPWOdefKmk5DSCO6g8ZhSiHaKblpUCh5t25bTH2unUVa
	 XVDi9Ycohpo5t3nqXyJl1ypROg7tvBEOPWK/Ng5vYO2Gp9DWBKizjYaKIEjT2pETjV
	 GTJwXdh+C/Bm5Cz4hQoo7Bjfr47XQiVVtWz50RnC99tgWlhqyFcdf5Na5STFKWQixy
	 /tO0lpruHnsiWK+pM+Wm3RXtSOLwIkRKUECfj2IAd4bQM9B5wSIfzWIvMbRJCqSudB
	 Vnv+5nc7REaApevEa46HIK+mfykmCWAxADzcEVjrLFpScgNjIa+9KcYIV1i9IdvOkm
	 9XxEwxhV5kaSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FBC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742559358.32715.2551237399605265898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e88588482148fafa649b74e6320e955e3cbc3ecd6b329ef48c5efdc6e5aa21
Date: Fri, 16 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747425593
