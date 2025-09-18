Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A0D3112DD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758210594; cv=none; b=tQhysKKT4p3OlFhOjBlxR+FTCfU7aMWXb1QHirNdDcdmeKPzo7bUuy4mll3BkgQM2xpI2t/f65UkmYMjKZ9gwZSetrGLroRYlUX/6FNvaDnMpeaWJTN24HtXKVdJjsi1UZRzWH2QEOCEs76kVB1n09cROx9IlVfwwvhvSHu49bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758210594; c=relaxed/simple;
	bh=KZFRMNNpnwWG78jxZHbHTTKCjxc6ZPssF0nPT4GrTi0=;
	h=To:Subject:From:Message-Id:Date; b=Fv7bG8G0jRiW4HgNcZtHB5c6nwH5RP8/1Sig2FArtG+7WdEfZyDaRprCGVABXgqWjGsq9LZjn0umJGznYqrkg2zFWX/lvOknzHxCKCLJgFqTOtYXg6p5O3dKiKgk2b29NVAnndNIdYtJCX8rQNALspofKQYODoj8COVyW1usQDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9cQXokD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9cQXokD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3094C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758210593;
	bh=KZFRMNNpnwWG78jxZHbHTTKCjxc6ZPssF0nPT4GrTi0=;
	h=To:Subject:From:Date:From;
	b=a9cQXokDoNDnzvXurKdoYgcmh6BrWNtqzFsH8AnAOOneRRPeOVwaP57JukMNzl61M
	 +Q7FUEdL3dr/9KcQDu0xsd83qjG4i9haLdRv7tuX8KLJsRYDLsSULfi14nL4c+XP7v
	 qmLnr8krXvTL3Uh7zWkddViHdhTRp6mrJKqmADL7Rja+a3dwaxDAoEOW0Sae3Y8HdQ
	 Tzc5cOn3K8ad2R7/qvRgnu7+sOHLppLwz/dVt1OXqKOhUzqXowP/2zELGy15h8dvP8
	 GOANdydkHEMZuCGXFmjmnutu3RRS7JyYSGNUdFGMFpOK8UHa3/Wmd1bYBND+zN91et
	 W7rvRVZOEWRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DBCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821059358.14352.12095018372239702109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2934512bce6352eb39245b25b53d3189f730cd3e84d7fe41091c3e8c377a63c
Date: Thu, 18 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758210593
