Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA65F9D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752413994; cv=none; b=FIrlRN2f9pNR1x/CFCWXVWw0mwTL+HHXGM2W+3T6wputaq3TD3ou9d4IdaMwNihKsbM8cb67uvlJXYdQvuu9gwRUNMHVI8ZGprkPIyFVaRCuAC12xc5RttO5SVIxH8vN/HFG9eKOTlt/7UouTHNj0yviAdbTZO35A2oC2XhYnBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752413994; c=relaxed/simple;
	bh=WkSgh5lBenfgQp2eK7KeN0hKf4hTYzAqUJi0Md5RTs4=;
	h=To:Subject:From:Message-Id:Date; b=buUAD+nFxuUGFoBzmckCuQdl10s+GUOcB2zNfnjePtP0RT0aTH3qAY/rPh/TZ/v+KHb4OnSTYHcQDp2djsJjmMqztO081niJG2mNOZtJG8CkotA2T68PBYtZj8x8umL4jPai4tLzAxInpM7yhDXAJWSBrVitKGkdvd/A5YTkykU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMb9Cb6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMb9Cb6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC30C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752413993;
	bh=WkSgh5lBenfgQp2eK7KeN0hKf4hTYzAqUJi0Md5RTs4=;
	h=To:Subject:From:Date:From;
	b=DMb9Cb6eFivG36XUt2azS3asi0Xl630p5aeOVjPm5jr/MGE1wn4Y7mThJBnEnGGkZ
	 S9pjyvxL1pZ+stSG77KqPQCHcOGwFk/qoAuN6GjaSJLdpD8BVrHx5raPESeDzP13B+
	 eZbCV9CrUaZNrR0gzHKSSCmtsco5Ur7GNz1FYD7rwsij/zS3roq8n95KEAW/Rtw274
	 9wQi8LORYnQuNLiEoCw7hJiInVH/Y0g355kXSTYv8GuT0DjtQTGlLCjaWmX4SyI3bC
	 Rq/QpM9p9wL7CEMWltWlpBpiObV9wyLja3kmWGy2hjd36HUJe/rUuglHPkss/IeGv6
	 vsBreYNOq+44g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3EAC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241399357.17308.15201843937226703016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18a64451d857ed6039bb040fc6522da9d2dce4483b7d6f0113b9279e42874fd
Date: Sun, 13 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752413993
