Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4854D195F1B
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719498263; cv=none; b=smpN2q6ClKc37ViX0j9A2x0HwXf1CLRnYeqpG0KidlEo01M2MKft9PiyPujd+yGggHrx+B1DeuflwN9669nWlF0G6YNwSHc7vKXSgbegr2MHcStYvPk7COBSfD01bHqztO1Wc59SdvWNwXyu7ZgqSF52dVVtQ8V/iUrTzz7tz/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719498263; c=relaxed/simple;
	bh=5aUBajBoc2pWlefMZLjLg9XQJyY1YPq2Q7akw1s9CJk=;
	h=To:Subject:From:Message-Id:Date; b=b7ewZJ3yjsT8XR6+tq+ODOjerVg/pzGeM8aBTVdazc696T1q+WXk2jRIvBVopjYtt8lftMGDaoFx8nQgPlwOpADoEP7cDizxZMA5qxlBev9nbzFJzkbBTISTcLawojF9EfbRJO8db/nC81HESX3UyCHIXZWWCBvBqQJxMK0WlMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+h6wlkS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+h6wlkS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85C3C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719498262;
	bh=5aUBajBoc2pWlefMZLjLg9XQJyY1YPq2Q7akw1s9CJk=;
	h=To:Subject:From:Date:From;
	b=D+h6wlkSCVMCu7ObcDeP7Hrn3zNKGoHGoGOK5JF1D6cLkcjl6/rWQbShVPjv3M4NY
	 lr8MelLIhWgMdQU16o/1eLrgWRoVWMda7ihzBj4bioitw8WusTqyUj5GSU3DKaGdmP
	 C+wDkfrpcKSa8bm53tlo4NvkFj9xWxKi9l1vy2netRuLfoUckZ/ETs3HIY4M8/ZM7F
	 Eu1OW2BXbHOTJAp2sh2br/J3dDd1YKRABTe+hHzj9yytUVVroOgTz4alKuBo+U76gd
	 Ne1Tfh15WvUaqdsOi/xO5pUGPMtk7P1Yj2WSpB333yg+I2lunJ27aF3u9H0wBjyJba
	 8A1fHWzDUvVFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6926C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949826279.26378.5500506232018070303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5ccd97629bfb7c553b653cc4c88b8401f02d30954350ba080ee9616da7d30e
Date: Thu, 27 Jun 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719498262
