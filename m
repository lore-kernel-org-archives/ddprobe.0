Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478633EBF35
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770836694; cv=none; b=tXEjKqNMq797vqeScaTAIq+xXJv18DpJQQ6okHZZsX168nArO1GyNv4ow2FH71T521M5L5i6ezn63XSuroKyyq5m17zUHOwTbCO/r3QZ/KQFJ7TZNDzWSYyfjLZVpgrQpL6nrPHpGzFYqdQwvARZWKL9rA4nTABvKm61fJBgjQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770836694; c=relaxed/simple;
	bh=zLMBFTe/DNflt8T9a2sT48FXZXOl/ujjVTx1SZqC/sw=;
	h=To:Subject:From:Message-Id:Date; b=hFKdzfuO2ARkIVLm2CHhkXVIddJaCc001xQV6TKKc0eNRel9HThjXAlz24lnqeDqL9kVusV1/pKchqFDsV4tYMajVoZRGTfl9UpFT07CsKgX3dKM8B3O2LDEj7MjAGsoj9EO/wwQNN780vE8kfWB8N9miAWjvImsWnAw+2BJMCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILJmd59U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILJmd59U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6F2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770836693;
	bh=zLMBFTe/DNflt8T9a2sT48FXZXOl/ujjVTx1SZqC/sw=;
	h=To:Subject:From:Date:From;
	b=ILJmd59UoflTOtiQ2SutfTSvkmo63CG+IkyoRDNKk9MUk/SQWicvvGdf452/C6nxm
	 O7FdWPNBZOd5Pa3ZED+6mDMBvEB9gfML/A7AOD1+YwZ9/7rLConkh+z0RyWiFSVj66
	 fwjCLEjIYph9Ctme3x8JjPW8gdCExxA3uKHhVC9dDOA0X7eccdugjN/ASn36P2rs7b
	 JZvzI8CpXfZePrPXHCYSF6gGx/AsFd5IsLF/2GtCg/bTtx4dz3m3sDGnba4sqRO4O+
	 tXBu+Bx0wasRGA9Epg0HBpjJ82hEDPOoFYaqE35izpa/Hhe4GmF3L+2RI+tmnbnfoy
	 0gTuWVupv+Mjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A2BECD6E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083669364.24121.9409603800501428260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07adc2cff6e5b01a5f27794d1426a00c1351afb4c8aff7e5b6369ee46e7f3b4d
Date: Wed, 11 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770836693
