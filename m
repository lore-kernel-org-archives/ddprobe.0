Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C8F17C8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712429297; cv=none; b=aaulRCjixCMHkIvNKzJJFkNQPijzkalIqV/LpEgWYhSt7q3rrbOmsw+jk0PYYTROdaZQ7+V2PQ/CaVcViCrRE3Z3IwkGDGgqK402UU04HDoCbSOpsYIpSmYOgzBIhIpT/t8OBctz02454q37AbtSM0YNg6u7DempekhoL6Yy9po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712429297; c=relaxed/simple;
	bh=PDBinXtWnEiHIpg9HtsP8iY2zxRZPEgl8KuMsDzaDyY=;
	h=To:Subject:From:Message-Id:Date; b=shGFkTy0ZUsnF+gGl1IvlJyG+2RosMaCWn/pJ1y4MUQPvrhK8OQV7NRILdAJHj0fWr86amKzTNJWyuFcESsjYUmseE9ikIDUfAwH0uczpr0+UzC9HhJ3IpBR8mHAbAL4mAtBxQMNbqIaUBkVrkcVb2UDfCdnYmftXy811CI2JdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDPq3Sg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDPq3Sg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789ACC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712429296;
	bh=PDBinXtWnEiHIpg9HtsP8iY2zxRZPEgl8KuMsDzaDyY=;
	h=To:Subject:From:Date:From;
	b=mDPq3Sg8JFkLHT298hu9Aol33uwwDtW3f35eTIVw/3vk6QUUjI1MIsCeAN5mfxhYI
	 u6bC3aLNKlzU6Wv8Gdd3Pt+SrdfCqf8JMyVmAb9MhxmKbCJd2JBaBvUOuMehRf0r3r
	 Eof05FocN9ButkiAXz9wkyyeOzd3CrGWmOpFEUnyJiKd5WFTQ3c81oSh7L+F+qly/B
	 5lX35RpVnADx10tISjFq97JiyVk7VQPbcLHhQkclRW+T6HWNYUp4LkISp0ZwGbQaVU
	 tIIYhnBN4dpUK8G2Rk48Ylr/G0V6ZvUJUOKUeWpcYaoR4hBzbStLCfjAvg+JeG5r3d
	 bT9z9hN71P4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658D0C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171242929638.1768.14118306667732105070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ded444bd566297a9ebc17459ec8579ac685e45aa57292363708340c47e404ea
Date: Sat, 06 Apr 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712429296
