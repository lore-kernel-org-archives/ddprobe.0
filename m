Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2155F35961
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753060194; cv=none; b=s2BGLK/gUJ3iYmDNsrZ35NHjslLo/GIOXySAlyxY4VKRNbJcgseku279LsCEJpMkp7Qdzia3IWfRrQsfdNVsCh8eUgw5mpO0D9sdtOJtM1+VcpCyvIdr+ktpXP2BobBRZKeDfWF0o44hJXG0XDAYev+Eth8PZ1i0nBo3v41/ci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753060194; c=relaxed/simple;
	bh=D0OQBZSmLV4EFXcgTLwanmQD+XoKgaG0nxhE6IlBd5c=;
	h=To:Subject:From:Message-Id:Date; b=Sh2PMZ9N36X7ps1dBIHx//eIe4YIGJjlxrvbpv+nDhsSgk11JTr0yP2tlV9a92l1QCyf+Svsrv1qGnvqW5zaPoFYkPTnO2SQDAm2y2aWD5dffV2E9VcnfE5gKdX37fW7fe7MDHCLvwcgJdUhfeLzF/X/OOYD+lILFuiNoMTzS3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKQX/GuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKQX/GuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0096C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753060193;
	bh=D0OQBZSmLV4EFXcgTLwanmQD+XoKgaG0nxhE6IlBd5c=;
	h=To:Subject:From:Date:From;
	b=cKQX/GuBYiJp8gSDOTFeQ7yGdDKZSmCgTLUOvzF/Y4jBxeOSHFW3eEjkTcuRJ786l
	 /OEVQC960RYD/XaddBGFun+ZEJi7+mRmx4I2BLsmCUZ0LyxdsXnmVi3Vm5bF3oOcc8
	 rg67pSe6f/7haQyQ3rR8tdTMmV/fSUubzXvlOylurEy56Etzrrj794fqiX16u4wo7U
	 Ye+pvZGGk6PQatIlZN7qpDoYCpIT0j6Me41e1bS7cOGW21Z6NDuG3H+lPGgeeIpQZf
	 CX3cWIf0rYaYad9gjOvzr01UBF0s5XgXgzxaNgyhHpWLDLaX58upSny0KfzEtmPmo7
	 BiCgyycuHrdhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E674C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306019357.20424.11784559023921519677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f260056e16c52566e3b19884edaab30aaa24bf6476e9b79b4d850c948c38f285
Date: Mon, 21 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753060193
