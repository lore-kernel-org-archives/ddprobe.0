Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A6013A258
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784483314; cv=none; b=Dk/MzCACY5GqF7tc71fdpBwoDGPEsUgmjDgM14GIqeTDQj1K6woteFSWvXkzWK1KCGPSzJRvtdvpZ2hS2eoMP04snDqEsrEl5J6B5Ur++HC/wMkmERTlW8ivw5h0gsWEGmWym0hUk0wDxSISd01XEld+mlmUOoeMfMaGYTWCPDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784483314; c=relaxed/simple;
	bh=3d2x4w04N0qL/lemrvH5hImgKxMzkEij4sgmNb8PZ0M=;
	h=To:Subject:From:Message-Id:Date; b=ceFq62MaXYk7HQQ0spPbkial2bx0mjgUfn1bH7wD/ooomMmAjDO5SHjhG4dIzubUMr2hyWpF0pMkMqiYwC6sihMtNZYUJ+720jeZr766CIT5PvN+qt9hzYWLOFsGIxdYaM5lhh8XhWmzftphveO6xJwVkzvQS0zCDFqgMWWGo0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUlAyXk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUlAyXk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62A7C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784483313;
	bh=3d2x4w04N0qL/lemrvH5hImgKxMzkEij4sgmNb8PZ0M=;
	h=To:Subject:From:Date:From;
	b=VUlAyXk7Z/4M+jdubMgxhnBa5afqC7iTc2F0QMRNSAW71YhA1/HHPuhiHSdsK6NkI
	 keCbtu9NpDZPpRNizazfb9a6213gLFDZ4sM3pSVeXSVkuoeDmxHHS6ii+ZyduRjH7N
	 NI2X2ZhoBLQVLbR6yCX9mLBhTK+7lqw8Kd7DMRijwFnK0bGKi6RIbwaU/FfVrcd+5q
	 E6A+F7k+rAKviD0VSunN7FC7wtF7YA1vzm4/DTjoKNrwzr7FKv6KNl84WKCkfzDSmF
	 krKNsUc8SsX1qW3aeK3ICfbO3lpzX4Tvlwlzl6hI1EwPf1zHYi9/TLKA5MzKX7QtPB
	 F2Jmp/DqtRtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF09C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448331368.26175.15673267701452369765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64acd228e6f62015c1e9861d2debdde39498929f4641325e6e2cc55d335ff270
Date: Sun, 19 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784483313
