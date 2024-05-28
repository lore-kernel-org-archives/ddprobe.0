Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8EC16D4CD
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716897863; cv=none; b=azQtM16yqF/hnst5Wc6REROTx26Dlv1bMexSL7pFMLBU3M+Da8gemyPJA7L8ZuWaMS4l82m3+T5+YOOD9WuHHXSl7F/dqzwlkVBXQ8HSN/UzolcGqh5fNQ2cftrWjjtkrVf1q65OvnmmirEurV4xf0wIap5nhCKg9NcCCmQcaXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716897863; c=relaxed/simple;
	bh=Bi5wGTI7YXTF8dr6nke8fzaQuBhFmXP4frcOBCAhY9I=;
	h=To:Subject:From:Message-Id:Date; b=WJDu5d8vrdsOdvvYXOfqI5jUATMpt1xuZph9iQE79UQ9zaMwlV9bmGIPH1xSR3aX07J+0s+FE6alIumdg6z/xGcBEr8NEpNrRW+Ne8rX9RyLnKLKqZVMTqJGbpJgNMWNg/LiYq+651XEBljPLJufbSS4cbOH0r9DEXacDhOI7cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGxZUGaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGxZUGaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6749C32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716897862;
	bh=Bi5wGTI7YXTF8dr6nke8fzaQuBhFmXP4frcOBCAhY9I=;
	h=To:Subject:From:Date:From;
	b=tGxZUGaWmkBNyfJpJdkkQAfa5mJ9fLLEOfCMIJNbLtJatmVDa+rXaWl40g7XGfpgD
	 XcjYQOnn0950HYUylH/7SE00FAgSZf8RpYBaYRZOqsqfm+6CgckQ3Rxfm3g9L/C3ZZ
	 eEaeRAllvWa06dFvkgN+MK6EduoJXXj+Gy7EdsKfgNDgLsI/5NefiywvzqT43r2lP+
	 nTBl4gMr43FcETdGYc4UJRJ5Qbu0krIK8UC580LWqXA0ll/ZA3/eQYrl4NLeW7xdfR
	 e9O6/PVFFmWEuD3HC462deCRu9LothSO0LMa9KsxWR8eV8dktD15r5+K5jpvVQzsfu
	 iz4HOUPBDjl+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49EAC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689786279.1211.15897472179465884336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3a2bf8c888daf4251702a53ad73351bd8ec720573fd18e27d548388b1ed77d
Date: Tue, 28 May 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716897862
