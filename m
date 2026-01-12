Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B433246F0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768247634; cv=none; b=XRRZkMAp8616ZmVHBYelbcOmLz6b2EDeGNzIWKAdBeCBVUkSW7dcIyhlEG0hvgmXv86O5cym1hDYTeZTJX25CXIDTzfRVcioW5ZfnTiSyCU9bwbtR3XcAb+61mwSGPc6f2VhH7IQWeBdeq9ZY4KFemBdMB5lO6KzWp8BsDVRe4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768247634; c=relaxed/simple;
	bh=NxmEXIkTJ4MPeyxQKzP8gh0QlmEcPtPwoMGjWlUxe18=;
	h=To:Subject:From:Message-Id:Date; b=jkr6p7oqxiKazZJ2VGZQ984JCKWj9e8ZNYeu+TPMg8seHaVygdhhuyUBqhOiSEpDddPUvH6sr6+JxDoUUW2Oieqsx38ycLdr69IHs42S9FwjCoaXuPK6GDI2QeZ7v0UWhxqVHmdKKmhiq3BHzP2tTwSnHYvEZMPmGZmUa/PEmL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yf31TOmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yf31TOmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBABC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768247633;
	bh=NxmEXIkTJ4MPeyxQKzP8gh0QlmEcPtPwoMGjWlUxe18=;
	h=To:Subject:From:Date:From;
	b=Yf31TOmWFz8BUpyc2vUd0z36/MUIEmadZ3zDIXCODAoZ3Z+7m0Qvh9Osg0af6bAJ+
	 p/2KWOQBLv6VttsnwEs9cXNCNWLsCVnsFY+sWCZ2xsXb16nvssegLz/8oWeaMdbpuo
	 tkHhQpKflzAZyitNdz+yDqYzliahu77h90tCG2dZ3AkPLUrWw0k76HN6TJP8yhq1vm
	 +8xaR6c+1shZEEdElW1wVzK8AXansFFvs9GDaOjlzR/ZKE0q2j2X8MXP2e0BYbi+1A
	 WiGo+mXkviByGAPoSkNaVXR9S39MwoxgMGPxxIE1152nN/shJJ6gPsJismsU1npetV
	 6llbMmXoiFv7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E8CF45C8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824763358.28351.16474983113907511175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9438aad5f53c617d639a0bc4cee062b4e7ac5f5717ee2134d54fe77bf7a0d28a
Date: Mon, 12 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768247633
