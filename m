Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685533EC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778431234; cv=none; b=MwwvRONgMyLm3qBAnLSm93drzJdEK4m3Pk38OfNi8MOG7dPKjBhYnEIgeECETMCkADJCyGCg/CIAeHjuj64B3Tsvp1EAbColFdFPtzC44rKwocUDEhdVSoolLUBqs32U/LydsNzwTDOCL1mScK2BUyPmD86mMycE9oHlktlXDPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778431234; c=relaxed/simple;
	bh=cWCgHOP+S+mBe+gKoxrMfJYd/7/yCvNP6Cl/+rDmJZw=;
	h=To:Subject:From:Message-Id:Date; b=OcvzaFSt+dQNGNtv5zUVYCBLpjRxFtWtL8bRXP/J+vE+iXTGBx+39hWnHRPmCH81ZoUz4NEQm60g4CzNHQg5iEJ9ZIBfcPGEL1y/D+NlVKmjlLwR2n8ZoGgQgW7jprktX6Goo44B2n3Z9QEdB7Lk8DaKvBMitDC9Kb/HINqzqgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTCyd6oa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTCyd6oa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5332C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778431233;
	bh=cWCgHOP+S+mBe+gKoxrMfJYd/7/yCvNP6Cl/+rDmJZw=;
	h=To:Subject:From:Date:From;
	b=cTCyd6oaC9HFZ3iedGA9zYaKNg4uFc1Jv1juZUtc5ieFMY0y88CFVpQLXEtKS3DfY
	 ihguqRq2U41qHxcQ1VfMB3xalUkBm1ZkcY1TSEVFB5djELHXtN72KfkWAsuROpNoTV
	 PnxNLEdAv8WsdTEjvyqDaP0jESN3CzfFQo5a4KItlNGW3qnqYBAe+h42cLMqEflney
	 AOWqtJGQvwcqDs6e95bN7U3tOvllCTSFmhI6QODY7F+uCJitNUgC9AgKNft1Kyk2sj
	 FJXTUtipEUF8PZ/I9Tn3vGsx85nq2rzZFJqoBZt7Jqv7ut2X8KrobhS4XAcH40FH98
	 rP82JvcLr2stw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF753CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843123369.20342.1846954227665140019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83dafc917fb907bef7536f73cd6c57b1ed83f5882b25b51693c817328e55f7a
Date: Sun, 10 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778431233
