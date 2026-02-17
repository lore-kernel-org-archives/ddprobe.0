Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134CD23ABBE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771311894; cv=none; b=RN6PXneQhl5klZLflvSoHBL6vdjEpwWEatNbqG6hXeRUTysHcaqUgaiH5eWjJpDVaVRAP+vOTgP8JHClzVm49PbfcyJPo0DNF5ySAUwReh+GOhhaFgD3tKUc6aYUGyuGCZa87zXlr4kJtGSjHQBPjltjeHJ0GR3Sv+wQ129FaAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771311894; c=relaxed/simple;
	bh=3MZXf18zdKf5ghSKAY6TxXQM8j8SOgfZfRZmTSxu48w=;
	h=To:Subject:From:Message-Id:Date; b=UPNotES3zplFtCSRnX+uAgUhe2UUMcVYuzCI8TeWo80MES8z9cLY4DHpO0M/Tpoyr27CkF4ZwqUrptsLj0OOKs80grBRX5NcpMm3XzXxwJwXrGjZqdgbvZ4VQL0PzWfoIA1VUZSwyrhH/hZNoaD/Jos7Yp9XWuROvlM8vBo8DJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dk64o363; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dk64o363"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5086C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771311893;
	bh=3MZXf18zdKf5ghSKAY6TxXQM8j8SOgfZfRZmTSxu48w=;
	h=To:Subject:From:Date:From;
	b=dk64o363tZeqdxuOW0MQz0MCh2VDlPqsfQKhGShZ1vlNtm+CbBoLpv7uuQxQSKW9k
	 BOndbQ/0f1q+UF7OZuJPPCdzzqQbfMUwD1Qf9bouLnFDHgOOB9bRgdNOpzsLw9/kW+
	 hMnSVLhBRVxM1g0Dp9snwxfjut83r4ncRt3deaQeQ7+CZk7OXlJoRpQ7SlH9D1k/Zq
	 5+2zgrvBGNvvLGgPo7ylzZ3CWStAp74r3bA3LOcsPqtqWPRf2QPCj3QX7Iq9CeQDn4
	 KwxtyPgnS4gUlub1nx/I2J57DNJTz1m9Bu42Pt1KeVMLg2mYukB6qeNjnPMRNGTint
	 F7VME5BWDPFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C34E63F29
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131189358.31226.7390678678164788837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c4d05c95e3390ba6a3832674b9ca3a2d97f899ee1936403012382841b29d7a
Date: Tue, 17 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771311893
