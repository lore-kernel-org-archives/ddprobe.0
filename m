Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305F0219A71
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770331434; cv=none; b=AnebuiESDnjBxw/LJFrt++5YcvhJWknDftAIkrVVnDLfr6Qf2rOhUMG/KIO+N31CYhwNW+coZ4mWDkxZijv0uWzgC0+bYLr517BWybGk8V44Z4BMiv7aDe/GNwoom//A/APn6e6lqS824Fs37YpLdA50bQ44I97nxDZMKNBC2Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770331434; c=relaxed/simple;
	bh=+s+krh00TFb5CVIuoUugiYbNFzdvrD8HuvitMjVsh44=;
	h=To:Subject:From:Message-Id:Date; b=ckPECInuFGDfNCD1OEAfortg/1DnkvtKEeb9Yb2qwxpU0CFPAv1A012sm+s5u6j0LpnN/cVW219+2zMHlYIYfN0hUbtI0LTWhpyx2zVf6lK7r+qww+KtCBv8TSj8PxALyA4AQsdvgz5uVYdIILbey8Iaqf3SA80YHbyc0a6Ed+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQ1ISyGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQ1ISyGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AC2C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770331433;
	bh=+s+krh00TFb5CVIuoUugiYbNFzdvrD8HuvitMjVsh44=;
	h=To:Subject:From:Date:From;
	b=NQ1ISyGa3c6uNGyz/JLbj0j9Xyx2qjIbXDsMScQ/4sD3lz82DeApikZ6YRmlc6iI1
	 saKl4B1uXqvDVfTgJRQVexi5hAqKJeAaMgeklnL38HUgRI+3GZWq+UoJRW6bZUP3Fc
	 TO4soUTryr+skF2iziGsFvwGRpk2sS233iMFa/YRI7kZ+995X3GVcdU0Qd1JJAiERp
	 IyiDtX3Lk/E7OSe9qmJD1W3p3AZLtB+FyZrO1qlJ6E190XbA2DL6IGsd2i5wn///EK
	 xmtxEagBY2XSNUPwyQmBaAfixd6L/FsVEflgzrfVyxusFoJdJRcNn8QLElKwrjnNmX
	 wp/RsgnR8hZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98980ECD9AA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033143358.30166.4188186067520667468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813ef8414cb077a50b4a85014431050f4b23a856d668b4a4081f17181896be6b
Date: Thu, 05 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770331433
