Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E6C242D97
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783115914; cv=none; b=G+2hU86zBcHSeOd3hlGK/OhFWQc+lm//7k6eD4X340oiVUHOQHjWUw8vRCVQr71Nu1XudAOQ7NKk/uclRaAbOBqxs+l1dAieQqc4MFKnhJFeAFGq2zh+pwHc5dbQDz6G67aW/fh9FK7+N/ZXyQasJw3Y1UkP9gZ2cLQwYnxUVrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783115914; c=relaxed/simple;
	bh=1N9isxr5HncQG4OdNlSFHUKaTCPqqMjIHUxaGQrn6Y4=;
	h=To:Subject:From:Message-Id:Date; b=ReNy1MpP+q5QAie/ZF39U0xXpd3J6xIRHIOes0Ixx/tqr2uRtKnbMt0jUQnTcmDLFUUrDe+0E31kF3RqJ6UYvnhGPy2C7ZreAaqOF5N+OKPnmDCV9B0Pq6/wA4AdRzDmFSh4qnOj6v4p2uvaic2b44fQz4QdolzY3B8LvkHfK4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkUDSGqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkUDSGqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59B3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783115913;
	bh=1N9isxr5HncQG4OdNlSFHUKaTCPqqMjIHUxaGQrn6Y4=;
	h=To:Subject:From:Date:From;
	b=QkUDSGqy9tLAePRAHwrgBYO5Aic3iZVPySNf6/fANZp7kvK4ukJFlf9BXhHTiT/UT
	 fEcC0ztEIod8QhAFJz13W8SKR7U+Y5pUSd9G4WqbFv2FkQ0LZjnnD2HTrE2/DHk3CZ
	 CBv6hsfzEmTXA2jGDciYxDF3LZi/HHW81dSYYLhmnKdkYUG28cThcHJQ4+Gnf4Xm2D
	 Nm6xd82YtXa2hyiwEEdRTzEOqzyXou7azzP+iqayAQxKGW5Lq97FeqK+UYgrCRckgT
	 FLGnNnrWIpjNkj6j+3ps3jiMn3hQDOOfsIQd5CRFETSGkG0+iyTg8Jwb7aOO2QM4GN
	 Qj8m9lsukMPUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72CC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311591368.15900.11352992365569325311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212b7bbd81b51e1408533d0e0097ebc5f1a9c30cdbaa4e48ae65170fbafb1e13
Date: Fri, 03 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783115913
