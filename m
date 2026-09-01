Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583EC3F4DE6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788274834; cv=none; b=QU/NIr37kUmLjuX7qSQc45BJDDfyvEoaBmNbl1UE0JVzbT/Hw0c3/EYP4Dg0tj3evIhUWBl8gxdUlVFEyX1gTzhWraXBBU/b5hN2l/f2x3dX/2q9n5JJypTLM5qGlz3NRts+QEBC8eOexQJVhkioNsnHsb4g+Gn8rfcI53/Zr3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788274834; c=relaxed/simple;
	bh=0gZEZTYqTstrg8Syb/wo3hge3y7GsjMwaXPVodJXcq8=;
	h=To:Subject:From:Message-Id:Date; b=DG5nwlkbi5sdTP1QBqaD3/oVsW+XgmzgYF5lPKp30Nn6LDb8OZSiacyH+eLJah6S+uWiYSlolp04wOT9SSIYXMqM03pmhRIeL+NKWtvtGTyTZ8A0ZJzftZortzg3WGrYB0cMrPCci74bvAySfjeq7J2EOYyos+o35r6DCtlKNJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3RQ/iso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3RQ/iso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC207C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788274833;
	bh=0gZEZTYqTstrg8Syb/wo3hge3y7GsjMwaXPVodJXcq8=;
	h=To:Subject:From:Date:From;
	b=e3RQ/isoqKDmyT0cczgOjt5DPbWn/QSU3iGnxGNBFONqiCntK+RX69PvsMJpEaG3D
	 DgqF1GOUPhTXTKbeX2ZlXcCAtbVo/nHL6SHDq7LfD1E3h/ZeZA6tUIi0fsvoIgTdtX
	 aQpwSyVSYNoFhZpRQHIWknIMWNPVcR3HeC+pIHIlIA6zVw941pyjh04m1v+3sqElJ7
	 uXlUhboJXIgWsMNkPviXHyngDKufuGmq5PfYT4KRQ5d8EaQCCRehzf2IT9fSsbQId7
	 dK0XX2IhpSv6r5Yxw0VnqCJNDLk+DBi7ypgpaZXtpm9BUvJp3pb+8Sw1E/y2pVLJnM
	 1MXXLDE5pqVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D51C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827483368.3156.13275649664810620374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce418dd2d63db5e8e9281727f39d6c4a0a017cd8855bedcfc5656d1caf8a1e56
Date: Tue, 01 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788274833
