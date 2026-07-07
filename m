Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F5C390C95
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783409914; cv=none; b=MpHY96DlI2e+/ktosPulNzllv5bQqHK+sud43S3fiZLlcLWK8s93cSEQXt+DIT1/C60FFP/2jswNjr97nn8nhrWROr6YmX0LF+MwzGcwqyHIDRjZcEIq3zR5I97MYNP90B9sNkGNPxV8R+qsnpRGSZGExjeIwEvkpTDGBvcDeMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783409914; c=relaxed/simple;
	bh=Y08ZM+sVD3/N59yYft3maPBOswCuqj938u/SOqGopho=;
	h=To:Subject:From:Message-Id:Date; b=QL94vAENDDEG4eWTuGO8OjurIpBd6hdPVPZCoiLF763UrQSCCxXNYHsQ90zvfwH/tnc8g06UEEtD+09SuqRQIwC+H4SezMjZ8+7tzOKyivs3hGM6Y0pwoO6HAQfcBkr9XyEHLIjCk1ofBosS9lddLFSkkhtCY82vR3Tr/CrVISo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGal2IRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGal2IRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D1FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783409913;
	bh=Y08ZM+sVD3/N59yYft3maPBOswCuqj938u/SOqGopho=;
	h=To:Subject:From:Date:From;
	b=HGal2IRh+/xAquPMr6qvE6F2RxLpSHphefehU+P/jWAXSoQBL6swFtqKf0t3aYbs9
	 kgdGeW1IM7EeUCkGsnK24k8PwbMtpvHBgaFQK6d4eDTxL6bRP1ZUOpGij3hpqLq6at
	 4nZfzBZZXPdfuomWYeS/QsOXtOuYofPy0RRkIp8CUIncGJ+TcQll6dxfbFsL/YpLgB
	 lg6ULWQR5q0Q+KwpIrcKmJda4V8Rxve6EA1TBqISFp7bMfMxwavW8c5yg+gtb+QVSa
	 NLlSrq0l1i0RWCoLSKmM0V9mwVkPWC0Q0kfdjvNHJsPl0psQxij27XMw6Viwoo0l7n
	 s0ST/2LwGPqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B0C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340991370.18145.8246316935314975633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6380b8f54c0d06ba62d98acdf6146e8152bb072133abd02710cb23548a4d22ea
Date: Tue, 07 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783409913
