Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F9F21518F
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746226794; cv=none; b=K+YBLstaRe+B1xWvxtSLUOr2RXQjwj6S3h9t1wibrXwR/BL8cwid33ryUaeX3oNmsikSXo9grzmEOYPNm3X4QxohcQGDTaKmrECVsuqcOCgH9zSF8STyWDFHElUljO7KwyHj5IlZSVZO0Ob+hyznFBt+IkkuSrApFwOnUFlreII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746226794; c=relaxed/simple;
	bh=w7dJgooZY5VRQxSfgjkk6PfCMQNp8egjmasy61gQ6A8=;
	h=To:Subject:From:Message-Id:Date; b=BellqDEnW1ZSpca2JpTdykYB463tJchfJJjuXlbRrO0KW3HYzxYjsvQwcGMORj0bGQKbdBKocVW/p37aNiZKGHW2sq4JQAETCgUJDRP2MvHTa2vEznzlROLAxACdSp+TAoplWgOfHD2rhdYwzRrGTpq2oyn3QBvdrV8UM79Xj4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJLRVBlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJLRVBlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A47C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746226793;
	bh=w7dJgooZY5VRQxSfgjkk6PfCMQNp8egjmasy61gQ6A8=;
	h=To:Subject:From:Date:From;
	b=fJLRVBlEDuKLa0gIW8MHLr+dFVS108OD0Tjr0Ci9h/klr8bEflgd2zInLP0eERjB9
	 7CN8IGwObbf1Xu7+BAt+WzxTblVGX9QQ/gpzfdpjaAEuG6OmeEQVsIXWHARA5/1u+u
	 2nLLpn5W7oLD+iqtrJ7of8rS/oeSQYVlhlm88yznhGP1sL8nJlIFzfvBMoq5UJWIvj
	 9jHldNGCwrGPjXTrQ51CTppDoQn+15OI3lc7vfAGEQuIGNsoTkUeUfoCEUZl9smkCx
	 zM9Hv97yeJXMvGjp95RmMyJn5d/671CQS04YGzie3GQ9SdR0RT3QHQjmY6fHtMFyIU
	 LNZNxKrXTo+aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91302C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622679357.7189.497703265799249266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c5cf5ce1a137438c38184b3a11a646b1f8c55c27cbea96fed6ec27d50b5b10
Date: Fri, 02 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746226793
