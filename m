Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E1E33BBC3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767792834; cv=none; b=JCrxv2e2M3cGc1wCnAuhpaFQ8qKmGgy72ZHOyfnVcyy5XtdCNH3NrO/pTukbNwopkQisMoqYQ73LvDvWRvzQX/6jvFGZ6Lc0misGD8DvK2xmHCRmZO09iuelYp3IQduYWdgo9+pBL9qjDA+XKrTs2ACwndUT4R8dcd1XK6nEPLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767792834; c=relaxed/simple;
	bh=O+CgDhx+IoneeyWO7w3CQg9ZeLkJIa1/eADEBaN5jbU=;
	h=To:Subject:From:Message-Id:Date; b=ZrI+E4Ul0usE2Diz8BwOQLz9JwuuUtzKPoQySpZRLqL3UYh3fXCOVBTR1tG1mv3WG+kWebXYZMpeEA8bMv1mhVB3q7A4RPPo+7YzyTH6HKBPPGVuScj2mPC1BUGzESzw/w29HyvcbobWyjctmLeplHb+XEY5tP2HOOmV70k/3VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLBfyowm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLBfyowm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C979C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767792833;
	bh=O+CgDhx+IoneeyWO7w3CQg9ZeLkJIa1/eADEBaN5jbU=;
	h=To:Subject:From:Date:From;
	b=JLBfyowmkNKpvYYahmFLEscnhJB8nZU1dPhFfXjhSpHxOaADAe8L8n349O4l2QWg0
	 fDFEp67bilgdemqrNNrO2PMJ44ouHzXnj1JARQQKJlc+hhmR/bNtqamdZjP14TK8ta
	 1CED5Hzox1bLzOT8M1JCEF5tjkTZ1viPxDPXotsaTGpoJHtWVa7BlayCRKGESEPTP9
	 wuFBQ81Hp6cifFpLHHV89pMiKEbHf0kWIFMyYHmLLL+5OZyQIKpdOTDNYG4zkNuYaD
	 glO5KXw1D4z4B0JLy4SjD++sbN+JeOA5zy9FyxPhSpseTRgTvypfBoKJVRucoHVBuD
	 OYEjxs1vfXDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC91CFD62A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779283357.31488.5405663326859288568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8284766d73da0f5f3e8e53df55bd94d44adeee87e9b1ded52258beff7a29a18a
Date: Wed, 07 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767792833
