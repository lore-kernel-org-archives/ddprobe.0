Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C88138E
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716616463; cv=none; b=nInslr66/ppqZcUxzUAMuByMJz777zCRpDCG42ZqAi2hVmJpmGBvDdUpI188zJ6gbOt+CVUbq8K3PL+S9wmqyN4lWEFL8xtv5Jp7f9AYryX/tMJ2yvh+vzMJ6NUphACrZjJ4kQ7O3R/2v+NYV6a8XeAg7l75CgLGvfwZUB5uBRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716616463; c=relaxed/simple;
	bh=sxbwvUnl9EUEWGfbRJF3rJubH6D0g14rn0KoYckEuEM=;
	h=To:Subject:From:Message-Id:Date; b=oCVbZj13Rv+aZpqoXnZcVNNLP42w377ncNRQaq/fWFiqJfcW2Ap7cSiNoxlrWEq7Y8g2KGHP4sGsokL0v8w2hX1MZSkOrvlJJX192IGegC5aIYUvtCXZ4yvHfHxsKbXOq+MgqHnQ53tkSy30MjPveIKS1AWxnXIFcEldh1L0Z74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/TR6W1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/TR6W1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB44DC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716616463;
	bh=sxbwvUnl9EUEWGfbRJF3rJubH6D0g14rn0KoYckEuEM=;
	h=To:Subject:From:Date:From;
	b=a/TR6W1KRWbCFtDpGmSUP3dD5d+DUmIOiVpaTyWiRyZ9xpCgGrOXJEW2VL8xUzinc
	 4EfFBXb3CtwZVrIxbOouFMTrnvwIXH6ILpXb7ExOvBrnutPjWg4PRC3MwcEGdQnGcu
	 Sd5ypUekcv75yq/31+X6nBpqOYLqSBdUFsP0VflEv1x/CD6c1SXPYjIRaVDd8e6zJ6
	 fxZ71UZttGkckmWPrrxZg0u11r/0Y648YLZWJCuhxx0MVDxBm23gfMleon8QRRnR3z
	 1zCUMVgP7GxSNikWADQbP3v7RIHRRb1jQOQcWf31YxW6fPgotiUbMS7gkdRTtYE8kl
	 zsoanf7o1k7qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9FAC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661646281.12613.14867829858124333682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a1b58778fb2b201aff822f8a70ff7145013e379877b7b9821260fce1caa37c
Date: Sat, 25 May 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716616462
