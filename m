Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFBF14F78
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706574497; cv=none; b=CO3LOmhYdn4D7mhkDWC1FZIleeFOHJi2yrgj49o7zo5XclC1W7RKDcCZ64cYfoHSYtZ1MzxJutZlYdCP443LeVPikuZu48zk+3cv9NS6cSR5SNnBHxhogbTeVusph/Lg2imFHVcKGQzjTQVBaycE/Fv2J/AWPLYah1FlQT9Wl4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706574497; c=relaxed/simple;
	bh=z7f/lHH9nDkV6pu0sVbyTHNMFGT3qf9B480/VhVqFXQ=;
	h=To:Subject:From:Message-Id:Date; b=ZK728Ko622uG3uD6tK0p99lWT6feMurPVbLo3N+61xH0uPkpX7v+C9SI5Q1SapGaQfi/RnOApLBa6A9Z5mVDhS7D7HTnCCQKfyk8j7o/A4nlkO+zd0i1nC2Vmnx/qxbJFlD4T++LGTHimsah4Pp5fa7LgwbTSLhElCF10rKTq3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6/cNeFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6/cNeFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E27EC43390
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706574496;
	bh=z7f/lHH9nDkV6pu0sVbyTHNMFGT3qf9B480/VhVqFXQ=;
	h=To:Subject:From:Date:From;
	b=H6/cNeFgsNOdI82YzBRoe7aPrz7G0iTWsPfBNBLWQI88pXSvox+ylntWrjtCMQRu3
	 8LYTtu6jrq0AmAIIINmfDI1cVXR+9BPlppRKFBrBzSP2oNS8/V8C0LmVSY+Sd3NpeN
	 /v2xgGWzxkTIo8zZlfUNsd/aOLqHunnNlRIcmmcpmqdT6PFmZ4BCnBUdlFbr+bxTkR
	 M8G5Y2UQfkhSbSVfJhdru7jtzOYcUwKhDeLdo59mpT+aMXKtQWedC5tbl+APkc1Apr
	 iOXP0iACPlp5Y0CN6018NKcBJQG2IhbiBzYHjagB+kI/JW/gRYfrvA+1nZfBbarZQ2
	 9Fh8fqzfqiiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636C5C47DA9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170657449640.24622.12321744791146356887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9debe24542aab3ccceef4341c1b307de21b585e789114a2d8a8da1e972d25715
Date: Tue, 30 Jan 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706574496
