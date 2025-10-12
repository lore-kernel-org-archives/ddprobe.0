Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2211713D891
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760266194; cv=none; b=EclrAXe42N7BlhyEG217VJ4S6788FP1b8THbjh6+GZRF3TYFO63PR14TqbkbYdQ8dvihEiY0Kf38SPl6YPORN55F7Y4ctiVS8SvOF5lllj+xpJX+lFX0jff1Wf1fwMKTT+21uOvRXQ3mGivpn3Mw/TWaXhy/bkqQ+wdwjltDtz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760266194; c=relaxed/simple;
	bh=Ut/U3+OeqWIGYR/7m4zEBYRod2JClW/l4BwcIppZT84=;
	h=To:Subject:From:Message-Id:Date; b=nUuQrwmL0peR02jzK4Zj4SusLeZbvaUkrcozVLZPGn53e9UJZ5pyi3MIz7I9o+KOlbaSfGQxc2Ne7MVTgmU5BC1v6FvAMy1HEq9oO4L+0bNa1nOEZWefTeWQhtEMqbzoEIZsiFUE+zp44jRoxDDj+DqG16IoWvj+pHqMIfWttrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyOJVM9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyOJVM9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760266193;
	bh=Ut/U3+OeqWIGYR/7m4zEBYRod2JClW/l4BwcIppZT84=;
	h=To:Subject:From:Date:From;
	b=cyOJVM9JdQqmF3tVQ93FrIdd0pExvE6vk1oNFvI6bvhg3fN7AyOYo6yZeVLw89BaL
	 /hXTG03Zzezjt9UyVQSYjXj5ZXkZHgr5pMrba/dljxfF/eY9/WtiSnxbugGf1C2YLA
	 1+xDTsw1UL4VwVA7s/YFIWIHwAlFaeD8IX0hDfRCPuJB8uQPBjVtZNxZ01TtOuCjQp
	 qN2OmB2o4mEqIQqSgtKjFGa/2hxrU33Fr9/hZuglitOu0MgTSIGPiqqW92x8JiuM2q
	 OSw1x8Rn4lHcbk+18Ac2RP9Ex04ngtI7vFJ9YsX50cm2mOqG296ve6VvJt5AKyg+zT
	 sR3b1yxDZohpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21FCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026619357.32572.10128506926515316830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7ca1db977161ca4671828beffc10c5f873d8956dde1e40909773e19f73bc9a
Date: Sun, 12 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760266193
