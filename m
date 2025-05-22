Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3076128C00A
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747928994; cv=none; b=qdghC5RO7sxJtGmZaBEAQu8WN5YPOmsP6Ib563YXALIYAq5D7fIUX61UggPzFoo45CXO0OsLpPv1Qi2IeGE6WWnwWgVxk7vvHBAUs+FeYNkh/eMHjKF7cTYioShQTYta0GMRpduP9vS5VJoB1yjXKgXbbV17Py1Mj4zMLuURPds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747928994; c=relaxed/simple;
	bh=8aDR6Vb41CxI1AdZpaRMvjBU6v0QtRYbWnXkBs0v/U8=;
	h=To:Subject:From:Message-Id:Date; b=AiUiADYgBuVpCss8QUjPuw/Dc6pan0ake6NMOV10HfmP1M/SFeJyP2/1r/VPhPe1qPe51b1VvGUt9OrrwNoC8okpXHHy8ZsZq2v7h6DdDfL5uSg1eXPAU+MMKWmD7iyVyFaQPt0El2vflGIveFnikkQtpyua+EYtqKDkkmu55CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne0FYygS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne0FYygS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A06C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747928993;
	bh=8aDR6Vb41CxI1AdZpaRMvjBU6v0QtRYbWnXkBs0v/U8=;
	h=To:Subject:From:Date:From;
	b=ne0FYygSZqw+YNWc28DD5DhyH5JaLCHrCLr31HzyW2Md/88TQDg87yVCV+r3xbG5L
	 yc6FUV1yTV5MywXupt/x9oQJ9Q/n6YNQmfnixCi0s7VCmEvEA+7pUj8/eqmOgGFsaC
	 hPZPhC+5COtsOt0CKCvR9eWuJBYl3gmDyc49IJ1gSdSri8HiXcDXbfrGUqbm4/pGz9
	 lbHyxCtMqYKZeQ2fq5drvVDCSjZwfu9214KI9cwh5GLRQwiq0ZCobIrZpyivyIhY5V
	 M2lPBMxY23sHffbSxK4SbtxdEWFzZXZNx0Jadt32otACNHPdu934FY/n7WQtA/y1KM
	 l+1yiD1IriVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02AC54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792899357.10645.18164297655148100766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05abf36df9d5a0e5506e0b5de805851d86cd1aa2bdf724dc6b834a596668b5f3
Date: Thu, 22 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747928993
