Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F2C1EA85
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718041703; cv=none; b=e5AIBs+V453Hgqy/t41UDbFGTiCBVhzRcek9MV6uFhjwQuMfnKnbjbPHfZQB0jG/QUDEm+g5jcQXjiln/WHGAIbjkUr/0nyx56yDlmWEV36I3MPMfQ6loJW38IY790mDaEfxB+mhpzEcgU1190rDcjEJI2cGfjJztlPlhk52iDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718041703; c=relaxed/simple;
	bh=TOx2glX6UmhGF972wL4xGzC/ZzDXFrsf90DHfZzGcvc=;
	h=To:Subject:From:Message-Id:Date; b=lB6Qfk3arPp2Ask+4BGkONEGjqd2l8+qzuZpoein1qPOlJYPwy9MjkVhceLfL/3R60QAdTN7ZbASx0gFdLj0pdPeIwiYzumuxsEwW92PTchnpIfc7i+bsOgxhP6lu8oXcSjY82XgnY4bsvf0tZ42AxR3DT4Y6j9c/dyZ+LPEgBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyZ1Rtjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyZ1Rtjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE25C4AF49
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718041702;
	bh=TOx2glX6UmhGF972wL4xGzC/ZzDXFrsf90DHfZzGcvc=;
	h=To:Subject:From:Date:From;
	b=hyZ1RtjtyjeNdOGoLJ9q8GgZkGjXKdRojaqElmCfftvE1I8V+pSZjMQg0xiVvScEe
	 fR+aXn+R+QeLumndVgbMAlP/lbP5R99KM8vzw2E5k4C8PnnIugvNdg0hwG8X1ec0G2
	 JfZyc/8SQQ0HFKJZuX3moubQkRWY6uAGgtgZmJNVekD3Tv+H9eH0emN4nwYAITLAn0
	 NkZDbbZz10C5Pm9zbKzyiWWaVZ4xVJTa2O65G0V3mb+1c6GMS7vO/XhHFGUn7lTqts
	 JYggoyC8y5t13dJTOH/Ky59UUDLwPoyMODUnz/QbW6wqYJDyuQfzc3VtunZYhEmI67
	 X8xyqBhKmNMwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE7EC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804170277.24810.12340809173256638787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b378d2268b7cdf107939eb2f4c2aa993164e7664ade5a1b22cb69f1bda5fda0
Date: Mon, 10 Jun 2024 17:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718041702
