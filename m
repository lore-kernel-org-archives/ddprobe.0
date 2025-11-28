Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181EC1A9FB5
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764348174; cv=none; b=u5OkRxlWBmNKEtszwHbTtxs8GfPPdjF4vtRgfmkG8praNHI4aI14isCeJtYKruMdKYo1wKdyapXD+/k8rrqFEzH7ZogZk6cRldSTB/uG/z5n/yXhxYUclvG+8fu8JOfsN7mATqZKZV4RlS9SQt9t/QpDNg5MhlGGNcCgQT1UcNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764348174; c=relaxed/simple;
	bh=HLmjPDrzB8bIHEIQe6PmBSSab0uHaUjxJ3MzvPCON9I=;
	h=To:Subject:From:Message-Id:Date; b=JbTycExVrGjYZ8nQxODJw7J2cd8Bkamgl+Pp7UEqYj/piI8wPYtU6fMlvhRA6mFjS5fIA2pX9B2rLulXuy21T8ZeRWSk/MN6nNQywY0HXvbe7Jz6R1gXrqIGcYXR0y8rQEDBEF2u8tbd3kGQqqud+uWUbO1SykGyYUR9lxNUxOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7/YMIgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7/YMIgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764348173;
	bh=HLmjPDrzB8bIHEIQe6PmBSSab0uHaUjxJ3MzvPCON9I=;
	h=To:Subject:From:Date:From;
	b=K7/YMIgzG7NUGaj3Xdlel9VhHDPlm1J20nfJodSNylaZ+jGyN7GnB5NQJMjuWTzzT
	 yv3NJ41p+0dekxz4nPMIwDfyrB5BpRJZ50OmstRRWXMmK68jtPM25DhKo4HG6Q8Zez
	 pBpHLUu8nWreZVRvh4Ze12sVjADPR4Na/TLzRdyibJm6JaoPntg57jdItA2Fgi0VHq
	 iAatZnqy9xBspLTyqRp7tTQ2QnLvLRmibZfwr/CYnTsqc6g8mF3OFToau6GnwTmWy1
	 fH142dykIvuBxyDS1nzp+G5/Rny59W/dMD8IYYWRvFDF5tpWtH6Cg0rZaP0pxlVNzc
	 vo+1aXmxIve7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90396D116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434817358.1042.11667762178190515951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c705a948fd608756a88f09614f646386b137ef49a0692c8a9a13be4eb31e9c1c
Date: Fri, 28 Nov 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764348173
