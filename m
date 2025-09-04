Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226B823507B
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757030394; cv=none; b=LAN8e9OYemfhJRW0vHXZ9cIIn3zFSyjHCJx4Dik7iQa7v59388LDPjKndLrEOJVpryV4yEgkOttriKUrSRbBIJ0IvdFhJCfT5KKsNrh6zKMFvpVHd5ALqfPGR3+A/QEgxKR0rLsbInWHmJkveQu/An0Sf3xGBt12ZeHmLsQTjjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757030394; c=relaxed/simple;
	bh=6t+33Z5Eb82Ti3H46WG71sNwyLIoWWZyOGCCiEiRrAs=;
	h=To:Subject:From:Message-Id:Date; b=Q7s0luoZaq9gLfWrm1FU8jMHEk33PfUsu9ffl+vJx2g8i5Mov33tnla7twVpTjXXJzPGl2zAzc9u6WCAQ1eR1u3ZhViG48fjGb7hYiPAIGgt2szrmuYDNeleD+g9Fo0l7/GnSn9OXUmitSDo9puY4Jj5D8R/qRSw/haShvDcRfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXejXcJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXejXcJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5DFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757030393;
	bh=6t+33Z5Eb82Ti3H46WG71sNwyLIoWWZyOGCCiEiRrAs=;
	h=To:Subject:From:Date:From;
	b=VXejXcJQBxIB9krx4TyOEuKhCnQlNrqN0oltOkts5D+kFrChLdaAEyMSYNTn0459Q
	 X5Xj2n+L6/g/3EaQkuGpd7hGXY1VAMdzroYoNIV3YppHaF9ggLO8MpEnw7wb1vNThw
	 xgwIvi6khD9tIH2Hr19TUC08TaRJxk5ByTVbjxE1sxxPH5fumAuaA86u/2BoFzdqtL
	 RMUT8wzBvpSajxY5YCR6pXYerDaPYRV7X6G2uO8I/T2hNT9dzxJjSKdlh3IwtzYbcD
	 WZOR+kriNpcZlz7W+xk+us45czMtnO+ZAQUDGbjz01e3xEh1aPWP73HLcApT3e4oUW
	 /mgAJ3uRizdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F130CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703039357.25201.15421153996599837614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496a9cb6228c714c0eccd839e07c3bbee7f283f1ce16e2eae6589fe1668316c8
Date: Thu, 04 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757030393
