Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052082820AC
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771280094; cv=none; b=Nl27fVTp4mpNKtBVEy18sU2DRktGO48Tcf1mAN0ymELqe/e6/Gs0bSeMTZ2mMnE6Wf/olTplHAj8mq3N9Mdl5zutzRy0ZF1JCUa79bxR26YTS1FxGYkw1v1F0kJFKysvopEzOxBePvN6OqXsbFLvQVSrq/mEl/RgjGWXgjB+b8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771280094; c=relaxed/simple;
	bh=CPGkLD6ywtZ8cx4hoJkEeCg4rWXbo+YnylXIdhQbwx0=;
	h=To:Subject:From:Message-Id:Date; b=SGo2kVCBAEG4L5FkcYTWsaNykdKd22WxGwWuR++9CisJ21Niwnm/HzdoetUkO2SGUGEIjwEjna1iDRBaWl0wAPPrp9G5A5t409dXP1KUQt0B+K6QNQ4+SEThkeQPNMeJrcCB//2lPglCXVG0NBhDt0YL3k98kzBrtG7i6e7tQV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MImxffnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MImxffnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7214C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771280093;
	bh=CPGkLD6ywtZ8cx4hoJkEeCg4rWXbo+YnylXIdhQbwx0=;
	h=To:Subject:From:Date:From;
	b=MImxffnuDa9dzlNrjmtXlecV2AwZbqGTJnLX03SIj0Vi62e835LPnpuwa7GB6sLTg
	 Xog8ZYsbDd8LX0N0aNmAW5KDziKSZ1jOTUEXiSARbPMlzNuM6Wf6avF8qk+DYxuDo7
	 dxhNYbLqw4Jyz3Retgbobz+gqosGMUnMx8zEkSsVDUGAtXAlhsaZKVcUhDrFXMPLvE
	 wCUrMuVz7NcuyHGCywq/ov1E09ti6cBPrQkI0P/ei7yMhW9HyNkgAsCMcWH+rnRERD
	 xnerQNR/tSF8+Zr+uexp7GOrwv7ZB7cY//G+y4OfTpnCBsGLSeXmFg/lr4XjxuYo0L
	 /cjge03BBq4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E47E8383F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128009358.19820.15570690765258621130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406823cf1371d56d952a2a23107117b3680ad8a7efe58c1bc21d19c6d0fcace4
Date: Mon, 16 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771280093
