Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9DD2A1AA
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735826754; cv=none; b=EoD2Ea4i5oNM6GsI7q0w4oQKFrlEfGDwUm1wri2ZXNf9VkGWNs2pCE5maA60vY8w6l0GwBGJ/Kt0guCnBXFd+ECMep6mAQpuJKkZdVyhLH3HsRubN8dLX6lARDegdruppw4iUnNxHQ8JSxUGG1ONvi9G7nZzdO5ZUatIl1ypWHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735826754; c=relaxed/simple;
	bh=sf1lL8JeJcU+7cRImyA8Hi4aF0EpUcerUBYVgLDJtNA=;
	h=To:Subject:From:Message-Id:Date; b=DafW8kqXH5g5dBXAWUFBHf7Z6mdwpMsbpTqBXI6Ai1/PNKf3+Re+MhIZ0PAMestncwBCqFFkEZSvTI3U72zBG2cDaTZy3B430UyyX/n1fmKdpRHf2lGM2Yu0XUMASdN47JVyO7aHDVYJWHtL0DFZgzsxuidnT+++VCtl0bykpfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhPrj5Ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhPrj5Ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B32C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735826753;
	bh=sf1lL8JeJcU+7cRImyA8Hi4aF0EpUcerUBYVgLDJtNA=;
	h=To:Subject:From:Date:From;
	b=MhPrj5Ew8ZTRq7CdYsYu3IMXU5f+Cf8Tw0z2OSm5JTpKqNC/6rB3BWsQh//+inMx+
	 7wkb8ANtzs2Y5HzV34KD37X/BJ4iJUJhze9s8XCL8zGpBzufs+V0US2QLnzKoJggqp
	 Nt/aMRU/8058pEVRWQrBVJ0R+A2bO5jJIWmWvy3wuybXt3lE6dnEvTz2Tj93I+/mLD
	 +OL38ubG3XPZe/o9BDgpUoXUJdzHcAyu+XCIySsdqIGxhxCoYTBwjAV8ua6ssMtMOi
	 seZykuFEN+cR0sSyu3mcnlCptowF4AeYKHG6GUtwoCQKnQ3BHTZLY433zQbTFFMLFN
	 McXb3Ppr50ZGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6D3E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582675360.899.7684211288331361900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793ad4779f77fedf9cc8844c0dbeb40976c0747b1374b40f77896cf7cc7dcd5f
Date: Thu, 02 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735826753
