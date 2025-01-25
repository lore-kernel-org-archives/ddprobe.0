Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543087082A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737835554; cv=none; b=rBNx9Q3ZdrLPVgWARE67blKaijpsTMuJpZIK6Au4WY8EhCW+pMjFA4FHlA2q5KPTYeME0bUjetqFjv5Q3bF9dJbqB/nEDYT4qJm7lU/eb75YtbSgDOamHZGmBYBYSpYNfokrEpZLey1gRODzyxSqSTTvIXiK7Wm57SuV6bOAges=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737835554; c=relaxed/simple;
	bh=EoOjdJRaPGWMM3uQR/xNCrGf86TyI1Y7A17WnvlnVGY=;
	h=To:Subject:From:Message-Id:Date; b=HXJxDKS0gs9T044xGxWZBFaQxFCLKh3FNkVTmWKiZfmm0MyL1pFxQ/MJSQ8V9kpCMrDijTg+OkWnHq4tRDcZ/AzjZ/jOHOs5bW9T0RbMUJM9SH3k3pZzUDQNDHiLzjIttIv0vzn2sKbP9UAK3n7kn5uqI6dozJv/+kWBJspTrmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTrQZxZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTrQZxZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C21C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737835553;
	bh=EoOjdJRaPGWMM3uQR/xNCrGf86TyI1Y7A17WnvlnVGY=;
	h=To:Subject:From:Date:From;
	b=fTrQZxZLPCzVCSOEy5T0AKSdPrUWkwaAaBeVpjR4Hr+D7ZEfjLCkMFhJ1kWslDP+f
	 XvE4JxDDnmd/ULn50OQM5CvbU1VaJzI5o2seLUEtwHkpLvlA5fHRQRHznCZ/ro2rc7
	 7CWiGFcVAk/romNJug6PZD9w4Wd5jJFJbsi1kk1Ko76Yre4IHYSA/xSKWWwz5/M0ao
	 qbMcZB80Uy9pw3jh5rvAGJosVSWw5dEsjKCVw/AgjGdhgZsDy+bEovg0vb5av2+oFj
	 sZz1Cy0v7GHhVfrmBhKk+FqXonlM07Fuz8Or7Tmqr8UYD+Ou/tyCQShSSCyato6tAQ
	 ZrKbhYekOsIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F732C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783555357.6953.17693444523816879720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbe35b4e9a1a78cd29d33eb3f3b3bda0d62efd95c92ffc65fe753559a03c80a
Date: Sat, 25 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737835553
