Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8102A8C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741523334; cv=none; b=BwFRmMY0ud8PYfhTvYIKVhdUu+BLmbvNXrWwN+q8GqR9KA4yqhOIb3a7ISfIR+16NoJn2TvYMAb02dqwC49yF4AF2FaJqu4M7veYPQVxxv/IDJv/tGJKJAt8Rv52h0NxIJw7XHQ2kakyicj9Ju5E7v8ibwlZpK44Vy/hqfhpBH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741523334; c=relaxed/simple;
	bh=FXyzzKNysMUuaSmYpt8L5waKGKM6V6vULwmgS00js58=;
	h=To:Subject:From:Message-Id:Date; b=txspmRnJWxV541qszGrUpRPkhsxqfJUVHq8r3+tbuD42UAAV56lL5391Rtl2EROtSZ0ubZrvh/t41gN6rlwb0PJ5RfLIKBlz5rdqPy5u3xVeQ8riy2/f/94ICeJoX5c/j0lhXD4JN8VzDADcZpL9aRTJn7Dmwn/87wKcwgnPVO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZo7wt8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZo7wt8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F8C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741523333;
	bh=FXyzzKNysMUuaSmYpt8L5waKGKM6V6vULwmgS00js58=;
	h=To:Subject:From:Date:From;
	b=MZo7wt8a0jPTQZBqC1HyIswUBdd/RVymXEchUOc19nLWFUwEpp9oi64Kq6A7n5YKj
	 Z/Cc7nyEbGV6ym70y0w+zSycD0/HNqBlfEMn//o0ZxSXEhiMIzTHWMrlfF75HEWyCw
	 8D/40Nzj6IMqPMlilQueyKJLKlgLoRispFMU8+mMhWWVsYCNWP3iRgmk23T4u7NJ2T
	 lP5CE/VSGvLYqHP0WQOa6bnYsH/8Fvj+cCat7sZc7nPeqt9urKmzz6PIFzaVMibx+N
	 az0WfIKtfwVZGxr6f36NvMLcajuGwTlQVKgWh0knqKyCNJaFOq2GsYiI9XcGeT2+dL
	 LYcvKBAYuV7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D1C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152333358.27652.14579374134430385593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f91de5e96f6a28e68aa387806dcfae72435972c2fa5b46540d06389a2d7c82
Date: Sun, 09 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741523333
