Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CA421D3CA
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758875394; cv=none; b=XPpBroFNnPz8DcG+8DYrEg6vkqzo0rSfD8Fb7r3NkvDPtCSSCXH9AnEca9S3aS66yzYy1vuAeS4bNAuSRKqHpRjrjcVds5UbIxCRzkcX6iZBIMvbnzUasn0ju9CwNOdiGSb0wA3NdzzNA6G2sDKN7BczTQa7Ht/16fBGdvC0A8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758875394; c=relaxed/simple;
	bh=A9PwOpqCEedquiPtpxNLKo2+qPQuD8mxTIE22wYNtBs=;
	h=To:Subject:From:Message-Id:Date; b=R6vjD8j9vwPsrBSRlQ07yIYuWKwrfdGVgEodJIQf1iG6fkikDWAFRT2Z9hCW+6w6Nw+pDUnkBZAUWLFDakLV6CKFfHXG7nHmKIV3BYMdkFPkKZRXqC/qEUi/Oki6cwaj/ngwSwQK4qUJMJIGew/BygY3fXbgnJYt3e1jMxeuA9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRVBhJfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRVBhJfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E9AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758875393;
	bh=A9PwOpqCEedquiPtpxNLKo2+qPQuD8mxTIE22wYNtBs=;
	h=To:Subject:From:Date:From;
	b=LRVBhJfcjzmy4XbEQ7xICaSyVeCt9wOCIBVUQBb5qMchCJBFuIixvjt9Dk5oUUbAv
	 FIXIoUBXH4O2YiEyg6lI6S+oqTwqC0G2+yafAd3PqtRCOfws4pCIRaymzrVpTh8WfJ
	 6pb5LNWuum484fKU12BPhNoMrPiUjMKbpV69y0++Py0cqAmkOTQjd2AYgIPVpMD19F
	 wsuMKNaqHFTq7/4u022ujm6gr9lz0HFgMhMwJpuhdYnQtkpqXp+EoL8vywcmerQhls
	 MWGgcLvfF5TNg/uBIjpzZ8WJ16KMhOXLbloi9v/OXvpHdWhZE0r0syKq9i8PH8z0S0
	 YxOE/C0RDHM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B98CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887539359.29077.1435527153643307687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2273e678833c553c9f2f7d0c32cdd1eb51bc3bc9a8c53bd8578e9c83acf6ac35
Date: Fri, 26 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758875393
