Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A364D599
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756111794; cv=none; b=Qx40WRGs8pldJjPQd4IOCqOj19987YysDm7V8PCAJY+s0Fsvxw8YA/8MlvZWPdsZZU8XS6HirTSGhs+npysr9zUoqAXb8xdcVLcgOqTRF67mdKVJHKflbUrXun0PVVYNlv+7X1Xk5rrKpcpePiQlX21GbBrGMtiClpBGqC2+uTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756111794; c=relaxed/simple;
	bh=V7h5EnHoF4BrcYtjZH1rCuN+vyqGRQ3wgHyvsJTdgBU=;
	h=To:Subject:From:Message-Id:Date; b=TC6PWg1k3rivewgV50l8z7pvarq8KFiog4/6rQ75m4NvTXI+Dtp8rvny0zPBKrLaZ+BkjfvcRe1n4xa7XSGAD7BHZY5FRcuZYr6zBSRodzqCYW3Su5Qimz6gMSNimNG4Y418cyZJU73AIzoLu/C/NHlm59xSq4xMBklQA/cJK5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a25Lwzg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a25Lwzg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83CDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756111793;
	bh=V7h5EnHoF4BrcYtjZH1rCuN+vyqGRQ3wgHyvsJTdgBU=;
	h=To:Subject:From:Date:From;
	b=a25Lwzg7HEg28lcFr+YRH5qacWQfNU/bpCKMLskbaSVhrG36UQ8pgkIRLIOtPTH0p
	 IQ8ErYEwrg6WrLV66VlwmKz4t3a4/LG8f8woMwpDR2Bv+EsJEpZkUlZLN+VcFaHCHf
	 J8OCHDZkjoO0VoS1frzvZxRiLV/CGZUxyD5c2eCUGktDO1Y00DOQ7GZOpZb2Bej+7C
	 oxDEwi77QkERS/5EXuaI9g8Q4DtOhVvEOcF08X8j/NS18Jis1/BJc2bkKw/fmWUX0V
	 zxSy8v3qnzbzgn/eQM1sa0tc/Vyv6uvvNQp2l1yB4ZRi+Bg4+JNV4JVEfHwXZ4Aljf
	 hALNya1I0Wq0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F24CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611179357.2822.6829877626522578942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c602137e5dd7f398ac9454473442945209e28a9f3b8a65e560200a90b7ba2e
Date: Mon, 25 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756111793
