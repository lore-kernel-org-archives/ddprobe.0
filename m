Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B3713D898
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721768154; cv=none; b=GkffjPFCXBuWSePnVe1kvH27ve5N1nE3CXG0keiCOcARkH3UDRXp2ljZj+8p/cOfFW5Oa/Q3CZih+dqCwoVmNvPgAB3UPDzO9TRhP+Wj3EPbeyRt+zXZ/Gn/jK9Etkdr41QqhZQ2AZmnCst+OuLzBAikaQ4GV9LVY6j8EYIP6rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721768154; c=relaxed/simple;
	bh=jr8857PcMIqV9TR0lqLiGXbjNb+KJ7HaaYFTtpTCLhA=;
	h=To:Subject:From:Message-Id:Date; b=c7jB7R7EhsRahDNgJ/nCTfo0Q8pjK2Onjc1NIV68O8+iQ5SQgLcrTWRVWUVFuuhjb/sMb3fSSkF53mWauH47vT3lmDwJUtmh+b7oCWjPd37ZHDo2Rh6E/WGv3NrswhQ2cjsxeaApSNA807I8TWuxDfEqOVVoOTEExqTLyORoG6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDLcRU1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDLcRU1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78DEC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721768153;
	bh=jr8857PcMIqV9TR0lqLiGXbjNb+KJ7HaaYFTtpTCLhA=;
	h=To:Subject:From:Date:From;
	b=kDLcRU1rA8uKkHwEmxnEkxdPhCvVHjHP2C9sDazri/d40tIWJJdqRNVHnLx5AsQ5d
	 joVK5Nppczwj0XGWi/dc/tMsnFWKHPXZcnGMe7GLBNdcRk8tgqw5Ok5Q4D2LLIxM6o
	 GdFhpszW26alq7KtzF491byBKNfPmfTaSR3jx0UFtdPgXVsWxCehQX0rH1qOlBtQvr
	 X9AelAjCPMNOVi8O9cPeV/Sf8pmUu1iCfPq8roYjwU7UcfKKaLkJLjx/qMq7924jbk
	 JNY+ef+803MoLrDsnhinbj2n8uMx05hC9jNCuFfIU71oFVe+Jj+GiFePv3Fo0M9P5s
	 XAv5QY/G8JdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A134AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176815365.6449.1121168377251868258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1510832a81a9cabe1f1c8af61c52afcdb85cf8c57603d227bad99e4b3153ff9
Date: Tue, 23 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721768153
