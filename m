Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302921F3BAC
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780232074; cv=none; b=m5KBtB8QhtfcM0S3RNo7z0jX2KOBFL4/NLiAFstJyGrbQZi1s6JJcHk+fQOkpo/acj+7b3jp3D3IVznyjBt+ANjT1Rmbojjt8l3+i1pNmPQg2oJzFEcqBbyfCogc25Jikc9oHCrIz0rKFKpgCc0453oiekcTSRa3JfEbqCS5atc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780232074; c=relaxed/simple;
	bh=mCcsPmquqATDP2+CblMy5OggexdriMAN13E7S/le9nI=;
	h=To:Subject:From:Message-Id:Date; b=UCcgS3F4fowaTl9LgOkt6A919Hq3EgFaPDfSvdzMRR8ut9QE1M6fWp9cAKDnkrGsjjLPYCHz19dxvo+Sm3gvhXQxE9p4ye2odBkoQOhBCQWB0WcywpqWsKAfLOsLOrbuFuJkaZkqfJstGOCmm2ILf4m1qZHcwnfzyESp2FBc8lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O73NhGJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O73NhGJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B82C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780232073;
	bh=mCcsPmquqATDP2+CblMy5OggexdriMAN13E7S/le9nI=;
	h=To:Subject:From:Date:From;
	b=O73NhGJX67teT8eKtuCVfBjT2CDpB6umh+ftOlpfod9PpCtoAhNFRgBSYvwy49lJf
	 s2vbI8q40F6f5NHs9ZosjGUcihTnBYC2uAwWRbMvZYItPfu99m8ksY97s5f3ZJrFJc
	 2UzYPdeKjXcj3DTEubtWTWSKKYAfHBs5H5hSjsk0Gfng4rO7pljlvyQ6unvmAmSn2M
	 YkweykmDId6klSa5d4SF/YFG68oBge3pm4RUcqsKxJcDi3t61E9wh6q86sp5cUF1dh
	 /hPbCfsqnGJX09eT3zIJozxnU6o7b1CzCnxP9JyZxkeMrCC++I3HzxHkK7Ia+znGbF
	 kAluacT/13roA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF09ECD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023207368.19835.1512461478333373993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1dea45a92a3a5a7187b87cb72e757f27b9f9e82db544291bcd8ff889f80599
Date: Sun, 31 May 2026 12:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780232073
