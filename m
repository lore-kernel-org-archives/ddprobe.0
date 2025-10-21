Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7C325A355
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761077393; cv=none; b=SsAYyVnHKCvv5AhtUlhhiCopDj3/Jc8MuYht/wx2EemselmnbnJeA8IOJImtLisaAiwyqE44bWIlXvT/Gg47Bn6OEylxPOgfzXkEUQoqV/CKrIwkGDJsbpEOUqODRBQah2W08LcE/x9LJzsS4hFirpb6gs9BLYIs8EdmpPe0P9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761077393; c=relaxed/simple;
	bh=3x20lc09ExkW5XyEjJlOVBERwm117OZx5I1YzgpBl0s=;
	h=To:Subject:From:Message-Id:Date; b=s0AviN4k4VclRUnNZE30WJ9lJbUpplJXwqrrm83b0OqaW/jAEGo5xBQKC/5iTKYYrEk2+bf67+goBbPZ+zY2p+OEmYT7F1SuYBsD97ySfLvNx8ItlRHet8qU3VmJSUoSo+dzJrj26GJo1Wh3VNoyYSSBij4UMZ8T7ptLME9Om1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3NOZwho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3NOZwho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A261CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761077393;
	bh=3x20lc09ExkW5XyEjJlOVBERwm117OZx5I1YzgpBl0s=;
	h=To:Subject:From:Date:From;
	b=u3NOZwho7nUEVA5PBAodtiwMV5UzP8ex1bhoicOPJpqJ1DDSDABIYXHLB5oIGRCsx
	 e/zX/VzdAHQera/L9JdoadAbUcvhtFw7S6T60141Of63bzTw2VxdpsTpapgRsTl134
	 jg1Vq0YoMj36iqk+y6LOj/zidup96wSQWv011hgWTrbYtWf2vWqmje3DM+e1TiZ00U
	 5/d9l/1DXEFdEDXZtTIiiO0/SlikIU5Yl+Uz+YRnPlwi47gLjOUXZMbH/PnBGFI1vM
	 AKcqTqyG+m1JW/K+sckw37zZobxhFD3NSwkVLTCPYDrFmwHsyMztzp/HYZgeSnH0ps
	 45nS40R8iUXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92927CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107739358.13151.7239329359384207625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc580286c2dd0effb8cd14279d4da3b4d65e282b4b2bc5e4d8dc104d337d7fc9
Date: Tue, 21 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761077393
