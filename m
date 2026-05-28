Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2313F9284
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779988954; cv=none; b=qYcbVAHzI0FS4cZxqRW2fm8q3NFejv1xra7gyPZjhuIFp2jOKI8pjwTFn8R+tSSqxjmGzTubsaWnwUOld+zLY3TvvJzM8PTUEj6+zqseIi2zMlt0owsmAvKrctLt0LFTKLtw3J1VJNbD3j8qPJqfkB1tC+t3NyaVgNdmgKbMi4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779988954; c=relaxed/simple;
	bh=GMFL7SF8bWyjff62BBrdmgPvbggwvPx2g4uOYG8vDNU=;
	h=To:Subject:From:Message-Id:Date; b=IBeVUr2U7LAdetTO08VvHuHwGWzZjf/q7ZhrNEBvvNNp00Eq81c+d4fMg6LYz4ytHD4Y4bB5ikl7+Jx8ihJd8vCKJZzNZhk915fC36oemv9+vSzUhX4HOibn0//iNFy4qpOVlZOd3svhYHOjxcv0OR8E38TJGCx0nmFVRtb8fJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssTZQMvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssTZQMvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD30C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779988953;
	bh=GMFL7SF8bWyjff62BBrdmgPvbggwvPx2g4uOYG8vDNU=;
	h=To:Subject:From:Date:From;
	b=ssTZQMvTUDpfC3l1Z2ebxLO6BGRyB7NCbsrd3RPz7FBwX7MVne+fDKmJruGIKZFvo
	 hmeXgI0B8zrQuTkjf7P2uSLHP8lVLvmeSAEE/mE15pY3kFth8xlPfUJUw5do+6GXhS
	 eqQReGqZ1lrI1Gv47EmES3RIO+T4B8mPZj76uc0iqXYAZfe0EA3P8PICSNqy+bwu+J
	 8cSn0MacYxWlQTf9Ee2mDl+9OWrgJlNJmbKEwuNu5U9UCW2tcTdY7Z9Cng41VysgZv
	 vXxH5zhrQoQLVcZW6OSj3UyKQ+u2wpcW6G+t8ju1QgFntP8zTJUf+bQO0kkwJR5Cc0
	 TchrDQMxJfpaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909BCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998895368.4254.6756501273798452983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381a61c1e9b908cc507574372c5b2b086ea026cf24a91caf87617ab171daa478
Date: Thu, 28 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779988953
