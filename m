Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3249C22688B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747378194; cv=none; b=mWSEDz9RuF2ZC9sd68A1ny611UtAfRmYjbTYAjLHEWXjaAKZqC8R604fpX1btl2z/rJOkybweyy5CcmuRmhyLQGA4Ff1WWnxQafyCn1E4sqInRcEDcqRSE2aGZGgwqfabe+P2dJHc9Q+hmX9W/IFunef59YmT2qke9vXYHkG+9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747378194; c=relaxed/simple;
	bh=b+MioKc0z3r4N+PpNPHZNfjwzQxJvEq1SpOmauoz1Kc=;
	h=To:Subject:From:Message-Id:Date; b=Y02T+hY99KQl+cYWtpUixVVhTloGy1/RRkN7FeeVhcf9F+HWaxPWbJ0pAdYMpclwtS1ZoYnS2tff35XZQ/Ag+weWu0DQw2rwNUYDy+wUcPh9QI9DJG8nG/nrZLokPmITZM5/xC8Vz+YN6QxLUOENFJGoOCNFWdy0eiK1MGdTxHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLlw+6/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLlw+6/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F8C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747378193;
	bh=b+MioKc0z3r4N+PpNPHZNfjwzQxJvEq1SpOmauoz1Kc=;
	h=To:Subject:From:Date:From;
	b=qLlw+6/xOx2m5iKKmEtmKzGhALbL+U+paRzgOdoTwuWeG9rIciw7iX2d62iXsIEF/
	 LgIHjmdqqLFITzq1W2k09wG0y9XPzIPuST4r7ZuMrzzRAsl1c2LNhmzB4X1IGtDMl6
	 Xzt2nqVyp42unNOti8UYhb0SzobsxfZZ2f0CzEO2en+o9O6Wcf2dW0gxbwedwrynEJ
	 ffszGPYNn6o8mPhYVgedmB9OUOg1T+SoZrnHPAscfNLeFy+Wz58vPevcj+RgW0vkep
	 YCa7lac6MyGdIqjBTP7BmpU1+weaFEQN9SPZzhAAo5UqaKJf1W6yVMPlNd3t1SyjRv
	 O+Ru2Jq/YlNBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A1C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737819357.14585.1347176092097283466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d684636ef26a274c61a34c8fb925ff38d287f588a3c42bc25b6f2ed8e5e2aa0
Date: Fri, 16 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747378193
