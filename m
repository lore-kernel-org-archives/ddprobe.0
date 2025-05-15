Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8174B1E59
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747342194; cv=none; b=EFVG4jqtWN3RLpzpO90S4ol9bp92Bv814y3uXD/yoioo5mq7/mGLrF8wVhxwXLmWuJ3TNaQQkRo/PHGMjw6C0nQBZV5kpKTbKj927hjvZTbAMSU+o8v77WRBHawVQMmIlAIGy0gClx7ebw1i1JJJHB79q18xCgLU7AWNFE+V25U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747342194; c=relaxed/simple;
	bh=Tu6qW2W4WdQ9XDU0VVpO7lnBH08bSfKexhG524Tv1vI=;
	h=To:Subject:From:Message-Id:Date; b=mUu91NGtcWE2iwpXJSRsGyhrVg8bPICqzdkl4GhFYk8e8fjHSxevbmbj0JRKGlEm6iFh0+whZv2a/lbepJGah8k1oeCEr2WI21d33KyR5uOCN9PdpnVLojYhURtgG9xUW2ZPcK7mHtuEOLeac8k+S/XB4+rOS2aFMzaLxAq7nxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJEHUOad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJEHUOad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88FBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747342193;
	bh=Tu6qW2W4WdQ9XDU0VVpO7lnBH08bSfKexhG524Tv1vI=;
	h=To:Subject:From:Date:From;
	b=gJEHUOadirrZv7xWdOFQC7GCY8w7vVLeEkRezSJbML0SxFZtp9pLg7pJjkIHVrspd
	 7ymvbLVhba0wxHPJP9jqORoUicJlH2PUTfmEYqVpYYoqzsGWvqxYNhHNRkQkXXHtKi
	 t5ZWBzvuX1QnVodUXEgYOoWZOsbqhHRWiQ3CXwxRGvpaul9crc09WLZr5+/h4+4JhQ
	 moNuO+iyehUToS7lGzGp+6TCc9faJpGWWC0aJ913LHsGxjtLaRR3Je28i2UaeSAyya
	 tPN7hfYlqwcNoNFKQLbOnbxTUPJgyvHLf7ZmZLAK4yGpl+mtGlt5yr385VLdrL2bEH
	 0CKN6RUStkiZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248BC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734219358.8122.71927492381918795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3685d4bb2d6819431189615c488dffec5fa3aad3224d168d27befc91aa92dbd1
Date: Thu, 15 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747342193
