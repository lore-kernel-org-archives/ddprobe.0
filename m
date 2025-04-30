Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C582DC791
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746020394; cv=none; b=rC/X7RuK+yT8AZQ4In6dwDuVR4n93p5c2hE6zu3CaIen4vWV9JY7tkUwjA8Cxj9IAzITvJmnyD68WUZIvCuTlGCPAExHE/APsgZgl2V+e08grTZrP0TBMyALOXG1GKU1bvUm+lgQmj6wPXWbw6kRr7oNFXu5d7cZSVN4pxcyT5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746020394; c=relaxed/simple;
	bh=rsvA0EycohCJUzr4X+An7+WC3o1RmvW/BkyvZui15KA=;
	h=To:Subject:From:Message-Id:Date; b=WSMkw7kC8cOStD/2jiUuSaIfA5BK7HutK1OaGBesljtOsHrF1NrsnuHG11TKxDou44axlRmnS9GYGGxfb3Retv6FWBMqsEC68k08f/kFBB6QFrQbJjJayjFfWgVx0TTu3AG7Vy5RpoacuMN961MGIVyqd3OO2N2wN/tT636ISbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhprqO4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhprqO4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ABBC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746020393;
	bh=rsvA0EycohCJUzr4X+An7+WC3o1RmvW/BkyvZui15KA=;
	h=To:Subject:From:Date:From;
	b=GhprqO4Y/q8r4ERlV6ndWcrYx0vOGl8xUki6grsW8yfGSeReFrB0gvo9fxN40YLGO
	 ummKmUuEAoKCcKEuSDLaWVwCYc7LhczE6F7bYHvb6a96C8dverhZvCGM2yhig1/cO5
	 5VupdRuRHWgKJqMbuixz48YNCD1raUHrmyYe3yLhvk3AR8Q2bA/0V7IyIjzs/51ZW+
	 mmYAwENVPxA9EretEPoErauztZ3Pt/g9CHe7fYZy6NXUP7RV9pEkkyZM2xyzigFj63
	 9h23inOo8vo+I3bnoV3HVKu4UbVAiQmTQSAnS3kOpNo5AKhVyCNJe+RrZKHpePxXnY
	 Vn5V6JTFYU7tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E58EC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602039357.32252.17273453664166893646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9bd554a86174217b5856fc9c55ca456a05ea32cfe17c4c813d749847ae31b6
Date: Wed, 30 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746020393
