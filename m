Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD3C5FDA6
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713604223; cv=none; b=Tl4D6CoLRZtCVMqbyxTdIW+gHar8E34F2qkn4TpXun6t9tqH+gjiaHZS3d97oSO5FXXTMzZaLI7qLRnCiJ4ZPXbkHKlSIOTOpSDpac2oHWW+kTXvQyiZPvk3KGrp9yBfTUIim8Pd3hUsfDz7rf96DXLj4vvzbJ8RlOoAdrwEIAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713604223; c=relaxed/simple;
	bh=kNj/AgLTFwdRen3NS622KcUjk1wi7TtwHQ0HRrI/9tM=;
	h=To:Subject:From:Message-Id:Date; b=uGyDXOVgsmGZxLcnG9MjxH15owRNihfasorSPAGqkhNTbxoMr+0WsVCCaI9oB1neOsjVZ4HDNVCFfpS7dHVxRyO1UN8iIinjrszjG961o5vIFOQccZnWAic9gP8Mre0Bhl8W+YVpMC05P5RFgGIpA4ihfCGkUO6rs6TvIeblXz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEGspp75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEGspp75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B6AC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713604222;
	bh=kNj/AgLTFwdRen3NS622KcUjk1wi7TtwHQ0HRrI/9tM=;
	h=To:Subject:From:Date:From;
	b=nEGspp75guO5qxZ4k1PYrsMFznxFEGUqNCBwqTzRbR+fzUu7N8l2zyyYe10agOIwT
	 Oig5OaIuabGRDRp7tFHGR2B5PiG3j6MzemGfRyS3FJ9G07DQMHdbLdVEURUizJ+6HC
	 Df+gPC3Dp/3QxheDpMkhJfLpU08OfsKwpkRoqe/R/1PwxEMoRwgaZFr1j0IVykpnlX
	 81p8SCnewQ82NBvV0CxcliZ65kp8hiMGsYsIsinjb8RnRM92dVvmDBiwbsjmbNIRgI
	 jNeQsKybwwGx39z4muX+AcNF/Pzq5m4Hlx+KkeJbmekxIyMNev1AiXavYcovPwYU34
	 QK/3wPPLr+M7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDFCC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360422280.18493.7756901409186342650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfdd684a2881a4b0dfc549f84ee1f729a0fb2d5d2443326d43b8dc12d99a6d3d
Date: Sat, 20 Apr 2024 09:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713604222
