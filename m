Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C844B219A7A
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761838793; cv=none; b=oLxltijuJ6887fho/1yz1dlmNKa7+cKpKlVBd3BhIPdB5XoO5UT/3t09ZOH9inIPnssgTJ9I0JsftMlVGxcqSrWYuGxYnvPgsd8y8GKgVQPG1H2bFJOvFPMncCwPugEJmn1h2nRm8Y5UqLk3tKK7nMj9o4uX8O0Ulv6E34l1UpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761838793; c=relaxed/simple;
	bh=gKxKthaqP8adEBGKkJ7jwGOEPLtwRvkIyomt/MFaRTw=;
	h=To:Subject:From:Message-Id:Date; b=kQT/myXmLu7LItcuFBF+xJ0FShDG4mPwkzPtgRgP8CFca8jHFHgS7iQI09sIEsnjd7bOC9DPtuDuctbhRxA3nP+ZCMQzdLzf1FL9Kn7DTY/oATdVk6C2hy/bHX3PEs/sKKFJwB2vtsH0eAx4jse6Cu0tRiTrrdldB8syKtegNUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBq3UbVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBq3UbVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D255C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761838793;
	bh=gKxKthaqP8adEBGKkJ7jwGOEPLtwRvkIyomt/MFaRTw=;
	h=To:Subject:From:Date:From;
	b=EBq3UbVn3pM3o5d/B3Jn3jXQ6Hf9vE/pbdmgkRRfukahmb+pFUgL6jc3BrVQfty2d
	 wsCqYxi3+pbbpKuFkjOY5/McxbuYsVwV3+uMNT9dHBbbPTnCGdabbrPbwXZzDx4/9w
	 6sC8MqIlEOTWZFQtfS00/6CopMMnBNNt8tqwv/PhbAyvrm+zLmrnpoji5EoUjT/nuc
	 pn5nFpcrPEAQMJOc2T6t5KhKM2KtZILWbEeC4QgFgqfFPli1iRJObTEmwq8/jyU0m8
	 XUlLaVpi8YnutY3xn/QvFHO06KSIT5g/6FJnSzF74Zyk1IufXjH195irh20N2oKNsL
	 gpGrqbODfWRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD79CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183879358.5242.8738665990057369982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1915dbae767885c007fcd938ba3dea16ee2cc7b4a6c3c637a1529158640a1f
Date: Thu, 30 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761838793
