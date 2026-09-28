Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FA42A1BF
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790562034; cv=none; b=YWneAYm4qCBs2//UqU3Is7A+Ph7lVw2sWGFQ8Vs59sbI46QBfYvSUJtDO2fM+w+mqfKb3tVBeOZj3OVRiM5jud4G7MBQYScbgrO3ryT0r7YZNpG5ggo2rTaX888Vtv8gkCZInQ9Md9kA0snWswFC31hR+z5I8fKAWpdHVG8g7WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790562034; c=relaxed/simple;
	bh=5Cx49tZIslIBKu721r/ut8Tx1iies2Y48CGNBOHz8B4=;
	h=To:Subject:From:Message-Id:Date; b=fAtxXokbTj+1L08fMpt51S6PmIzUF41cGpWbk0N2mFuYIH/1sJx5TSDO1nc5ibodwFHvOKDs6zSdxiYAhJ04t8ClQWMaM+6cl9hTlL+K+dQS42YXvsYNBKKNUqBZ22ArNXgryjYgWtNmHRdf1PyKJrjD3qvI5/d9/Z0VYox0+j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXSdcKwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXSdcKwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E84C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790562033;
	bh=5Cx49tZIslIBKu721r/ut8Tx1iies2Y48CGNBOHz8B4=;
	h=To:Subject:From:Date:From;
	b=NXSdcKwY12OaQjRM27/0L6vYci0G/s1C7wl/XohPeTnTWUPbJEOlrUuz3TvCvt5T+
	 HWHe/ryy9g39L/ALGzTd3fktGXA6O/h3FhXjb9oU3mTVfXpNZHxMzNMQB/UpVdJX6K
	 U784ygGmpSDEysWD1zHVfGOz3e+b9vmcOfn7avCYEy+68S+fQhtXFXqO0D5ifZc3J7
	 2MeNh2xzYWjRoMAMfFerp2vVb/azf6UmUEnSsj4vQwOojriuTx5+WdR5zdiaN27M+u
	 s3CGYxul2IaGz2PpdJl3nXTHCGCPVo6tIeS5eWd3x37Jak1+wL9AItCdNgZbwOPVG9
	 4vAZ1bL49pB6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52E2C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056203370.3749.1074536941113190303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa851e924fd7cee9a811dd990c7a10094c3d51045c85a2b9e285eaa23e96a589
Date: Mon, 28 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790562033
