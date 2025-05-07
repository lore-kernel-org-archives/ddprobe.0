Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233B821420C
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746614394; cv=none; b=LXo3gMHMMUOS4bM0VQUdA2rf9084jMAMEEqxbFOwv8e13EODCA9iAwStRXOSIXIz6A4KKHpdI8qLKcHuXxkMIehRL/grrrPhqZyDwVgx9A2eMvrpRXEVA21MyEM7AmGCU63IdrUACY16CyIwSGl2b6dQVfQtxUE7SQWdYpK9itU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746614394; c=relaxed/simple;
	bh=WEM5NfsIi+6gBV18RVSBoggBRtKXqXrGGBb9Yb9gHNs=;
	h=To:Subject:From:Message-Id:Date; b=NhrlzKmQC+vNFcY+fJy8m+mtcstnMTTS8ldO2bmxLMUzdGTbkOllhvtjIYL2CvZ3x9AscSuhct5uPVCV4bEXqIQne98qswdNQUtPJdRs4n/NIX6/cJnsxgW9f7BniIe3LLYOrZ390LZ1nGXAemVOHVqz1u/TcSPSptcT3jy51mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od9Deknm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od9Deknm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB52C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746614393;
	bh=WEM5NfsIi+6gBV18RVSBoggBRtKXqXrGGBb9Yb9gHNs=;
	h=To:Subject:From:Date:From;
	b=Od9Deknm5o+Rwor8tehuJcq99dM9o1izX08cqsjCz1bQkPrXIksBHrREulfYlRFoz
	 TmdhGCYiLqQTfwk5QPE2fCxIjN73d/KVFHmVvQjZ5sKV/QA0sABN98U9v0i4jm45GF
	 PJDUoaGsi1L3LN8aU4mdUXARpMQjfsAb9p86DJeGgXvnZj/XF8n3ULvWAkQd297PCE
	 RCQVcaAExNRCjWwOVkHwZEm9U4wxA54rQ4o7RrHiclBSZt2T9RGnO/IVgyJtwp3cFe
	 6RLLiFMmDHL/82SMB9UUrAaE6dnI2FFhQx5indY8CgbwkQDofDTe5Uro390z911MIR
	 Oa2TKVWy+PvUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E578C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661439357.13386.14071620970098455552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3005e337bb0a3af58868f87675a11eb5b3fad82d69e0bf444488a27e981353f1
Date: Wed, 07 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746614393
