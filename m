Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF523C516
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764823374; cv=none; b=Vh190sRAsI5xDoLhH8544hMkPAf/qnHW6Etk9zzCmknAua2Dxh+B2TY3nwp70JGNCVMxlzzEdQKJVprYrWGbOv7r1BhWTxJIO95bp2WYQ9dau5veY0PHJIJjtPjtrC2McMEcKapqvW8i6EmuwYGmlTCGpH9UrvrDjrwmX6lRxdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764823374; c=relaxed/simple;
	bh=LEquHJ4+hPlrNBXGid0cYEu9OiVza//gzWJblrMmCAk=;
	h=To:Subject:From:Message-Id:Date; b=VowxOBBGBw/dEz3ECiAOTfXbXRfWJqmC7bTfzMn8BMpwQmwgl4ivqjyv2XTdtS0qutWkohTFOJ3ZvVQU05oFk8cZfZIzVXSIDMXA/o1VX84DwZEJogiazYIahiEHajut/jrgtUxQvtbRE85fATL3szjFrPvwPgOF9TNiXDYgHK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k749kJbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k749kJbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C60C116D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764823373;
	bh=LEquHJ4+hPlrNBXGid0cYEu9OiVza//gzWJblrMmCAk=;
	h=To:Subject:From:Date:From;
	b=k749kJbp8qCvlmt/aJekoL/q4YCbrmqUL1KjKrCnk+kjuoriZ6hvpPTrKgYbBUvmn
	 L/LQNQ+gsTf0zOZt0bFeET5J5MBIA2lJIv5vPG41Y7lRA/8KqjRP/Fiyk3tv5FQp+g
	 VdVCjBG6UIm7zUv+A/FRLF1tYAiUotN9LPiy6jC4Q9O1xfoAYAO3k4An9MvsGbewBg
	 5Q6s7gqoNFc91OiqxdJCX3Fkay8d49qKCKTtlJW84QLDwgiwwawDL7xoRSDMty1eIS
	 Mob7DiX30/ikVhGe+6EYBkJQld6O8Zl4sG5jA8yDY/EO6ecJzUq6K+Q/S37jptTULs
	 PDeu6o94WJxXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC6ED1D862
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482337364.8309.6555167586650419832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce39502f00fe913c308aa9b37bb84d0a6c6eb979516c6834a914a606d9a76c6
Date: Thu, 04 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764823373
