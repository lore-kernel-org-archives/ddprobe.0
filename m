Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDF129898F
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781453194; cv=none; b=FRU/3iit5cQB3cYUQy0VR5k6F99QycHGVe6T4CrflbT45klmzWg7V8fuNNndvcGxa1V64ZYw0vepjNSuwyC9wLm6EN806XjQ2o0LmOM59NrnAOoFVX2LxWnWOmwpFUbYk/fYWV5P/4csvlniTK1aTN9k0Yn9NlcQYhn+nOVzoCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781453194; c=relaxed/simple;
	bh=ITjCSTSVl5tB2TYIxr8lbTz7hbINW9hWxix82c1PVK0=;
	h=To:Subject:From:Message-Id:Date; b=SoRepwgnh49DDWDGIVd4NH26psXSdujkX0rdINPecBdW2Z1KoaPrKGizpdiaW3y+sPl7k70smTPoCKFb0twYmi0pCyxprtDRAyE9vrYDp4GScSNBSqVAxmsqMieMgIlUXJsjOOF3YDhf3qf2En3cL5oMw+bdaOnB3Y6R3Rj3dqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjpu1DLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjpu1DLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8764C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781453193;
	bh=ITjCSTSVl5tB2TYIxr8lbTz7hbINW9hWxix82c1PVK0=;
	h=To:Subject:From:Date:From;
	b=gjpu1DLrQxTTt5FWUzeW4SFE6FnqB+vOH0mUlIZa4LC44wWdeUNQjGxYag9Di/280
	 USptZ3Ikl/OvuBBAt4TqE8fwuSFGi8EizY9z2zj9qwdQyiFNJ1Ic7E/u5luIQTf9LS
	 d1SCiwgNeMhBvIh/bBzD6LkpOdoeZIKvTVDGkSOdtT8uYnYOhwOYzWy5J2besSLxs0
	 lgANBOgVJJsqnFq9GC7pIp80MMnGUvzSYbGV7WYepTn88KlSXkjG3qctie0WrPMN1g
	 WPBmDpm+czBtUmOWLDpMKKnhou6vmlE7SxTx+mAX5ph8ju64VgVItNaahLjDrb708A
	 bNiX1v8ofHl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBF6CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145319368.17582.7381475123547893867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744936d1ad52b258e9d9c69813992ac3230db1336a7e6f8fc8ef290ef474cb67
Date: Sun, 14 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781453193
