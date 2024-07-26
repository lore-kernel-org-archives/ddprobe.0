Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE584430
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722017754; cv=none; b=sS6AYSadoG84yj4uyI/fc9deRisPoNWKs/6xiIpPD5zbZMy/+XL1k0E36Mafu6fUJspRrtEyvVEAuTNh+2e+1Q9mY9Odtp591pP+BbHpku5VnUJAk4Pxq+ktPB0ujMptMAfK8n2YvOtR/mFrlHKcRwOao+KBW3lLtqajjMqlhIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722017754; c=relaxed/simple;
	bh=fq6uTYpV5OKUDUfCiw179TvfsMnRnT3mFNm5FPuwdiE=;
	h=To:Subject:From:Message-Id:Date; b=BgAvW58u7xnJkx0Hy1I4XmdToCmw+hPiudTws2H2Veekqz0QwC2VlikYMAORqc/rOJNMqdzv3432XPbSCdP+S416eO6oGDQMakwW199iZFEJkbOfPwaVjki3AthRzApMoq6JjTW6qZVa3aeFXYTUcq6XKhI0BRr7zKzu15Uu7Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXXxXgoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXXxXgoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1533C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722017753;
	bh=fq6uTYpV5OKUDUfCiw179TvfsMnRnT3mFNm5FPuwdiE=;
	h=To:Subject:From:Date:From;
	b=LXXxXgoLHz+ojhEcDnyV8Ckq73Pu4K5g+3f7PmB79uT6mC/gqgj91w6nlc9uHdTQ2
	 or7L8uVTapixVWbRbvw1nDnAWcsjDShLDU3lM5fGbjt+HyFtFq3GPs1d+CdGmne1ur
	 zarGUAxuC4/QhKCfL1E1dTERzPt3hRgHvdRh1euL2TJfTuuCroSXuRvh2Vg0c4ImmU
	 jro+n7zQX+ECpgSfpViW73oxXDHp7qbaN87aojopSUvnHDixkGdUYKA/Swo/7gqQlZ
	 ocKMxwDOvbwAV1gosVoNQ10biwGSTCHlDsGhY08JbsLDCQ63tCo04f+UIvCEUZ/lst
	 4YLRmgvqWBy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF18C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201775363.22119.8141533853022277617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8216381b6f4056b73355767ceee6b28c132168776742c317d1db7dc20c0115d9
Date: Fri, 26 Jul 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722017753
