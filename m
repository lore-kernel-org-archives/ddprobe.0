Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60B134CF
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764306774; cv=none; b=eyn2J+f10UxfKd/BCU83TTuZ9b6KowiSQDyBZ1qtJKWPES4v6vRTf7608c5pPAEZ3xeBMBGKbbXTPXbLjYVjCBYd6p/u5b5z/eS61QUvDbQAq0sP1g0PQXTMRmOz5IRpqRkXrDOQX/ZWYePAqIJKuNvjcCTI4J1KcAl0CjZAU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764306774; c=relaxed/simple;
	bh=HcXSJmsClgQsvJFTn7ByVV5HVmIhAWpAGmNbWoLN38k=;
	h=To:Subject:From:Message-Id:Date; b=eC1AZK2sbSIBDQDIF/mNyIsjNyRQI/5fmjHcdoiwJ+5iBLZUeAgoY/yjzN0bkU+ZCx5YI5g3NVAj7+3MasNvvfuRmcVKhe7btlrS5AyseN4u1Ig0NnEoe4oA1cKuIRaPpqgCZ2Xc4leBjtZrgnGHRAsVEppRKQ6S8NQ8qkoIIXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CH+DVSsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CH+DVSsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FFEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764306773;
	bh=HcXSJmsClgQsvJFTn7ByVV5HVmIhAWpAGmNbWoLN38k=;
	h=To:Subject:From:Date:From;
	b=CH+DVSspU5W224rMPStMOItO4L2LXScn9OLhvs/GD0RNPpsrXz8LW8ZlOsu8D1xOa
	 nXWdgbXfYn31zJDVRGiMOBrZGYMFey+Vi6z9+7BCR1yTvxB+lFpL/Q4OrgSqHDrN2W
	 HsOjLFImpIy1qA9w0qs8AJ4805wmHFE6TRK56xfrzj5vD0gYHXFIqA8Qg/GkT1mTBQ
	 P/vS67pqlfd0OPRwoLdwFemStylUEiepzxZsrjT6zP3QB9A0LJqzxPlk6KZouvG37S
	 Aq5OVW6Hz7+dPnMJcMA6RZD3DNLMxytjtBwi6L+FnDMigmB9kVKjAo0UcpO2D/p8Ng
	 pacFuyo/x76Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C62D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430677358.17905.13368927943157077195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719667df0643574aef2c9edebaf2662c2dc59fd89999df2f0c3c03dff031bc8f
Date: Fri, 28 Nov 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764306773
