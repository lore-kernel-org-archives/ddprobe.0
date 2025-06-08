Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF221BF37
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749347394; cv=none; b=PM/wQvXOUqp9JldOI0G/T7jY4gECJ+8QiW+YOI4gmSe0DJgg6rkc4aqiGG6tmHu32DfUzqryByej7Xa9p8/0bsAdZ4ebGKsO/L/x3LBMrWXaBadjU5XpyzfiiTiCLFiXzShvbp7IhoZwCWG3B79RVk5BUjpFZj/CDI1hKyudPII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749347394; c=relaxed/simple;
	bh=plNETw7F2lWB5MxUHS+kxoBWCkTM78oxeuA2A/hLJlk=;
	h=To:Subject:From:Message-Id:Date; b=g9NImK3tkim3DrAd3qZUI8J2O+cPkXA2uxcHJfE+1NvdLZgTJI0qDv1HeXgbQ43aEwKV+2fqLHt0pXZYCIolouzcCb5+SONrm8W4RBMn/IGGMjH4vIF3zrYRb0p7CcfGkjI1IOaoOpKGPxcsfiyS46cVr087iEOHX0+elZC4Z44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7wnYErH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7wnYErH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A7C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749347393;
	bh=plNETw7F2lWB5MxUHS+kxoBWCkTM78oxeuA2A/hLJlk=;
	h=To:Subject:From:Date:From;
	b=J7wnYErH1B2BJeZ0Wv7awpsfAEZqLBiYcZwhWDWCnoiynb0fQECFtQv7LkElBGxmc
	 +TO4xPRTcaoEmSbgwUlcHZotOWPNw3pkJilygl35pKiMbLWTZcTFanMEfrnrokz0vN
	 tmnGG2b3OqCC8SA4NLj6ktFRyjhoJb64F3uJisJM2/Wccgjuts+U3tkVxibI3ruF7+
	 3KPIWLSDihUqDZ+fwlxt28oPoscfTTtAjvGGenhVObqMPvrVkjBAnrWGLO5wZh1JWI
	 IF1KWw8Sz6nc/eTJKPruXPceqjZMJEAnKMSiL0h3zVXG1ePBMEBeVthbE1T3hgbCBm
	 pQo/Wna5vqPUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92052C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934739357.22899.6699542100747201515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4049fca5c4db0e64f2c7ab122b4a1d10dfae9ee303d31aea9061cfb94d18fbc
Date: Sun, 08 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749347393
