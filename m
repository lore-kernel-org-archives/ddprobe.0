Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6562F5A
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745108994; cv=none; b=a3rJHFo1QC324El5QzVYOwhqlZLrkYD03fWkpOLNULPuCpNW4CADI+1z1MXwFDKY2KwvB7KLUHqTP5UsA/pTV6iOuFpNzftkOf3a29IqpzZGpKKtCeEyXNIHR6S7q7d4RXHi77KZudWyiH+LRDhNlTJbXB7qPdQHbGKQiDZQurI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745108994; c=relaxed/simple;
	bh=Cb1siwYRj/IjC/hUFK9MRVNU59d0uYRS2kczVVc43C4=;
	h=To:Subject:From:Message-Id:Date; b=Ncow/z9Vy6UQCwlu84kNP+wzQin1hroizYZY8YTWiU4gxtQv4xAuwYs9+YIkXqBBRCKg+k+EGQw0QGSJDpomTiSbpgpjcBrWyJ/N8mMXoyS/n/Bt5g1NxNPuQmfycdNAf3LoztSZBw9eQ33GCs4p78G8Mc6JMqDWJtOjHsbSoGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXZQ3iCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXZQ3iCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D94C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745108993;
	bh=Cb1siwYRj/IjC/hUFK9MRVNU59d0uYRS2kczVVc43C4=;
	h=To:Subject:From:Date:From;
	b=LXZQ3iCdb+51Be7SbqIG+3BJxQEmMMyXrOrbQmxsBKW9hKKBTFRuvW63fgpfgbSDq
	 DC/MSSmvmMVt+vZIgkOwuCp/MuRFTLKhy5PVpj+9fWjDCR8hf93+sFHfZ0H+z+8Mub
	 ECvxNLbB8Qpix5iLIjj42Hv+835Q0QNiTysnzJs/uRMheVtEc7TINsluYKZWSLdDWO
	 +amFMJfaAV6ga+EsX+q5LYeG6EBhBojRKbdlTv6NoP2/MKs1rE0zIIkDaQSY7/YeKp
	 8dM+mhNtDksWdFta0AJDaM2+fnVDBgi7yLF7G/7iYbdieBdX9JOUUGlGcwqZS72TDj
	 Jl8Tmpb5ihzxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF5C369C9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510899358.9782.3473078778540280450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59704d7618a68fa9f36f3c67680fc189ed5390628086f985ac4a628694e0393b
Date: Sun, 20 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745108993
