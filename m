Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100AA3909A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772489694; cv=none; b=Z1hYYZP4fO7LSnudf7GfqgyiwBdyEtbKbqqu+NFAeSfNIkmq+UsQwWPxCliXWxyVbW+dXqNt05PUdJrrvGipUcbyf9zMvRkEflCJgFQEPapLzbTfyy9H2xIS779Ip2/yL6TiqlOZsNIUGqAp4QnHTSP3ma7uFxJHCf31Ho0VK1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772489694; c=relaxed/simple;
	bh=9xma1ryyAhApHh9SWimIThX9ned2sy50om6e7AoNI6c=;
	h=To:Subject:From:Message-Id:Date; b=OMUF7ZF/fp5X8UGlbm7Atv/jhw9Sn6OhCLVLVq0ZFrMUDbxezlz0V/1D2pv2TJOvPxdowateB7fEMB/2ZAYivKjPXMv04Uh7xfdA98l/E7oYeGrYun7T01YkVfpPbT2gIw55C5JlGOg3AqKMMNGGYLGgUKrzxLvBNDM5bz284oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIMvr+Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIMvr+Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD83DC19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772489693;
	bh=9xma1ryyAhApHh9SWimIThX9ned2sy50om6e7AoNI6c=;
	h=To:Subject:From:Date:From;
	b=SIMvr+OgzEc3SUAVr+K94DzCU/R0g3UB9bdwG7XG9Qt4p3xzda1G54h2eld4LznXT
	 bcIrKD8m/9737NWxQWFwaFwDexea7NB8umzxxdBJos4KbTyA5wqgiitQpulmpLS3Yt
	 +Pt7LcfA05yb1Y+kGShvUuor0gD0uhC0gO0n+TlhdTNU07uw8NAVJ2ByUKjspAB8GN
	 /YzTiy9t6UtusYrNyD6j7DIXt6gSU2LY4k0OSFR+fZI864rG1JCwDB7kyaaS8vIqJA
	 4g2EpUiQiGvDeM+o2A6N8rHTyXf3eGL1fhSL2UY2/ivuX3Qhv8pGXY7cACay5FGCqs
	 zFJhscSiMaHyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA8EB3637
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248969360.8774.3824473772037637467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4dd4d3aee53ea2403a3e462ca291c5f91b1639e6445e03ce4a2e448e0f7554
Date: Mon, 02 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772489693
