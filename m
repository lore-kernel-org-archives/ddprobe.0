Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136442BE05F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763754114; cv=none; b=CIPrLx3oRyFeHIEA0VyEw2WEtXobd4O7pcS4vmKOzH1Jvz7E9ltDfJJ4tvBCOD7IiEaSFpd6Jo2NJ73tRHUZ17mH/M9PQk+gnYRRhlt+54JrFCZ/MXGbcrvqHfOVIIYGMKhb1D55eX7BaypQncws7OTuEGTWSDklLkCoTQjFLWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763754114; c=relaxed/simple;
	bh=2BO0+RGVFoRMBFTbjk/Tbz/POZyfPt0g36o86f1Cj3E=;
	h=To:Subject:From:Message-Id:Date; b=FoWc17DIyScCRm5aOc4fQL4WnfY6zVTnOZBStWBXvd0dXU63JqZKdmWTWG7v5+aujl2AkfBVxRIhIqy5kt8jCaPVexCepvQ3zQG/xzMzPTbtkSR1GCKOfStg0gTfS3xRcID1d7lXIKDgb1crcaZuAJ7uvOb23SMZyQKGBTNnf1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLNvcCH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLNvcCH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA055C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763754113;
	bh=2BO0+RGVFoRMBFTbjk/Tbz/POZyfPt0g36o86f1Cj3E=;
	h=To:Subject:From:Date:From;
	b=HLNvcCH/ATMkxuqZvFl+tQIIafrZjp6Ly/cw6781X/5f3in6ZFGM81o7WuLLPtasr
	 14pv/vtBXfwLyOiW8c25Aik2U2oHPCWpLyM7FhRh9Ef0O7kgMqrWqU+mfmHE2TndkP
	 p/cHWCEE01Usq5tAcx8O8I7vZEL4GExqC6dFEI/AfNyY+8T4CbyXI4XiwFIzRLJbDA
	 /ZcRyF0x9AEPTVHyJGf49+9Hy99TVGjq4g1BCvmI/oOOe6jNzOclFba21+HL3TnrNQ
	 48WGAQwz7W5ofdwNf5q8lGYN93EovJOUEkOw+lSQFxpEyw1jXh+AJN3glVFWVsSosK
	 v6eK1b6MifS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93802CFC29F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375411359.13907.16525126881073679498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d265ef3cd7e693d0ba02f0e07a34ce12d63f65311d56337b18a976601691f85b
Date: Fri, 21 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763754113
