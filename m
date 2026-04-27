Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E902F616B
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777285654; cv=none; b=XvioqNzpRbIq/bIFTtspNRekG6gH1jr74iGftj+lrhqQcIYZStKASXeTVoM6GR2DR4JPvUErCQygggznnlc6jTI0XxWH45dNyVJ0LsiqfHcEDAuZQSaBAZOoDJtMTHpx7FzzQyEBDsvls0u61MU+eh/ooY9cbflJqURX0W2tb7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777285654; c=relaxed/simple;
	bh=GWadegHf/aP5904JI1S4Xv0V9Xl70Buj6cf9YutoNMQ=;
	h=To:Subject:From:Message-Id:Date; b=lmoqgybrEdC7vxr8us6jOE3yNnBSJrBLDHWj35HnyXXIODf1HZbMD4sytf+QlyuxIGTYqKqSoxds4fjSHCJLCbHyUH5RBA8S772eArTkeS7rRbmy8MYHAkSyOJopqkZjoOs0CRaua4TueLF4Lr2oXFEbwnMAYrymr6w3gJID65w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVVSZxLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVVSZxLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8604C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777285653;
	bh=GWadegHf/aP5904JI1S4Xv0V9Xl70Buj6cf9YutoNMQ=;
	h=To:Subject:From:Date:From;
	b=OVVSZxLi11R8ct1sPWfI6utkPU9Vab8Ubc4leM3rNbucLJmxzD6jj1JbtQXunWfPz
	 wrCz2T+29ZDKgYu66QscWi6qdy6qLDcFu1gP5uZwV0biQaQYhZqV2WuAtUYNqeszUr
	 84miRTGI7SiM5nxMrVTCkTn3+y1VNhIQXQy0JPHpF+p8DBW3nrDyn99w4BYIOmcnp1
	 aJIQR3KiRtIJe95IFfJs+jSwkoq0tZqAR3gX+xf32mb/rNHtqxfmA3Oy4FSBYApj25
	 COXmH0GF5qIgDnJab80bZ9ctT2AGItas8JEEAKYARX55PkNsHaNPNjM2n5ePYOAsJ0
	 BXKvM41vApaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BD6FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728565368.2960.10912900150917640411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc525e9b50e2201e6cca767182e696208110803133b4910ee262dbcdcd6c263
Date: Mon, 27 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777285653
