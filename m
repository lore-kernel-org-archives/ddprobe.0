Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7F048C3EF
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790159434; cv=none; b=JYvyZpSM2e/IAF8tSRVp36KEl9LliEDxcNGrYAVKCV4NTTuuCxjKB5Vu5VOKPoq5ua8h4YaG089AYx2MRvmgp9kwQnuPY830mXN7+FwEsBbVz30I2OTlU8NYmmj41XgsfZYui8BoLARoTIlwz/OstGExAC7Y1uF9iE5rN8DGfV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790159434; c=relaxed/simple;
	bh=x8yz45ROdhH3/NfpgW+8qAQGWQXsHDllv+kh/Z69jXA=;
	h=To:Subject:From:Message-Id:Date; b=VuJNJUSfrJJ/hl/yxYa+AvutL2LMrrwDMZDIiO5g2qh+9DLF+MLwGOgg/M+CQN+w51Mi6HkDIwqyo6c8iACDiDq3T6cVgKCcCEg25QPddP6Cn01K6Yvbf/Jry3XLqywNBvaADOZJcZwp6adFPrPB/jkKku6xhfvsrBPFydVLNhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyFKw6v2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyFKw6v2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B80C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790159433;
	bh=x8yz45ROdhH3/NfpgW+8qAQGWQXsHDllv+kh/Z69jXA=;
	h=To:Subject:From:Date:From;
	b=IyFKw6v2cVJRw1BLxE7i4V5dgbu1emjK3DjBNQwZvIkYKtcJ6/8lRVcAJPxvtIqg2
	 SRFUMa3J+o+dmzW23xPYmRsGqbzfas2ctEtbrmKLnZFzD7j0sRN+0UZ/H2u8fAdcRW
	 ubqn002GtITLkvzOBliq1aOwP6DiMrEyf2rxy6k70AOO75VLwgRTpFzstPf3wiZQzM
	 W/Z/IVrcZGx5N/Slhw8WFzSNgJNN0dbziJcakSv+tr0tQmjj4w0BPEwqZEZk9fYwN5
	 o2d4LZqx6DBh8TUOMdvSEPllfkuNKDCqYlVfLExe4R3Dwl64hOdNbis84LG1TgqDze
	 i3Nv62klUn//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D75C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015943371.9907.14609389146415880061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1312f7210e809e0547e07938c51c0c7ac2dd7295af5708b6ea04ce38c455080
Date: Wed, 23 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790159433
