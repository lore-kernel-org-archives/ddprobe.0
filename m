Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCB823182E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748619595; cv=none; b=MWi71AOf7mTC2L1GEszA8KEjwksKojrtTNcn7CgaaAoVd0XLd5Aoi0+1/G/qokf89+P7P+z1D+wk9Pg0I4EVTwKaLxFHZRYGlgRqL3l/55f9cXsVhSd59Llo2MlOKrQdbpccdLibSUlEYUTwiG6W6EYtS2htZDGdFMaqGaIluiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748619595; c=relaxed/simple;
	bh=hUVD7IiOSgRdo6NKR/71H/12g/1HJxUZx+Bnj1x0C/U=;
	h=To:Subject:From:Message-Id:Date; b=FN9KjbcDSWlWOjSwLjeuWYr/XP1JNS8dBkQ6sf36++EoQguPpu0wjsdgyx15tEgpjHF/sv4dipZir1YVjUXe6zJ45ZNkXjLBMXB/2Xy19mw1QMkdHESaL5jkGHYUSHmN71fX5y17cGfRdbnh4ogdKw0SQ1wnMLik7s9h7e9ZHMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7NlBRN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7NlBRN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEF0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748619593;
	bh=hUVD7IiOSgRdo6NKR/71H/12g/1HJxUZx+Bnj1x0C/U=;
	h=To:Subject:From:Date:From;
	b=K7NlBRN7sSRDhxehWJGkubk6Q8IW2v8dmma+NM30K5U5HD5UeckjJfjWyVJEETehy
	 sPI5muAqttOpuiLtXs4XVc/14SAMRPZm/53bXcgmIHOqVlQVQcGqWkfwRtjfRJ6Qsg
	 4YZQw4vzRWAS+Y2ggNV6F8Hi3CKnkJ4XELSmkTg9qTSARYX6FsyX73e3KhIHOT1Nss
	 BZmaON5drhjHc2clspqwsl/J2RlqetEbO2CtPlxI+7Ea1rjoX9kYYDJRrCvDia3BIi
	 zg39+gbCv1anuzK7ylxZWizH69zcLtJXVqrR9hNR+v23qDdvWl4dygS/BdfUFFE97h
	 Z8qSqUfQZJUPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FFC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861959357.9501.3909802606246339518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a188c3e45aa5813006c5024fd4aef5788c68107fbd9a780bda7a3034c609eb
Date: Fri, 30 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748619593
