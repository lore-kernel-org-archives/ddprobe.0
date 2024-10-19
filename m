Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F6C18E756
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729368354; cv=none; b=AjhgM6kXSTmolLRFHFjrtdb717mp+mqysy2M4MeFKsoW2LLF2I5A35G14Q38F+EdHRONANuXiXxg+09NB6xyolYpM1DQvFRyjdqnL8dq+u7NJvSPd4zFLdTCH9J1SITmir3bm2Lzaa5vRVNAmE79IhNYZjvEUA8z10GzQu5+R3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729368354; c=relaxed/simple;
	bh=X2w6ESdbIUWAkJlSerh+giXWqfYhlTJmCX8QZBP16Zs=;
	h=To:Subject:From:Message-Id:Date; b=WwHg1hB4eoCt9eDlEvuxKgPMuGQfoMXFrIFTBf4hJy0o/jNMXTk+p0T2IhPlvx6J3MQI/4xad1F4rwUbKPsNfJawSFgSHxT+9YoZBmJA4Gi8KTdPBAvd1GyQPY66Z7+3C2NEL5HcvFf/H9QBetUZhvMFRVF0k7wmFcITXKK3PZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsRl1Cqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsRl1Cqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED72C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729368353;
	bh=X2w6ESdbIUWAkJlSerh+giXWqfYhlTJmCX8QZBP16Zs=;
	h=To:Subject:From:Date:From;
	b=RsRl1CqrsuTNMLJ56g3GIvdwJDEtyN/TqhKbOp3XLb6muVH9Vr8Wlb1T1vvlTv/9e
	 oFOGmOOwR/f2wfInlcPiJPByOR7HRDu26VYHI/GAIFFKNX1dCprm4ELFOwXH0gcfOa
	 AZKDDyPd6A5vnm3vvlpv3XJVWbbAT8RTa45tRISppNfXc7q0IzfkZ1T/ttdyOEm9wm
	 nTJHe/FSSQM4K5PFuo0ov6gg/tmGvnmAYRD7ngq6S4tZ0eg6yKQhcMCOrEdkPty6KC
	 e5WhiGvfA5Ylzg+ylN6XHwdeiZFQHAgc/wd9+SsZjuZrHf9xfeVvNLJwNUV5xaSUq6
	 6IT5Fwsxba1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9961AD3C92C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172936835359.15447.17121587265836770811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0498d32fee5072807768e07610a5f0c6480058d9f58eb3cde268ba6995ad23
Date: Sat, 19 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729368353
