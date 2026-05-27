Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C21D2BE621
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779867754; cv=none; b=kd31Yk5ci3b1YBorpZetPrsdHmYaQa/4IawpDYCNaoXby1KHzgWhGYin6/fZdVXyBrBn+r9+qaXTgpqsJTPNwFPuWIyxIlXKYGNccAN0picEuGTZGNMiJE3phS17e8xSwATkSE2mCOOdGBmAahSKLBAlltk+89apALehDOS2/7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779867754; c=relaxed/simple;
	bh=vwfXOMVO1Lz/uZDdKw+76bMFc/ow4jMWbnR9A2ETVQw=;
	h=To:Subject:From:Message-Id:Date; b=KTvfkgxjCHMJecbRSZTmFxrevm6x5cHswHsg42m7mbWeYIQtEsIQQuSuQ81xVz6/OElBqRymRybmbwF0hWZmnvNcu8QrNJPQsAzWKei3INlp+XKNZZ064QWB2NlDV+ZonGYQKf6L0Ayr22UW5cVl4HA1r/mZE6XHehGeDO6FHmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSrNs7Ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSrNs7Ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE00CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779867753;
	bh=vwfXOMVO1Lz/uZDdKw+76bMFc/ow4jMWbnR9A2ETVQw=;
	h=To:Subject:From:Date:From;
	b=hSrNs7ExDGyGSD+JchGke8MPrsGqflFVGjyXzgZMZUTjMM9b+vFJfttGAlnJW9E3j
	 FZo+HZm1yPv2MkaRl3rgby04Qn8tqjZ/nPFfQzcysVPJ/+fxo8hw6eLy8moI34VmcN
	 i9OnfQ4GXMWVY7jOnineSYFiXl3qnDMC5EuciyVwlgUWyhjW6Nx9v179gsm3u5tkWy
	 A9jU5ctADr3yRV0LYzEWVsFF5SU98mOunRAEXt41qVEAX7wUv4AWorME6crtPHJR+g
	 7WRSSn2gQwo+UkwrAwOrgZtnTeCnAVvlnBCSeGVKsbaLbSRslGFkQ081jbigYwnB8K
	 gqkNkhn6SqwrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FDACD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986775367.2253.1310509506512698125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cf6c53b5acefb0a078ce14cab70a416c39eeaf063189dbed2d30cbcb68a559
Date: Wed, 27 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779867753
