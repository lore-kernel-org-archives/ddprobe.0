Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5AD28934E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751563794; cv=none; b=MxT2FB9h/dFwyJiVAOVx/NBfgB7zAfMmRmBweOYAQCsJNMBzcgnJ8wGyIEgZw9wELqw3TS2dr6vn+5652ijQHHKENKgNWAyhUybU/K+lrSpR4c30qS83RIQwLDXCkhkkhliiLYpQArHuz7U71jXOUF+7eB9F/ZoTNShKSpzYYQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751563794; c=relaxed/simple;
	bh=VIVLatM7gZjWEyCI12xlqJTJXpGoNBk6yoQEgiVD7rY=;
	h=To:Subject:From:Message-Id:Date; b=YB5P38pvIJYmdrh12P+bzST8sO3KoG3XQUCgZP190mUBud9MjhMPAWfC4AuIK0E3d0AZOZp4k1JnbWrBiNEAW6Jlyd81+3KTzLhOsIZU07NEG1wFtBYY60lZVTm17dS/aH05UXQvJAVei0J11Bq1PTYRBVJ7CvY7g2mwakz3IOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOCLRPog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOCLRPog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751563793;
	bh=VIVLatM7gZjWEyCI12xlqJTJXpGoNBk6yoQEgiVD7rY=;
	h=To:Subject:From:Date:From;
	b=uOCLRPogKT9fiK54XMz5EG/7G88ZBxmpsbx63BosQoZpKaqrtHoiAOlIGZzlhHbXB
	 Fsr1tUvYP995GkErhBD5h8BguuMMNBGCGuZWKErcuRvvrsLeDO1ubpNbfSBM00X//y
	 6iTe9Lz1rDpyAoGjLPZ9vXoFQgnnsn4Rz0oxJQoltUzI2sLlPh7+mh1DMc5pQZvobs
	 PWYfPGEouGiAk5MZ1QtYzvOJfIQJmUol9qW8kifDFJ7SizihibylkPzFRz2JFGt2Am
	 f2AxFgnmPBcVxjX/x7HTa9aYbwDBx0hVRZyfMrYesa7CmMzBOcuASQI7RkA4UeX7SQ
	 sIVhQuvQF5YQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50FC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156379357.23304.4374848272625929469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cc781c56117dda0939c1000e97fb07c2375e6dadb2c303383fdb7b4a137c89
Date: Thu, 03 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751563793
