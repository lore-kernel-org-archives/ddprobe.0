Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A15B1F5617
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750709394; cv=none; b=eBY1tFi3nSPWiNHL2W8GRDnalH47+hi9crSVh+Gv8TBb+SkysWcDmOa/o3r+mvrm5I6FBSCTljtnV+3i5JmGt/NQUJx+N17IXmQpyabB73c2jnXGaNuXThUs2WgvtwYTtI2ne4F+wudJjvJdf2xTTywrtzyJjL4HTok0QdWTkhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750709394; c=relaxed/simple;
	bh=sAzkhSgPnxKUPkW6/PHjJEdt62tibqGzFg90rzyUsQo=;
	h=To:Subject:From:Message-Id:Date; b=NQdXyaq2Q2QW3ZccaVZ1N1bp5YXHHFkgB66s7K/aeVlgTMN/XUogkpZgtcPtQijytAYZHZQWSOMBtNVGaOjBZPkdCnFh9zxIm/rIjX06rxKQXWlzeTVFuMmlmqsMAeCTsEJmzOSqImtj0VQLwN+PRh93l6AHiUm+8CWbgTVrgRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCm5T6US; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCm5T6US"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16FFC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750709393;
	bh=sAzkhSgPnxKUPkW6/PHjJEdt62tibqGzFg90rzyUsQo=;
	h=To:Subject:From:Date:From;
	b=nCm5T6US7W1e/f8yEdOQv9Ei/ki3D6DMNcBsqoZiKr8VAzB6i2Q3bQGE32inWMarq
	 yBgmc4078vGS3GJP91nATX+LrerQY12Y4emT6vpvmgtQWd6OPqjsCh74a9oTvB9N0Z
	 2nMRVBM7cZ9VRiKd2yRwF1XoqvVDGTXZqzNRSumSl51QdicCNg52bP6yJVZF6oEQd1
	 9zy/i1DELZk1lIzXA94CzF+ouBoFYyYrKOMveB+os/O0ah2sXCI38ChlJsaEmf74xG
	 nfBDFA5pWbFqmU/R/qagwZjN5WIi8A8EzTaKtSp/Jug6G8M/RuCQXm1MKzSZUQxQbo
	 zy2ZTI+OpD2+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DBC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070939359.6066.3047985197547523962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec8bdfe54bcf5a11b94cee7af239c8d9edf4095c1a4a3b1629a734caa4a84be
Date: Mon, 23 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750709393
