Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767481CDA3F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738531554; cv=none; b=VVrfLqppmfVzrd5Z9+ro2UaJmQBlY67bnzLCESIV6WzeEuU8CneBmmshddXZRvzyFzHwXv24dzxpan9bBYoOlCtkC44a8hoL1tXhSmf6rweazbN++N9iNPWGlH88gEL2a/vP+rvLy1ozdHzRP9fkdmCc1KL+FBbDmrAA2mHwevs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738531554; c=relaxed/simple;
	bh=BthmH3mqCydDAVief7WCYleYj0LGRJ745OaQ8BMJrBQ=;
	h=To:Subject:From:Message-Id:Date; b=kbEO8dfVxZ+bIY5MbPgfpbfatSt9wVJuwGbhgtUa3mJOSmlaFGzJ/VoA4nqPL62ztC6WFwqdk6vfr/6gkng0G/BE6tKNjgxlJCZuoYHo1fAtJgO1x0TmUkgmWLQ1Ztn15ZXDgUtUNX/vidvMGag0dMJ36LjLTrE3lE0+unFnhwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsGkStsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsGkStsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2567C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738531553;
	bh=BthmH3mqCydDAVief7WCYleYj0LGRJ745OaQ8BMJrBQ=;
	h=To:Subject:From:Date:From;
	b=CsGkStsq7+aPbPwsAmy+dZs8lcLQzkqFTkE9JeF1EOJKrCBxHXzax2EDmZbrnsUp2
	 0jCG2JuHHY4pR8yT9iB2ZhKppvl7B6QxOUzhC+7+8gvDjo0CGxLSRK2p/BSgx/5JiI
	 XadeJUsbUbUAaZW9uYBS/F6oHLhGuVPhRg/RHQm3K7rJAeG+QSyrwNT3vZfrP0KG+/
	 2UWxh5qVbrTimZEfp/NvV64740yv9CH7G9jc5RfhgxS/3j+ye7+lRKDkw06G9Fliig
	 Eh4QjmOuc0A2bloQQbW+lZQ4GQ+GkV2UNLPHVGw+jOd52E3lS/bUzy21KtWgMqbnOS
	 ZWQ3JjRbcxAvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3784C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853155361.14176.1879399528680579105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8557285de37cd177c3356b658269bc670381a6ecdceb63a937e810b4b8521b13
Date: Sun, 02 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738531553
