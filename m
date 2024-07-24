Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BA717C68
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721805354; cv=none; b=B7yq1fGmXHwQ8p0ecfTkLQfDCTfw/ZhxSzJhCdJYvZG7PeMZLVcs32DkzxVdltx3KLj83+hiz+0+fMQHopawnHNDCWYLZtJ/cyS4Gl709R470al8Zz9ea4ZyOAW6wteb2W7oysgx7por/7762wVP/9e54ZfxGsx3wSgFaMN0IHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721805354; c=relaxed/simple;
	bh=ZO8XY2crfDvyvXKv8Kgy40NDIcxpyk2v5X6YE/RIhTw=;
	h=To:Subject:From:Message-Id:Date; b=ZgMp/dPWy2pOAH2IkQ+N2lCliYV28EpBsk5H3gTFEaeIHmuaccHbsZGv7nArx90fD9NymXgCpo7nngQpffuZfpErC46jeEfp+QN572MsRiDUQQWBU3E0FblsgBSdxBOVSugSpVZmsZq241zvmTgZeGvFZZP0gva6aV0BgpytUqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCdNQ9WN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCdNQ9WN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF333C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721805353;
	bh=ZO8XY2crfDvyvXKv8Kgy40NDIcxpyk2v5X6YE/RIhTw=;
	h=To:Subject:From:Date:From;
	b=mCdNQ9WNXszwMO9Sx2kn04xCBvhqA84KmIlcBmzabLNTcCZ2gepf6mMz3E4Bw8BJ2
	 dLgp5mNWI9qXCStR6+dEdpFibdQisxGKAFWy6UzVjNcVoScltV+cv8uyD8yVLtgbPw
	 0YdJ+aXT/AgXW4BQ3niLnkZiIcY1cxuW47ri6Bf1xLMLZEe8eJsCRQkJw3qKdReBtj
	 nVNw4tV9quompU1MfACYv+/z6skzl9NSRRCbMY97FIqgN9o+gPmPqTkOaHS5y0wzWy
	 oCOTqJuaO7wEabqHSht3N3vw8wVvcFIzV4ErDbtMJRdyCcxYE0RKVf+xY/nTE4M+PI
	 3lJz+Jz4s5MRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9786AC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180535361.14878.7205150544214058886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a27ae080afa78abdd4fb6d8d1b2f851591108d849346ad5a3d5d268c0b29f9
Date: Wed, 24 Jul 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721805353
