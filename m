Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7A8322C67
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420994; cv=none; b=F0fmX9Ure8k6J25vZBGKxl0PMF6LU62W+wN7llOqhTMSjcnhKWQT/jNBhn/mlTna6P+SlmVWZ5DEdO77GTNvoNxcHCQ4GymUy4Ye5C/2kq6HFOlLnqbcpADx7Ofi1woXWKqRjFp7HriZizNXUUuN2n6NIXDj6QkF1+bi5pLyiec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420994; c=relaxed/simple;
	bh=asLnn43Ld+HTkgc0fLM5Paq2IHTtN7q7VUea8h4iy30=;
	h=To:Subject:From:Message-Id:Date; b=hgEIsc1HLdB/Kw7v1x3dTLqtxS2o8hTGip+n0oZ1Vr7Z7PAAnCoweZMYpv5LGhl1HnfhRVK7O9NIdFJ3gJLkNuookwwxwIU6c/nLyYcWGjNI68IFexlQI2ZNejDq/jrGsh3Zuy4yIx65GpG+qa38NQkBqrHgbKjmIC44cOZ+ERM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPEpyA5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPEpyA5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A6FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757420993;
	bh=asLnn43Ld+HTkgc0fLM5Paq2IHTtN7q7VUea8h4iy30=;
	h=To:Subject:From:Date:From;
	b=TPEpyA5WF7AqscN3t5HJK6tyLfqcwmS8aYPfSBG7FGVeOH9djT2YD4E4ZcZwPtnMe
	 32r/Ue6UIGthp611whs77B/5gfShYyWOsx1aIhuJwlC+a2f2afQj+6JYtkWDjnyaQ6
	 ujXFxQOUFUyf3mk8Rw9pp7yLdx1YXJCOBETQvVOkb4FM5XKF/Wm8+8ScBoWhoQcWWr
	 D+maqXsM4ZUwXF+6YbbDLwahOxSf7jMFZzQDLeMn0SA//uwhX57lBKLC4POXTgm1Jr
	 jyP6i5LQ3pux+3/1cWV3lC6nfFxeULLiXO6207Xb55A7p+y6XAOHEZuC3q+di4s3xp
	 PaIWwYPJwB4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA8CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742099361.24162.18002160078193891465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5541ea3d0e68bc0e654ce6abdbc9cdbeb4bf50e9d67d545c9c214bde926eb5c
Date: Tue, 09 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757420993
