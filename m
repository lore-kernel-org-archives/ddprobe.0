Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F73191DE
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757093394; cv=none; b=mKEJKffogUiaGqNRVwGiI6MK339zSOSQkhFb7H+rflsZmIPTKXftmH4joVs+qXAtKCc1gJSXMyuo4bEycLfBOoj4Y9TPVZXRxT0oToYjcGwM3GeOENDCV+gFwIyXKnYGLeT7ppngpXRkriE0T7Xi6YudGC8NoW/NmfRIipv1930=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757093394; c=relaxed/simple;
	bh=X+FuevtIOcdEyqTMYyWPzbkBd8pJcWQYh8U9MfSJP5E=;
	h=To:Subject:From:Message-Id:Date; b=fOB3a858rhoUprP+gipOGuS1kt004kr1zwRwqpKEes6nLGr/eLKoJJpPL7fBs7V7opnAF4lfHCDgoTK//ySc3WtjVg0K+9tEWSNurHUPBJyiUKSD/skOTVWL2nTPYEIc3A8KqKutBgtJTjrxbbd4/eBLsMZ/Ky5Jk+akJpjmnYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHOsEbXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHOsEbXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A664BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757093393;
	bh=X+FuevtIOcdEyqTMYyWPzbkBd8pJcWQYh8U9MfSJP5E=;
	h=To:Subject:From:Date:From;
	b=QHOsEbXRj49ns1bRHXXV/wMmDt2gcQ7d6L/XNVL5j8hqu7cUxQHLc/nUqqEkf0Y/a
	 43FebcoO28JAUndFpIXx9cOR9WLCFxDd5Ocbd7Sa8t10ty0gi5zkO7zX/0Vu3+VFK9
	 Q3W5/I7gfxLLIP8sIzXi5G8/Oe4n5MbtBXgxyjVYa4OuwKjsVRLa9IuTsAfsl9/P7V
	 bQyEhB9f9lyEZqeUp9Bp1jf4PixlcCu1S8P8Pb6JzmsAM4wnHScafAMzDEmqjM7JiK
	 X+DRKxHoL55VUngM3CCvlKjC+EPUcGKfFBDbxoRtSDhFmtU9S5/56YAq3/ucQAX2cw
	 b6JIamH4bSz5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1CCA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709339358.18958.14416433589030944941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d86d578e40e4b85717504437a00fc7844fb121fdbe0c5a79c138e63e706807c
Date: Fri, 05 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757093393
