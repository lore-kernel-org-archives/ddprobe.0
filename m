Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344081F7098
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766076834; cv=none; b=FTdibMh1AIjnz2p0OzWCN2sO6vDhyqpkIx07PRdmuSTXiL7BbKIBWgFR+eou4jtOkunmXjm7c572crnU+EzRTvEtw4on7TnHzpQkplW5Rr8AozCQLC9p/LD+Iu8/T1HxTPT7vtXhCjgjmhpv3FDbF3yXzHLbhaW+kkSiISdESPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766076834; c=relaxed/simple;
	bh=he4u9//wldNbRyVAwl7kW4oA6s72ytsUVbURWFYTe+g=;
	h=To:Subject:From:Message-Id:Date; b=hs9mbGYaDBq8ErRfahtkQ1QIloVnDezJGYMbCpupAlOz31Ej175mvZp3O1xZqoMNl1jBXgUKxqy5KLeBd06eJrz4ObfrYXB5xKh9xRRZMF3W8iE0MYG1rIL8Wu/z7RpLr7PdVltkS1LDTMUOoBvgcNwffH3PuHGCpfw7j8f1KY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6umdtiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6umdtiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C42CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766076833;
	bh=he4u9//wldNbRyVAwl7kW4oA6s72ytsUVbURWFYTe+g=;
	h=To:Subject:From:Date:From;
	b=D6umdtiETrhQ6gTc6b1KJiiuS8MkLyM/Uz5i2jh2cWBYNh9lQEZKsQ4/GYnlX6cx4
	 7N+zDJk+LrJepyIwSVzwkeId6vQMaFjFXU2FRS2dGQOhFto5ZhtU8JulbhgcGoCEr6
	 llv/VzblTStlS5yX6gg1V9sSNKi4zFE4SsA9YdSjdlVvWFGAFtUfFHxv5AN3e8wyFN
	 wQsMH/3zykaK57misVZImEtg6quFICJhzh0BUlsnpWIxzKLQHsMKOcbt1zVUZEua+0
	 1beP7Tac6FPyEksV3hU+poSHXlnX0xjzwyaE4XWXMuAwx7FRceinMVl2oQseug6bVg
	 CC9eErt4kITtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D2D6ACF9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607683358.11318.17526251338958308744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf841f0e735996c2b0ef48c5f96fa19a0f3a8ea5fcdb430cb7aac9a243f4496
Date: Thu, 18 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766076833
