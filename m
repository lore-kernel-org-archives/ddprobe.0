Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2415735A948
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770900294; cv=none; b=GQfj0784F0bFWBEZgGHuBmKj3WtCnhrfEmsDO3XvYL4a4THdqRD7z6EgRavJeX7DM6qCFaESZyqqzOCNotyvKqEpaj6QF4hNcSMoMyPtcbipG/nj/If/cCX4KsroBaT4JOafKQc/4RT5HLLq02hgDd4g0zYAW3GjKj7+qqSHnFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770900294; c=relaxed/simple;
	bh=uCRaE3U8KCpuZVlf9MgfSSAw8lWozRWBLH14lyidjJA=;
	h=To:Subject:From:Message-Id:Date; b=GGQSZK7aL3V2FZnXB3s5S23wNLyU4xH/NL+CbR5PJb8Stexv2gopBYa5EgDFV36ICaUeGiAmfFz1dKCrjZ5MqoBHJf1+vts5ORk9cNNmdndwalGEt2UnX6MEYlTYQPfBMCxyJR2XB0caTEMNWFo5kQW19pd6JjVNAnAFw2h61qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyQ5b5lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyQ5b5lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE4BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770900293;
	bh=uCRaE3U8KCpuZVlf9MgfSSAw8lWozRWBLH14lyidjJA=;
	h=To:Subject:From:Date:From;
	b=OyQ5b5lxLorZ9+eTTWSdKisAyzl4OiC7vsdCLaMQ0jLh1KDCocp/SiBlJ6qF1s0dO
	 Pzl9pfxypqDmxulTAxvYmrsv/fJVW+MLY9PTWxVyQS5ZkwkBvtq/hAPpWaawKK2p4I
	 Dyp8NHeo0AbAujq37X/473xFaVBNmVx7blTEFPcdWesK3qC09uTeAFxVtcrs2XEJkl
	 G5ESjFCKCsIrRJZ9mhA/k7r/3GZxkPd0p6pxDGCyKEcZHTFtQBunDmjooiyDTysRK9
	 dEPAyDBEObMcj+5N+E97juwwr59xeiQz9NI9PhZ0kARLrmXk5YXPh6/ALh/rdOGkt7
	 B9uBlEh12p0+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E9EB491B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090029359.13971.17242754605795504154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b451326b135a92c77f7af08f6414122ffd94bd83c309a55ca531fd575acd3a
Date: Thu, 12 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770900293
