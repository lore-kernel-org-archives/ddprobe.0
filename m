Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285C33F23C5
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777466254; cv=none; b=f7wIcUqCY+bu6Z71paHEUgQDZzl6AkN2nPhA1NlqQCiK1Ts4QojE7fVOGRSuxdwJn9k2RaopK9idztG9v/UIWVamzj1k4vvBG8bM7izQvvYZs9EYu4Ox6AOC2DQyYbjTjzcU2nK2n0cz3HDy87DWmfam5NPCtSGEV1X6Ieb2z0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777466254; c=relaxed/simple;
	bh=v2o0w0g1mFNe8gj43R6hrxN1aWEO1GcL7A8uRcTg4qo=;
	h=To:Subject:From:Message-Id:Date; b=rOGANlqu7y2xh4ags+q7dEUAUKKvI2tgAvLx1/4pX30erwihuR0TqyhxCyKm8neFJ6PRSsCVCyWsLQJBez9nc1Ej++tpq/ZU5SSiJJXZabfXR0kmecggzuld3iEyG/DgDQ4jkQoUN5wXafTVtMFtgkM+wJ9x1hXyLblsI5IjnKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoTUGPhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoTUGPhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B866BC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777466253;
	bh=v2o0w0g1mFNe8gj43R6hrxN1aWEO1GcL7A8uRcTg4qo=;
	h=To:Subject:From:Date:From;
	b=VoTUGPhp9sP9dvojoRDNZwdzVVLCIvdRd66omUeOA32JJAaCbVOHvMwXfipojxnmi
	 Z6l8omhfVeA/6VysO8gfqIj4PEj4mMnphQ2Jx6WYlR66kf4gCL8SU8mfA9Gaz5RUs9
	 EuUYx9rNi+cZDmrzQbKQm5JO1CINtkQzoXflOqasxX1W0TlTW2eUvGBe115VlzncYv
	 wJxVxFCEsIIbNgRFQk9xO+/BtSfcPtc4ga+pFAyPXs7CeGvM7dYjB3WijDlXw1wDAD
	 qwMXW0m1T0kKeG1jS8ZoMBMjxCZkNteVQKWVWBcLw2ObBJcI1Eul5mHuz1hkzyzGyo
	 9rW/7k6zyVb1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F5FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746625368.24405.3048638197313462384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c283a72f70dd01b1a57642cdf42321c0dd4fc5f82f2724671c2cda2d1bbe613
Date: Wed, 29 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777466253
