Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DBE524F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757048394; cv=none; b=QGAey9Yb+ZwQT9VudTw/U/0BAFVOJlw6bZtUY//Nv7Ae8VFdf3KbBSCcvKN5oiy+D1517TSKW/wR6oXj+oMc6RFk1WAeLuHDu+tvvFFFU1ooXh2aqFYcTWMBiFd0HNHx7dvMwnznCJCeIzFh3ghIsJ9RJVGAnea7d0/D75lS+Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757048394; c=relaxed/simple;
	bh=UJCpkpD//1PuRTXp4yYvoH2rsW9tt4YlwhMchdjgVws=;
	h=To:Subject:From:Message-Id:Date; b=JLxi6CdkmbXjwSHM9EXkrQAbvYu5qmdieCzAIGAyo6QIkghOFPAdH4CKFb20sqxmHLA+7xmDFzocJo6UqUdyJ/TjTEk+C5vv/nDBKTstywIfL6MUQLsioxdCug25di4qwxFxnAsiXSdUE1NMfEE7Mcwy1J2U2WK+augHY5aH8BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coDe8ygN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coDe8ygN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757048393;
	bh=UJCpkpD//1PuRTXp4yYvoH2rsW9tt4YlwhMchdjgVws=;
	h=To:Subject:From:Date:From;
	b=coDe8ygNwIePjqYnzBCeR2lfDxB1foxBaX/jUqZoOdqaYLz6MB3rKy1b08TXwFgdn
	 Nj/aZuMeVPV3Bc7ceHynlj2Z+LVdGwmYi8Dpdr2N4yHs78LZLUgbqWCeQvmGRxqu92
	 G3NXnbd9+oiStpW63VnjbJQiBAz+9dyuZRISmWQgfQcCpV03b7jMEcVBEdnvrynr6Q
	 oYsWgBOuaSCHRTdHjy/PkmJMRrQeuvNWTo9F5m3bTgtOaVbfxGq0ns4BuLjZ2JEw3/
	 qhBGCYPmqVG6Q6A2Fnb4UWfdqvuLpDo9RVdIYB0elkMZ7wolNBSSCna+qBJX3U94cm
	 7a7S2+XLXceMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9ACA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704839357.8492.196397881241033199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51909a36dba1b282f5902dcdb956148fffa7aa0bdd8dc37662c5c97b4c8f9dc0
Date: Fri, 05 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757048393
