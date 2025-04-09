Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672871DC991
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744192794; cv=none; b=u6abKCAbKaHhfo4T8wO3MJAUkTZfay4QgL3nChMmRAqsxP54B+ka/B21Z+2xNd1xDwSgv5sbJZTI+OiRTHZ/LFKGeIxgOGiC0r6UupTMKZjioofkK6IbkvbqanGoEaU7GHNDcz9q83xIBV1MTV9HZC+w6umfxUXbnr3qCf9+xPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744192794; c=relaxed/simple;
	bh=bBsMuY4PaytAXFSXpR9pwOramG5NBA2Wyq/mErapEFg=;
	h=To:Subject:From:Message-Id:Date; b=MYdSsg+4q+0uooMF3XYG3NKY/cW5jTMKcZOwVyelRNppSMK2AuSLIEKqW3+P4ORj6fSQWRf06KbcXdntb3uII8bs6cd62daJX06NstHbjb7b7uhtspCn+ivqamcCS4eBYVAEj9EyEYjFkLaLmeMDPXXDkdH5n4Jw5UFZhWR5z0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igrXl4sY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igrXl4sY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C005BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744192793;
	bh=bBsMuY4PaytAXFSXpR9pwOramG5NBA2Wyq/mErapEFg=;
	h=To:Subject:From:Date:From;
	b=igrXl4sYNxOFdkqzJOh8f5nTbUnvzl12TYuKDSdFFfsb3/+0DC44PtphiYNchX67c
	 /jLyPL7xdFy7L3IszebRjxQ/e5yzHfnIZEry88p0Xt1Rn5hseQaQEeQIaDRxOIBf94
	 qqvDJfArOyLxDwMaf3WWC/97jyr62fkjnOQIMvgJJJ9RUTJKwRxmz71FNJBWyacs41
	 1UkClZQwjk+qnhKaZU36jZlZqICD0JyhuMPhBc/shhxJhSbpYmUMCGOYRlcCvY0lho
	 rJTW79+anhYNPi5DFxLcUsoW8W64BaVXPqFKBfmz+MoK0miJOB93mMsVSVHfipoPuo
	 xuvHcIgx7mCWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A634BC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419279367.27481.2883755877099226383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337157069cbc8d49ccbcbba93a05fe65beed16b9dbee6ab2b30cef4033fea398
Date: Wed, 09 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744192793
