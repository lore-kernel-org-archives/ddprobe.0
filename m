Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778E144211F
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786390834; cv=none; b=CGuMOtIQMjBvnd07Rpzrrr9K18JLfyXTwPSm9x8xkEu/jn+4BNEhXSOQDgG1/kw3ITy8GwPQbh03Uvt82+cWUPvoOzTrrMqGvUcb3V7t6sGcXBxe38ak7ai+ojVHrmp3RiGhngrwu+foZj4BVdZUwdKkk1uu138Ig9dcdKvgAP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786390834; c=relaxed/simple;
	bh=9W4jREDCAL+YYy1HDgwROURmQ8j+hlrtQA4gAkGvr0c=;
	h=To:Subject:From:Message-Id:Date; b=fGiLB37QbSASkfIw3I1pSjSvgT4Vkp/QJlmgGJn76sVWSbfqIvOyKv7IyWlwu39Ms6opL5d24fal6a+yPeRZDPRrHSPW8GUyGdJUsa2u9fq5LsBAabDftUIocTensekO/SR7nAEden1ENkm5UKvAALve+m2OEkaUOZ4QN3pKrU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c88TbM9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c88TbM9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF704C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786390833;
	bh=9W4jREDCAL+YYy1HDgwROURmQ8j+hlrtQA4gAkGvr0c=;
	h=To:Subject:From:Date:From;
	b=c88TbM9CC3B4Wco0C9iBrENY5jAGxAVPJhaXILVSwHgny6H29DAstxfVYSapaO6tQ
	 qCVZyZMCY/bNTpR4kOtocFP59g6VRpvzpXYP43Kb3RTy2/ExkV3WtohYFiGNnS80DG
	 WwmzJqQA84ZYfbMKdhukICYYQGYoAPtMI/CvEQ63c6jXtGwqCVyqhnF56dS1BAcFSM
	 bhCpbbOXNsSWTLmXjw0sYi5PHdjd0Ng6uH86F/C1mjZTnEqPXy5O6VHNCQOe3lDpMF
	 cKf5f9QdLQJ1WOCCo0zLP9odVOdwiIDUknx4JTkzl964tHtYxiZoBETM10ufNs4faO
	 YvZtgRXzGASlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D1C5B567
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639083368.2323.9464090311166552815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67074778a8b90ad290538492470d881f1d84bae341d7f969e4bb25154328760
Date: Mon, 10 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786390833
