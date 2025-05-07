Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E0028DEF3
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746658794; cv=none; b=nEafi5SoU4MfXUKc6iNNBzXKNLRgmo2B+jlr8LvBHIXfr9ok2D8J3xLBJvQym14Xc5JBUohP18ioyWbOZYVxF7H7ZUDP9iedFhZ6IF7O9Wzhb3IvOCugyjOtF8Ev5gOtC1AzjkMgwOZVLu4bUwEYu2rmNd7eOrd3JWHkVI21OBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746658794; c=relaxed/simple;
	bh=q4vISjLjNVuj27hF8i6vP1cenfSV0GZIw+4NdcSFSrA=;
	h=To:Subject:From:Message-Id:Date; b=sQt79ld+VoIktpxS15yXJUnuKOU3xYkWZQtYIQKYmxWEgVJV8rBesM5W4wqDqRodYXiYChiXlOxpvpgMAY9/WauPkkShAB/jWoP2I97isQjpzXMGw/NZqFEpc5f9ffnwEd9ICKvcJedE8I4bMxAeuGSekQof6yjX+LamA87zQUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSQUJnDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSQUJnDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E40C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746658793;
	bh=q4vISjLjNVuj27hF8i6vP1cenfSV0GZIw+4NdcSFSrA=;
	h=To:Subject:From:Date:From;
	b=oSQUJnDpPI7HtFytp4sxGKvWC9RLXJLBI+rrPd9l9YciC94Pfoo4n3Z9+6o3TRlTb
	 mztvlj9gWpc7iGwAGq3fyTWsMU0E6BqC2q2YB/QZaFvwNX1BUvDH6ERQ6PTsmlHkCK
	 nEyD1UHMfLnYcjxH8pNam5vTOnbVfh3tEYnP0R/pWIG2qZcEJOKlCXW5W0ae3+vBdI
	 bYfO0LE5aUrH5GWBOueHYdcH7KNBbrMx+BKRDqy6ZSizLc4DOjJXAOJUlJioWC46ya
	 /WGnsj2Yt8y86av/ie9LoNovl1kAdRX+nMBRh6IKSiQL5k27jKC6fqgttIEP+MSo3R
	 Q9CLCPNB8G6CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938BEC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665879357.21994.1136324185746838470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24612981bf1142a7616e4a6efc199799bce53aaab18a70cbfdf0eea0efe016df
Date: Wed, 07 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746658793
