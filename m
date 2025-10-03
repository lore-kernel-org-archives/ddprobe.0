Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1B52F067C
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759497594; cv=none; b=fJ7GBfxWYuUPxMRHzZA8+gyASslJ03A32C2lcRAvq9OMNh1wgnHMkdTuCCk257rtFzEFYgwHVATZ3n/CGlUrdNywYAvrIwSJ7C4xxRTiXhVUv0/0prz3XCyghXCffRoM6PfBxjJEC7Pm9fECLVfFI+EDze4WkIGHrSpwN6SpmHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759497594; c=relaxed/simple;
	bh=vwGtvuH/rHgRuyUQTqgVRzjo+HdH0kFQA5x0KxdCiMw=;
	h=To:Subject:From:Message-Id:Date; b=J9YZtn3OO59kGuGWkQ9ca/llof6LlncF7fqX9svLWG5wpfGOExLR9semDZOXEz9XUstL0ime0/fK0dFzk+M9LcIpGbFI+resezBjxImghoynPdVIxa7PiP4F0M4ejPXcn7mzJYClEQENYMyk8VUi7yGzUqo5MycbfYex8sGgDCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpJK5k2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpJK5k2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C13C4CEFA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759497593;
	bh=vwGtvuH/rHgRuyUQTqgVRzjo+HdH0kFQA5x0KxdCiMw=;
	h=To:Subject:From:Date:From;
	b=JpJK5k2F+JXnzkEIO9Ld7pI5WX0M3X2tWtuaSdWzSkJlQ1mssFjha5bqrQ3nb0tkJ
	 Fr4vZA31xZGsH5aS0qFFcz8uqda8bpj1xykD48GRylWHcG2Gb3l+wfVSzZj5a1ti4U
	 KzIcQaQN67ehsnUph/KeFsFvN4xCQ0Y+nOPZoFdZJaadDasszUbarU3kZcorctJ8jL
	 tZAm3eX2Nk9OHXxjuclj3bw0U33cS2rWU54pzOxEvF7a4QeSgvklT42IujY6lsH4bw
	 0reoM+Qx09m7eiWCesZAoQSoifhKEu2YstkgC8YX5OzzrPdF53Ikm+mcy1xsWmkxDG
	 2oDojnL9V2i8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A45CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949759358.20449.18379431867036226452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97548cbd7049620b3e2eb961678f965fd9b7d30b4f8bb806a80a10197709859
Date: Fri, 03 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759497593
