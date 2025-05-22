Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C863CF58
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747879793; cv=none; b=tLZ6gMQkjt0Uqh8uxYJ2qf1jerbM+KknsX84dhJaNnuUze4FdmXS5XkQ4doFsUImH6jCu+c8KA9szF9+m7MAb8VYmlJM06+JGF4dW2qxUxGYbbz6m85letsAcTiZdWAHEEeSdnsKobRx1PFlVtMgy7ROHn3AHUCCVi6G2SWGi0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747879793; c=relaxed/simple;
	bh=9Knn5vHOMBWEPUld3QZBfvzt/o8aSfEXh6FQnc2y6s8=;
	h=To:Subject:From:Message-Id:Date; b=oyDqjtVqUxXba5s5UsNZQZqDVUYHYhwN5RyYXyHAjYCz4/amBipgaF5CsUZvuoQDQ6jWzOiGRtoz2+ab0RaqZK2SlDydhAkDwcwvVM+IqgeGauv+spikJrZ2zguPNBn8pVl4JmdoPnsvJI7EyL/Va42VD5jr9ZLd9D+e23/VocQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2nWheYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2nWheYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF82C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747879793;
	bh=9Knn5vHOMBWEPUld3QZBfvzt/o8aSfEXh6FQnc2y6s8=;
	h=To:Subject:From:Date:From;
	b=X2nWheYpFWEGG1n+hL6PHISFfz9BDvAZyh2wPyeWCmHOTE1SUcvB7HTU/TDoIm3WV
	 kmfTz7moVyvBICO00mbkMLd2xTa9HR9F2pnOYrYOq/7jcXEbl122uvvLVO4g3sjzLD
	 CV61pQkg6RSShKZsVnuN3PQXUxOsCaDepJNnNpVPbxcdo45g/KyDC1Nuz/tJPV7Ylh
	 SzmeiErdYxEdMeK0n5C4q7POrUsNXxuslcH7j8DYwQgOhKbXxeIcUP0Z5O/X8/WKwl
	 EXpvh7PhPvUvjvWdAsCER5QPIVMAJgbftJfecBu8ARE/oRpZ5T4u5uqnfIlNQSo2wk
	 Y3fdkcUOmxLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE8C54E71
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787979357.29736.11670391946033196929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9da450a321ddb8179726118c3f9e04b5ab2bfe0f451e0f8e365db52eefae23
Date: Thu, 22 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747879793
