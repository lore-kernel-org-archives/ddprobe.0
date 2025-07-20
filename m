Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E4D8F6C
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752983994; cv=none; b=PKwoYsBX7zvWYL42OrYL4XyEW9qKfUMWlD7XlvbCYTGk2JaOJaz4n5Z/4T3u6+s3IT2FQ4gIRe1tFHe92EFzqgyHC8QtOjpat+E8vX7kPsypD/UyeIGH8P/6v0zz7oYUTgId8uV6rMwDigjWBq51tcpelrnt5O3AMdH0xn3Mg7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752983994; c=relaxed/simple;
	bh=fODq2Oc3+C/5d+84hsLFL500Gew3acU4gvS3HIb+7ZM=;
	h=To:Subject:From:Message-Id:Date; b=mAHN3/vXapVhmMpQQCQU6tmRB3upT8E46FbPrdxNbZ8DMx4ZdVwqXRq2055iFhBDgf5DUOBm0AmrLiE0I3li5SZroMTEDBvr60FNR+kR4mTKtjc1Ny0wZj2OtPaYhcIBdUeo+US87LddwtaVZndlXwzoCCbIUfCZP5tu09ZiLjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/9FqC0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/9FqC0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752983993;
	bh=fODq2Oc3+C/5d+84hsLFL500Gew3acU4gvS3HIb+7ZM=;
	h=To:Subject:From:Date:From;
	b=D/9FqC0Cby3yfEAjDSRJXpbVs5XvMmIkLvGyJGo08LNV+x4d/hwBYkn7DxT3xEYc2
	 PzLle/YgtNnMceti2IUkRgzCRAs89CdAu4Eg4UP+ISaIf9LmPBi/cpkxmrho1n0LK+
	 Mhfk8pXGMoCtPl7dGk9snPloHTu3niq7xApi82zwSZ1xxEw4TbrYQdm7oVhHZ3soT7
	 Npy/JKkDLD5R8JdpdFSymXejIpEoW18+RWM9tIiONcmy4vFND5LvkR42/ep5gSJuZj
	 8nhDtHFmyiztGqBHO2ARyozCtLGOYjzYtJtRjH7PJtv3lCF0uINJtN0oMrcDZdSJfF
	 834alf3xdSCbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA34C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298399358.7514.666957885196461485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6180a9844b0715bb3f4bb19ab48ccd536d45f2303f0037a86ef74b417bbe1d21
Date: Sun, 20 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752983993
