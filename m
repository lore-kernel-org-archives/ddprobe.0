Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296FA38FB9
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761165594; cv=none; b=cqHwUq+NuiGQ0nPjaxeDb4W+eK9aNjbAhUVHw57N/SxH3AUjQSKiP+PCkd8gYI8B1fKNz+lpjQd/QQXJ0Mo8cqK6gUkRZL+y3nb+PvyXMvVOyY5iVm/LScqB4yrpEU9QXbS56yCrY+aq2TaCZ+TUiSRlOVYWg2HXXqHbvo1RvG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761165594; c=relaxed/simple;
	bh=1Lkc38viu1T9qBkXjYWEQaBBJoKnvp3APQXegCZQdyE=;
	h=To:Subject:From:Message-Id:Date; b=XcwHMb5sRmgIJtzHIiBiP4jmOz+RlEbstMpEOZIfjA2Gvj3UzpeOqlhc21MW9jWIlTS0xu3khvYqgXgsgzrAMOKMW1gB3tOSl6XR+8zNeFhcDzIF9gjKglnhzBx1mQ4zdotpGj+GngVY+vNJOZ/k9PpRSJwC81B0RXn051ixT94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFwUF6XH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFwUF6XH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761165593;
	bh=1Lkc38viu1T9qBkXjYWEQaBBJoKnvp3APQXegCZQdyE=;
	h=To:Subject:From:Date:From;
	b=mFwUF6XHV+NJ+eo17+KyCmWqA3nsz6lQxgRuT7JB/Awb17Akl7IHUJFVHgZGyuzWG
	 GUARdnDs0b14KdR6zfD9GcoSsm5q0Lr6DBRjiOomE6HBcaZm0UmVW/BCgiq/fmQoq/
	 jXSGeEvaYDSApsOp3HXV/ck7HX9VJfqHaUk5Jt53nGmaNXslCfa1x3qLT0BHSQGirZ
	 vvoZPGU0QHnn+kSOxJhf3o99agKvjakWf2xLPkq9sgPR9cbsqOJHeKQ2NGfAi/SQIU
	 C84/U3LgNHmnvwRS/9TjiRIF2sDKyvG8HjaT4N1ZWRCYuDxxyFhwtoWTW8g1pliIWi
	 LiH1lB0fRdWjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90022CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116559358.5432.1916654039225268383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca07aa99f6d5bb54ac99ae6c4c95c03700f69ea52d0009e4d6cb659daf24dee6
Date: Wed, 22 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761165593
