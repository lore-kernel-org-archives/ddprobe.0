Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB0C19E819
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774727094; cv=none; b=fJI9SC/pShCK/mN8NohvhaKsXCxnmRUJsXSpl0hpE6lPN8eGixeN1IYri/Pl6Vtbs3Rw5KCCrDwa2jONEoKLxgbFYbBOgP9HkdLipHhKuCA9FYitYIdlt24iYtQIxkLSxTAc98SFfA77F2bQaQL+OA6vjvDBTmBC6d2bUcOhOMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774727094; c=relaxed/simple;
	bh=yN6lYM02oV2QUSpCKYMlb4/i98+KDymSniEqp81zD7w=;
	h=To:Subject:From:Message-Id:Date; b=QQtpdZ9giv3lKy5IDRc5rkMOsQkkQ7CFtXWVrHrx40AkZNBSWe4jeLAdobnefczAB+IsaQIauwwKIH7/+eXMljtTck/1zxhtr1x1eqtTJ0Z1AVUSnRseg07bjtfBdZooqwoCXFsCBcgetPO+gdxEqHz2V65I04l6lRuG/zxYLTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8DrznE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8DrznE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A90C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774727093;
	bh=yN6lYM02oV2QUSpCKYMlb4/i98+KDymSniEqp81zD7w=;
	h=To:Subject:From:Date:From;
	b=e8DrznE1E/QUwdRn3xuYIDuQCFX8tNPUXkgBOsNDl0APcp0FCB5RU1CdBNG/qU1Qy
	 nhrYjYX0jCdnkZFzGs4uSH1oSWXKd7fFB90AvuOOQcTU/9uusnm4GrdXv4ydKq6Cpa
	 e1NcbgcR/1uWA5rzH4yWuzboosXwD2bRVrP2m0QswWsTeTPRlj9x4ISzFPfd9I594D
	 IExW5TYFqQLa88yL9jI0HJgBT7u1UME4/8TIHSyoaa69iywPbWtwbI8hwwBDWU+g2n
	 PGEI3dvMNxu2oDlG+DTQVfu4HQwqefLkTJeygYoEjzB74VEjCsN/VAZsBdUbSMHru3
	 CuwBjMbR6OAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462D10F3DF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472709358.21759.8109207103434713642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5d90ff9492dda0b3a7241593c12969dab04ff01404272d5cb34530ebd27854
Date: Sat, 28 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774727093
