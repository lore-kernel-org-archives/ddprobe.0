Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353EA44999B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783780114; cv=none; b=qWHn8hO4TAbCMRk8xgIJw0JEIi6u71GHyqrZhte3Xpeg020m4RiVXWT6ifGvHG8F2Qinlj3m+MXdsDXgJQ5efEVrk2s9wD8fjPjVXbO/kUYOJ8nvCEj+hZI7+pbyxEOk829BfBr/hKAGQduKOiyHX6DoQJlFXONHpmNqP51WnPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783780114; c=relaxed/simple;
	bh=LTQOXDohwd4q12WAs0jXYwFWOE4CHjvqS1PngG7OBvw=;
	h=To:Subject:From:Message-Id:Date; b=kxQLQeTco365kH3ZF7MvwDvNHyCzaUvLGMOoyIpvxSxRL+BJYoM+fYKwazkL0I78XJGbX2dbL+PQ0qr4pDa8WMsEO4ttmNz+6DJDxzgiWCG2XF+BRcA4w2pliZIHZHoGuM/CKsa0Mmy/8ZLhTMYYYDMERxKKk4NLpScBi7QmBPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tgodqs4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tgodqs4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D060EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783780113;
	bh=LTQOXDohwd4q12WAs0jXYwFWOE4CHjvqS1PngG7OBvw=;
	h=To:Subject:From:Date:From;
	b=Tgodqs4BzicslK+/QtX3RplAhP/95tEBqkpDStewBaCVeGDIjTX01dJpvwNyHbr6n
	 8so2D7Gg227x+DkbNygX+H/Wvea+yUXJVCSHzb0r5y+/5cmpEhnPpTD2xIKvp35fXx
	 yIvBrNEVeRff1sIddIfcaL3m0NinGJT3D5/wKxotIGOd8TO9uvy1m03GLoFWvZFXbx
	 G150imFwE6gbrH2STMAWUZgKckLow85yPjVsWrCnWbtJyvsnPhQ/ANXBgSQ6MW6RlU
	 hRPr5Zlk+7B/a+9MkYSaIz0GjD4u7gOhQELTAq5dGc6iWo9nYFdJmHW+q3HrM+iF3h
	 1vuHkIR4sG9pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACAAC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378011368.4919.3065839070547764613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294dac670fdd2309d54c7044f52826d099f1f3f9ca45ef645699c291219f4e68
Date: Sat, 11 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783780113
