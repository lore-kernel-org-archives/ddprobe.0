Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C92420876
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783489714; cv=none; b=MF31j07245ssdiRCcAqAIrYA3/MMDwr8mUgSRk0OX9/u7pnV6jUvnp4YXjQ5IHnwUsy/cR77ywzzHdkedG4/C44QYLXMByashGv1la6YFWGUvjy3bJ3Yyncihwz66szh2PVcw7pQahQ+vcmJRacN23hiWSqD6SkCoStwf3AyULQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783489714; c=relaxed/simple;
	bh=iG8+hEwF6HtWlRYEUKQDgYApY3Lm3hHPwE0TwBbaLBM=;
	h=To:Subject:From:Message-Id:Date; b=SCXrJRsnFkA4dC9ZnIy4okNZn9dCWwhltiGqBeVInFjzT7XdDVwB+LeL0HHKWX42+WqES2bLRMBZQuLwmNRy6XSGJxrCM83eThYdbsA7mK0U0GsJ2XPzry/m3WKrvLBEmP5WYENvjaaA+xsImiXHmLIbMyZkukgogHBJ2iZxk8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=linNbGi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="linNbGi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19D5C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783489713;
	bh=iG8+hEwF6HtWlRYEUKQDgYApY3Lm3hHPwE0TwBbaLBM=;
	h=To:Subject:From:Date:From;
	b=linNbGi8lIHpvp8igH6BEQ/39xejYMTY1d76vMz8a8fJ1PICQm6MTsMsX0vwR1lIg
	 Yj1QqMyo43jTEm0F59m5964+QS7huW4GEbt6+r3WA1PIxOCRl2TZzOCJNEu02VE1Ye
	 XoV0+iqXSISRnNhM005hE2MGcQ4syDM9b3WTefeFzKA68lcxDhSQ5O5Ynh88T5v76N
	 uAFU3qZX9b8LBc9AZ99SalNn+NWPN3DVbfhAOmoXEcpCMWPJHY2zKBx51EW6Y8tfmP
	 AJpVD8g6DG/adAj/kl7h+SYSigor9y3K9EnE3iFm8mhXWtQBxvN1xpKt8FcaqRJK5O
	 tP5VotZ9aoGTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD17C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348971368.16606.8934590788821096851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc71d27b4c29a05151af77e8e90316a33d4ed7378f02f8648033ebc3410b01bc
Date: Wed, 08 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783489713
