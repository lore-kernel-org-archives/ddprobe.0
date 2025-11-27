Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C53161BC
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764285174; cv=none; b=Vp+8zDhjyWLGC/jfZOunbIhz+409dREqMEnmiCo9zeL/TSlCNsy/5Nuc6CUlxNQbcohVv6N5qP8SvHKB7ugASO7sQ9SvlJFyPZdL6Y93JWyZ0dgY1yzjPsaeNKFm+fgiZqOytZ7q/RHMdy2vsnuEeqGVZMEZtqzKnoGAR9NrCRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764285174; c=relaxed/simple;
	bh=fhcj9cLo2OewLTPutlj39/56cgzxzNRZWseFlWJz5iQ=;
	h=To:Subject:From:Message-Id:Date; b=oURHdKi7+lJpMvx5tkOcVpUsyMSW7sytnS1eZYMy3C9qhpi5c7KnwKixNLV40jL/7d7HmP4wB6UD6UFPFaYviPI2IaLRASLZGInbOFSNce4cCG7yBuw9T7wt6qEIPFKMZbSf47w4SB5dP8QyYQ//4QvBQg9GLJgcWg5lRU+O6/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQHxxJQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQHxxJQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480DC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764285173;
	bh=fhcj9cLo2OewLTPutlj39/56cgzxzNRZWseFlWJz5iQ=;
	h=To:Subject:From:Date:From;
	b=ZQHxxJQcHHitZcnygJ5vLF6AkR3sMbE99ovcfqEBLM5hYFfQfqMTrZlidRzjBAd4J
	 879IQELZuAkCEbwebL11gKvD3fxgikMriIxWS+ewfzJx2LCE8rKa6edHjOEHsWe3VT
	 892r1I3sPreLlCMThJCpYBt82K7Xsg4l32sZgBVHeJg1/iqzV1adN4c7/iaD8TKI1i
	 ss6P/5W3uKmB4R1GVXXAhD82vWIILpd2UJzuGN60NhEiiG21x5iKTtIGoP2rtsZ3Sc
	 jGNZxkfBmxDHtLWW+HfZx5xCjYiLydl7fun1pXX6Z3sQ/pkjbm9mectn+mFxQQfgfn
	 Mm3pGdrZQ00ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91273D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428517358.27095.9069219404219400164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0a01350c199c0f8fdc362a7189abcdde8526801225f66b1f33a6f44cbe9d46
Date: Thu, 27 Nov 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764285173
