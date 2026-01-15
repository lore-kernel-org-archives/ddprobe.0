Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163A915530C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768517634; cv=none; b=BTS/vfZ/OnrKg30TlDv3jHYlvDwvdFI9izHYbuKL/jcAS91FoXigNaNgucrOP34a2mtmHDb7fXU0dKdqyzhXfjzXo1Lpg5pnPK0YW/W9fW8CyohyEMbIw4sB/C9IwMuLENKRbsVqSnm/qYrpe7Jk/Y/3Th/P2Jdq3N3El7QOKV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768517634; c=relaxed/simple;
	bh=TDJKEgc1gocnMfmz5e2DwERqSAQasxCcPqvg7qc2UJY=;
	h=To:Subject:From:Message-Id:Date; b=Q+08BvKZPS3Ua/XTYd8OaJCDxqFzFhqY6acB5+HIN067VQ/msVa/8/ilA9k8mpavCSf54hIe4W6km9mFsRXOlmEqYQ1wsM8w4rCAjPPpiaVNGv0vfv9LeXB04boDQ0N7XJ25qcjkuWL2N5ZC2i84vACfbHb+3ThpXdTrAdlTp30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z69NAIur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z69NAIur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBDC19422
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768517633;
	bh=TDJKEgc1gocnMfmz5e2DwERqSAQasxCcPqvg7qc2UJY=;
	h=To:Subject:From:Date:From;
	b=Z69NAIurJo9awic1md8oc/UVF+GEFJ5fpcYCQiEHNBzUXjAMHMCxZkwNVEI6FV0vQ
	 OOQ6Jq9mzC1vRp8B4Uq9cppcIEuUiQXyr8diOQcMozNiZ+DGP2O3uPLxHTY6weFf93
	 Pl11P4/KN+/k20L8vuvo1j/O2NsbRaQdd4JXvK6jQmlD2beeEWlv1o7xiXKo70EqSo
	 5RpopoJBdBXTEekFZM71hlYShoF0KJmjML48B9E2ySc9YVaLLGZzEWrzir38hGgfgo
	 T0JzA8UD6qz4tTLC+FerdV7XqsX5Cd+OOOXwQ+pwtd7JN0AHL62eOJmkUPpL4kGTt+
	 stapmsQxBlJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201BD46634
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851763357.28005.16185312014826459381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48095c8c41d4bb6606989bbc797cee37d263f449182446f9b6444ced94ecdec
Date: Thu, 15 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768517633
