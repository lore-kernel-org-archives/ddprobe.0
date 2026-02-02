Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5746E280CC9
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770050634; cv=none; b=kFwURYFX8jDiQbks9JO7+qIekHXy6a6Ypfs7I2HAJwZoqfC6O0IUT3Idy959lDAwAP3ZEz0rBeJ21R1HEmKz4913jsQflF/1axj6fjOcX+OIh9+yqe7FNCTbRjeM/JvdODoZrQ+x+MyMPSTzM5/B1KwQ2fhIl8IpcuDTpr2qqYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770050634; c=relaxed/simple;
	bh=7mwYxo+bq8YLO3ZeUuZb2tcB7gfyGokP/1v0fznqFH8=;
	h=To:Subject:From:Message-Id:Date; b=Uh/V59KiFtFoaXn4PMhNgZ6PfVj4bxL8EedN0bcu471bY+0PU+zgOWvYt0JJqjcGe6gZSi5rqyN4XrGZ1nb4Hb1fcBFGR2PGsHjJJM2UWHzLotGBEeaYxFEhb8/VfsMvvjdm69eEOQHWOVHLTglXDeO0Crfsj/gkLQkH2AX0N08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGjDH6gr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGjDH6gr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04B8CC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770050634;
	bh=7mwYxo+bq8YLO3ZeUuZb2tcB7gfyGokP/1v0fznqFH8=;
	h=To:Subject:From:Date:From;
	b=lGjDH6grk/FjhWrtYbP706PAWOy5dA+ou2XEXCvNWrCKO0/mJzX4lKt4RlY/eviTm
	 JofRrYpzCuoBMgnQUlGXEvQPhhQGIPZ+JmNqI5WEas9F6+tbsl8FlVeHNoYf55gj+F
	 pEDRMl4CcdDq3crOE7c3z6dvn3/1E4afudQvZrIBNGSAVckEPoPHzsn7oRg7405NX2
	 J6aJB/rVIgICH9IRMOrDjOb7bNZ980EzOSfwJI1EMf/wcG5/1u1l1rAEpjJJTbsZqJ
	 bPTEvfg8fLfsFUitDWppiFIjYHZHbwPzgItzv0vFXJ6JINiSKcfYhFKcfw9qVqgXV6
	 9HoDq8ChkTZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1939E7DF08
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005063365.8118.15412877427000621941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42b574f815962b7eda5602723142d750000e06377b2c11e7328243fc1eb0a6b
Date: Mon, 02 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770050633
