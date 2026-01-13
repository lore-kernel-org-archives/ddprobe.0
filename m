Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4C938E107
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302234; cv=none; b=j/FQORrFuMbJa9BeZO0+yOdJ8Qy3/6nWRP9ymWhNNR4ukYAgFAGFnyeXLUjkHu1Jt+6OQSjeHPgUs+IBmQKSBa8BA1o2GWKSIZBGIzLs+GlHKML7jK1rHbO6k7WNoTaBfwEpyxg8lSgIghQodkz7bQA2jx+69SATiQ+tMzwk5yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302234; c=relaxed/simple;
	bh=5V0VOFxnGv5ShufsAdE/GuIzB+bjJileZAeg2rnbL+g=;
	h=To:Subject:From:Message-Id:Date; b=A60GLySbUzJDtF6vU235dnFuRwepmy69/0r5SbhmB80DOcoevxw3xaOdB2wPQ4EQAa1UyrtDVFCijALbuqyelWS+vgDAST9cYrBOCOen7HV65uZw3RgILI6rj62k7jKM9p+WU9Xbl/CooNjGVxCp7nErxWh73PkSMv+Gknl3fuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Srt3geGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Srt3geGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5BDC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768302233;
	bh=5V0VOFxnGv5ShufsAdE/GuIzB+bjJileZAeg2rnbL+g=;
	h=To:Subject:From:Date:From;
	b=Srt3geGMIGAAq5YaTKLEuzIaj1lWziKNit5L3VqfIUNOxHsnZoEIgW7uuZMyUMLBV
	 t4uCst9PW4rp12mpGGqUs/bSzLl4XO2HkS4GYchllCuXtV4XlJIHt4WddEfN3rYvHe
	 n4U5hQEWpJGGnrA96orA/BAtJB+aTh/21a8xaoRTOAJpprxEHNLpCfxA5tFL7qBShj
	 jl3IP2qwXByeum01rLy/GhjqpT0ddmGUPMyiUEIjKoVe6pOdw3KhFrA/H3RW89zGvV
	 Ax64qehhYnfEMSGOGNkGEfGPjyByQD+rrYi0caRW2jLt9mbrBe8IXqQx+K6Jwm1Qj7
	 hYPFDjrZqxcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FFD0C852
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830223358.6180.17052761201866260058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae07ae15ded72d41e7daa3556a1f0e3d99976eb0789551b2680d53dc1313a14
Date: Tue, 13 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768302233
