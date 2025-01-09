Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D7CB644
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736443554; cv=none; b=qB2JRr+HcF510+hwhTwG6daHgV+Hjlnhn2GoSPt6wb6Mb2Nr3dl2sIvHMymMOlH7QX6gy/6KJ1rfFM95teaTU716ENohbW2duVXGmBjJr7maXYs84isCiE2yvjPOm9P0zskmNic+EXTYht/L6uOaTLOwq1KVAinx0QlKSowe0s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736443554; c=relaxed/simple;
	bh=oWUy2mt5mp3JbiwJ9M5sx7nxEiA1+m1TqqB+1NwHHQQ=;
	h=To:Subject:From:Message-Id:Date; b=c1xuvLT4lABaN2kxIA5AvwsC4v8fXb+yl/usaDoVR3hvA1qv0or89GQtGhahnBGk9IBhO7OsbzT7iS+nBFTaIrmRgOLe59OT4UGxp6t7ngZnOf9N0Wpugvq9Wvz/KIE3b13k4EPmvdjOmHfXpXh2wWQ/ligZHQCIr4GMvQESfv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgNlCl3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgNlCl3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B49C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736443553;
	bh=oWUy2mt5mp3JbiwJ9M5sx7nxEiA1+m1TqqB+1NwHHQQ=;
	h=To:Subject:From:Date:From;
	b=ZgNlCl3bQnuKlSQCyXoIpcqZF8nLOTL6UAEIAARI59T5w2eF92DdI8lttIjznFn38
	 8ApciFFe9C/8qZvc4jgkd5LhCYyMNfFWKFR8d5L/Y2hDgLvt6Py8n1I3BoPdFj6wsy
	 c1DLlCeroyzrTuWEuvfxZdyRzjyCJBFjYc5M3Ez9j1GX6Sflab7P1st0QfOY+oJkI6
	 kKiZIimgbEnazJVP8di1FQM6cgt/U45kSIbmVQX5O0IzDMyRgjCQjiBjGRYYdvYQu2
	 t78eu4V+S7tAF0fb7tURUuFu7bUNaxIS3e/2f+B5DBEtizqd+iayG2wsQUWlm0g05w
	 JGwimuXLGhskA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942BEE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644355358.25731.1134630616985915872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04820f66617b867f9555faf53cd623ac51d77a265fb241f762dd5f0955397168
Date: Thu, 09 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736443553
