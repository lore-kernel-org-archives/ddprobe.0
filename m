Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17502AEF5
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773561294; cv=none; b=SWgStyPT3ibNdVoQr8mrVCIGnhucax53K33gxRiO5WsIMtU4bI0Lav3+sUrW++IWwsNHa5J3n3/CnXGV8DHNnL05PLnTQ0QnI2cHzQKs05rOSsbJugEOl+DMaSEgP+nbLPqYF77GzeUJKbqwy0bLBbVbsYItk2wp6SxTyzok/ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773561294; c=relaxed/simple;
	bh=mZlJgbJI4LZedYGgxSoVi1PkNnF+yYZ4VwEHd1bl6cs=;
	h=To:Subject:From:Message-Id:Date; b=cveRYSotLM1Z971mZRE5o2FlnZi8BxphQFrptAHHy3K5prezd9byJhLUqQhZ+IRbydFpyjrCqeuVfvaGzz7eBKHdN9UHTLMNWpZAbgepbCPsT52HDMufRqR+ci6t9kmfFgbXeGFlzEFUb8a9KWFh4MW4ajDk5/XVundL4TKfgc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bY9H7fbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bY9H7fbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B409FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773561293;
	bh=mZlJgbJI4LZedYGgxSoVi1PkNnF+yYZ4VwEHd1bl6cs=;
	h=To:Subject:From:Date:From;
	b=bY9H7fbFD7yUtOr+gnMqG8oD46ps0YBbm7LKzBGWhPJjlAoDBrWvWntgZr1FUnbJV
	 F3L9QCYGTv4mVOVEO/zQ3stxBXSQLLO/KFg8s6pbE4q66x7haOX/lNir+uv7BbdDZN
	 1ZlvLW0xqOaj6u0yzVzL9qS1cph51Rh2WJXNzL6DK9NXDc2uvEuE7m0VVXRFNyy1Kg
	 1gr6tQFO10Wfzbp/njHSNnlHePbBUoNoe4FuaBHJB2vlriDR93jssu2Q/yjk3Sg7Ss
	 3XYQimSMZG1XdPb1bd2rWIc3RyCdbXkzQwGukry3GaAZx3hnOWguIfyoI7/UQBez1/
	 djiTGZUMrjrIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED0CD58B0F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356129362.18277.16980740446300653797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4842fb78037c27ae1ab1510c8a7d36cc1de5c5723c2209541cf9e1c90aee7f33
Date: Sun, 15 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773561293
