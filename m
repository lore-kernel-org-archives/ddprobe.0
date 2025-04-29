Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE61248883
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745949593; cv=none; b=f0R1OCBBphRr2hgufI1GJy8HiosvQDmHP6hSdwtFP0Uzw2IT2IAclfu1Oyq207ZYY4C9QXSvEvu+8YvxU10b0/JnXWPgUfgot7QZfnf47vR4FUN2/36Rk5jnVvcsIw5QVzMyUzAdhVXOIUpRegjEynS/thcDbH/LZ0xa6owkXCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745949593; c=relaxed/simple;
	bh=AR5MUYdwG/7PSDGv9Wm8lmENTTiWftnoxHCxdJ9cNHg=;
	h=To:Subject:From:Message-Id:Date; b=YgV2AlIg9GLMfM3QaUZKTHUoiW2DJfgcg8n7uscd7r5rLQdTiGf/nLbLq6uyeXInOy+bl91rf5Vjuv2TYnp2xw6wq3K+PGy73sdVa4UaN3hpL2pWqgExZmoXPp4P1hgg8aYlg0ve4yHhdk9D1Vr+hP9ltiVBoMqGkYyoqNwemxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGAbKS8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGAbKS8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E68C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745949593;
	bh=AR5MUYdwG/7PSDGv9Wm8lmENTTiWftnoxHCxdJ9cNHg=;
	h=To:Subject:From:Date:From;
	b=JGAbKS8ng8b7ciesRbMFMnSMiCRLzkihhkVj/kUM0IS6hcpL69VdpCLJpm2fNAzgT
	 oN610cSciXRS89JTiqHLURgo6/KuFwmuY+pPWn0fcdtzAa3afTub6o24ZTAUjg9lvc
	 CuL1RsAIW5YtwXTGNu4XhgWiBjUTn08Y7PN3pLgLqgJvlME4sMrxorCxArA0gdagyR
	 1XvaUv80XD2iXuuCuwzds4WyGCCrv2tTqvMcRzekFwujTSMcLluokuH+V+3cnZuWnF
	 XS5tIQlukProW/DV4qrAGgLu3Q563wov7B4MIynzVY3/oc33XyVcGcOSqUidkpB6uC
	 t4AJjITWxj1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96047C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594959360.28886.16305307838041816767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82cebaa9f46b5fdc56d7f8916d4a5c32799634d88d902619f885afef4616013
Date: Tue, 29 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745949593
