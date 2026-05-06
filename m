Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2216E2D1907
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778045254; cv=none; b=qibrvRf03Y5GIzGKMRfZT2WaBN+4qRSDD3Su+jjCsyUSObJHkLx7FWZSy1rT4WZt4eI3mej0RaPDC2BtgrtznzKUN4LFvk7weeEwqP6Kuhyz71yPcApjbYeQyDoi/V8ndNsn+0vU0FWPuwCVes7G8MRLJl3SRQTUO3tIi/K6R/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778045254; c=relaxed/simple;
	bh=m/PNNkPOkc6wDIaVxEvPt9674vcvn0xtH5PnqRPMRSc=;
	h=To:Subject:From:Message-Id:Date; b=oYVaVZx8vRA4yM6Y22vWSKOjG03xfE39SDgXDgl+FZYfTK9LQ+il6GanxErKRTLqt4u0fPTQhyyBHduZga4p96gPxz3S4kixyelGHWOGMI6FQUcSY5/gHxpm1cLMX1rrQMfOC9FkvMGaLUhmij/UYEVQWGitP3l/DKaaOX4a+6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDs+Qui3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDs+Qui3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53F2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778045253;
	bh=m/PNNkPOkc6wDIaVxEvPt9674vcvn0xtH5PnqRPMRSc=;
	h=To:Subject:From:Date:From;
	b=UDs+Qui3EJbIS+bqC5EZMdGegnsg8BpDAnsPkJQfVRO2wh6qNEmbKimv/MKCOy3YL
	 egzsye6ki45DXpmUWVq5MT+lAxqtmVpqYzhn0Chmzkz50HqtySQwhUv1aA9YuRA1Qc
	 CBlgO1cGJpOCDx1ovWgwQS6lCrSwydjbiN2Cs7EG5dmjavffVjeM9dFEEnp7ogP01k
	 F9xMOnru9DQQkoytLGpDD20PzqvZwRnrR3JYM6COqORcxm88AMQj31iZqDAQU3JbJI
	 2qEA7VCJqNHVIHZEbOHThbEPf0OQNB3C/xkdgwq4RTcR6yEzD545es4q9tUxE5+ya1
	 tjhehVOQ6SVBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B1CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804525368.16836.17203459217835101134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0150d73188bd10147171575baf115ba755c5157b6aad7a31ebf784f4e6f56435
Date: Wed, 06 May 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778045253
