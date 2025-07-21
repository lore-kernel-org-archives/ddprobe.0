Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142FD1D540
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753087194; cv=none; b=QIZss9mTDL+ARRl6RWojvcNowWP+B31xFeoCZb05SwBojjGdInnannrehgtpELpU23RG4LbBmMYgACn1V18AzqB3emBHUW2fZh8vPeppcBbdpG8gWYyJ77TKJEYLsb5CAk2DXfaHx4aIqiOzeEicMvolAXIu+CUMeF2cR7Zjt9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753087194; c=relaxed/simple;
	bh=sziStKohuR38Q7djiKEq4+lH6H8HtFQRkLp+jVRxMMY=;
	h=To:Subject:From:Message-Id:Date; b=nkQjAMySgB5b7ZphAOK1CkKceMco+H3ScYLpsWyGSGhAKGiCYiFkGqDotT9s19YSv422Z3eb4j13/LV8/ar7ZWmOTOjRTuc0m/wF6Tl5OorPItu79wAEJz8tzW02YB7ZgQ3oE4SM9jAMTByrULh57COGxQbqI2DhoSsRAj4DXvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJj/mbj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJj/mbj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAF1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753087193;
	bh=sziStKohuR38Q7djiKEq4+lH6H8HtFQRkLp+jVRxMMY=;
	h=To:Subject:From:Date:From;
	b=FJj/mbj2JVrODFUUczJMeg0LGA8NDe9jWOj0Qun+Ecxca7G6UCc2jLRl7MP1eJ/y1
	 Cg8opSKN/7iOmQkIVwlTW4NYijjTUEBpU6cRvIGLIl6JzKqZAVV/0FkupTptCDScW4
	 dQwC5q11880viYUzxRBSt6Z8yOkoZe00flCz98id7UN7APY828RNGy4AC5lhRCvE+C
	 A50Zmq4iPWaPMtnDbfUw+wNQRaUwnYKh3vv+k1Jv5kWPsunKZhtrb5HeXqqgQIiC4H
	 PdZU1YOY0Nv7w4CRo+JOl1Tnh/9KUMQG/fgSzDt/O53yg4YEAZFn1TdIkYj/kd0Ol5
	 M05aC2Q6Jr26g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC3CC87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308719357.30778.7707083432869867306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3943a41215373c9cc4e8037e914d5005e767570e017341cdef2d8eb063f18504
Date: Mon, 21 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753087193
