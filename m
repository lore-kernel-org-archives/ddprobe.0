Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238F033B946
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761067194; cv=none; b=nYPKYDeGtzfo+clqLzipa+9+tPYiUB60l41B7dp3X4SG57Rel8fL9nY4ssaIKCsFFS4uO/9TIAy9gYXadTEZrxRhIng+kbfvscln8gM8BxQZfq9YprV3+lQLx9s7rQAeHlsQ7AyaSc1sgNMJidmgW3nuLtA2pEA2mYhIi57jUew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761067194; c=relaxed/simple;
	bh=+jK3BsPOEOYJoyoZk6XbYa//p3MZP5IaJ72WV5ZgNQM=;
	h=To:Subject:From:Message-Id:Date; b=FsQICLmxVo1ScQ121a6NQEVFLf7tIXRmMZEd4w08XpteMs/catiShpdSBP4oMAH6m8etMgIJ/xuaDb+OFzN6/ClCNJ4QHos3iQqgZ7aTwAQ1a6vfiOXojykvUKiBXL4KS21jZggVf36csRiwOL+5HecJTVAZZiyaDUe241wO8hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+iaEHJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+iaEHJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F69C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761067193;
	bh=+jK3BsPOEOYJoyoZk6XbYa//p3MZP5IaJ72WV5ZgNQM=;
	h=To:Subject:From:Date:From;
	b=F+iaEHJH9ZWjBxTuj1lKZzBYYuw6ZT+ymmKN7WnwjG2CHUpK1d8F9/xoO73JQY7w4
	 duXPYJ43KAgoIYWbsdP6/fnvMOM2IpwAjXXVCjJwXLGx1vEYayd45/2iELfZy90WSB
	 qq/CvHHMGIBXzEWNqdsOMLbG3qnuBV62J/9qG/jhW06dys+pFpTlrk9C6Pyd1xdp3Z
	 Um0QhaGjGg9EmhmZovhJaduFYFA/kGu2sLHAweQauFvTr2lo228FMqkOnkSz/9vBb2
	 Q9I0qITwGK8GMhvNdKVA0kpkfIci/0rX7yVJo7zypPGfFe9eyENTvGrzL5C6yVlTCr
	 T0jNIaddDiWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C9CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106719359.10028.15910984748252504866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c615ee04df3887f0fca30f22be737c4378c56f1f0b25ade5b31ec3bb6c3280
Date: Tue, 21 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761067193
