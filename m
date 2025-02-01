Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578C2A935
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738450554; cv=none; b=AHtVHsJdVrKEhLlgGhmIuD6FDmUIZU00xUWrE0Y0inwMT4V8StgwN61hAFieJ7inWZ+2W+zIHFwN1SbSx2SHHhm2m8lLsCrGVljn2icwC0z8fobao/qvs8TSx1Ld9HpPcHCESMKe6ZT61+R3NagBDg+q4Fvs1kTtM5teTwpK+SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738450554; c=relaxed/simple;
	bh=pVhJGgkm2SYMHCOVvkLcbUBV0lECvh2AS3JJJhFTnNY=;
	h=To:Subject:From:Message-Id:Date; b=cHEijcRfHYgtqB4yGwm30Pth6nI4kooATCIUlUsT9RzcVdBfaCXoLIQH4Zt8RSEa6CFDdrrTdO6frZIN/gGihBLcAylLZFJl1JY4O3t1ZufAi+vzAyg7o/R7a2DhXjYyfCe8dg7kLyMoJGC5KqTb4UMiBpPi27h+t6KHsyqpnT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnXhTbM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnXhTbM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE335C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738450553;
	bh=pVhJGgkm2SYMHCOVvkLcbUBV0lECvh2AS3JJJhFTnNY=;
	h=To:Subject:From:Date:From;
	b=RnXhTbM2GPRMTnMsIiQFxR2FiYCxsC/GvvZqQRrYXjCylXOBC84ZDIgAoYcMGcsb6
	 svUA8DKFX3b+o46KKp1s2HwxqTYv4AX5RTUmheHMxnei7WnAhyTYWEHCEqREPwL0TV
	 EENSyiCHVsNtECnwLV+f9aOSnJRtkD02vAQyY2r+i5BlqfghpPFPfLrHDs+6rmNbE8
	 /hfpdzKxpd74rvesI4ylmfpIo8eVUM8TmIPD0f+L6k5oSjVROJVL1wizTMOSSJ/xs+
	 CajMa90wyvxIFBTmTv3jvTDNSrB7f9G/AuVWIFU8dS4pn1WO1Uz3DT72fchf0omCLf
	 LLngwTkmO5s8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A24FC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845055359.7724.11129692331095042234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219031549731db9e0b86b60fcbd87568249df4e8a8afef927b21a41b5d344ec3
Date: Sat, 01 Feb 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738450553
