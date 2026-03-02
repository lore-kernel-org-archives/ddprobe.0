Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248CC340273
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772477094; cv=none; b=jwtyV+K4lBIiQGM2aJg4wuS5fxL/thQ2IlkmZrj200SeYzJQk8EvFXys9P9+HMcp9TvhfjYoLo79I+GqMAXO4PWE2YnpwNspmGYlaabXReAcc/pPwm+5oRsUeQp7NUjmZRnwotsWuH4I20jlAGlMX4Kwdvc535vm6o2CE/xFlm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772477094; c=relaxed/simple;
	bh=pYt4uA85WI+qlLK/VMZrf03ySCtGcRteJhbR8yIsSC8=;
	h=To:Subject:From:Message-Id:Date; b=Q7HlG8f0bA4JIpxX1NxlPbB4p93MuZOJ7587IYvAEAa2Q03DPXd1kbC0wpmmOUGV8dM2pmK+XRHBetG/NrQcTaSVnJSCsZ0pLFuc340XXoIwLKRYpCwMp/PmEdl4T+YZ0ClHxVhhQFtfbpmnJPpC93qhohoN4Kp0abzHBBpywvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4sN4HG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4sN4HG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9225C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772477093;
	bh=pYt4uA85WI+qlLK/VMZrf03ySCtGcRteJhbR8yIsSC8=;
	h=To:Subject:From:Date:From;
	b=F4sN4HG2qfPWlMvIqQHLTyv3qEE9/FybiWDJL457WBOLJWRsXTKdIubABBT7QctJv
	 jGV9wKLirQ08iMIWS8YLzhxpWolw1x3I9Uer4YrjfA/lIAXlW8HIcm0TKNEPDor3cy
	 fRkqHUi4dxo8JrH7dmcJax8x99b7j5cRiOL/BG0QakmB0z8tTsaDTjx1k/qQ21duR0
	 x2v148E9I3yv570QasXCLpxE6HrGBOAzrxswdllIZzhI2ZfKhkTmyOYzM0rELcAAIc
	 QN20g4HzacGxaOW8VzY3Ip5fwqxxBkvdkw3dhaW6FZp8KH5MM+ooku8TMYAklaBspt
	 64umcq3PlHEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E490EB362E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247709361.14954.5671068945014001818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb2968e8f843a55e5c91bf9d93867cf76c6edc16d22bf9e1dca878f1178f444
Date: Mon, 02 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772477093
