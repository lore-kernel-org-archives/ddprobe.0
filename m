Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BCFA944
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748060994; cv=none; b=g81bqpEplU8uZ418Rgku3yoVetnX1D4q7ii3VoP3abaWtlKIPfPk1PjcO/fPMCVTMklI6mnHVvMh51EqXZnqJwkc23hP0Q03ElFojIn8uPhgF9X6UUfJszgojgMkR2XvRq23a/kka45yiYFMYNKeJovG0WaWc0CLwJdevttlPgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748060994; c=relaxed/simple;
	bh=pHy2TRGd722YOkpROMNtkKHW68TzYxU8NkBDNYS37AA=;
	h=To:Subject:From:Message-Id:Date; b=s1f6FcBU5ZUEDWuf8t2YHg2nvgur65c9hXLieMmYNvaiK32A5BeDOtUV61xiGl1IWW5t+8zGPU2uiq7wE81v94E1ydYnfIpnewQD0mcM7z4ZKbWkdp0SF6f2n7btAIVsSRTcxgdueRiErW3m/7pvAp98r0CJB2iBFsprdTFyNSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOTF90zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOTF90zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A37C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748060993;
	bh=pHy2TRGd722YOkpROMNtkKHW68TzYxU8NkBDNYS37AA=;
	h=To:Subject:From:Date:From;
	b=AOTF90zV/P+92CWKctGO8Cbp1MoJXndu6vNN4KXe7NdJelVL5Z16OzntxR/q1zyuB
	 yLiMvRRaQhPsO+AYpdhaq5hwItx7/d3Iz7I+8OTIV+LW5f1rwC/LfLNxknerYcsX49
	 5cbvjoTwDACpcPUbxiQTocvQl/T5N5LOfL96mhCUYSHuecRFTIywnU2lItFT51kQPT
	 WdjMWzexdW+TpWzBQgJcqZCJIt1Q/RqkRVB3XkVXrkeqCATniFxjqJUl9wJPEjZnG2
	 aNX6NkI66RqPQIpqgDIcEw4iIz1ZvDg3KpXAFOIOQiM94VfEWkGzx7cmTgEYL6OIih
	 5TFLGEXcGnLsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1EC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806099358.25835.12706333295552935844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892847f4e909b9b42b5ebaca7c4dfcf38dfaac50b7cae142a98e47767792cd29
Date: Sat, 24 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748060993
