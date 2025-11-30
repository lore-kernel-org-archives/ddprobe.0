Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2CB36D51E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764469374; cv=none; b=Es/o3rV2BmhHGIJh3CNPfmz1DQvIY8VADlMcZa9YLmq56yYQ/kMSDt26MuJmAMOXmwJjivTmGrHz7ESYij7w2iDWjXQ+i78VwArfibgPlDyObRAOrCMXVHudOljVvh8mPAEVf13WnpEJFnKPOtKyyKUDO79S9oo7dP3VSiHTwCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764469374; c=relaxed/simple;
	bh=PFoge80+KjDD7X1iMOonaFqoCqjd/PVapxxdcvoXdNI=;
	h=To:Subject:From:Message-Id:Date; b=C7iymtq+0Uf4tpTmel13SpoTG/z9jM7WSkWX8zDO1lKNXwkWFx0uFqShizEzZxk0ZAAks5VH19fUz0vkup+32D+uzLl87M1B7YbqnHbEMk06o5Pd4vtPQ2ucW09KfkTuPZ1+EJXhUo4Ah5EgOT/p9ChkVbUlej2D96+/wtwJVrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHKnifLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHKnifLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764469373;
	bh=PFoge80+KjDD7X1iMOonaFqoCqjd/PVapxxdcvoXdNI=;
	h=To:Subject:From:Date:From;
	b=fHKnifLocm0mJ4t3AtfKUkOLAs0YeDZRpFLW3RusjXfDFYM1YxRtOUfClZideqP46
	 4lzhdzZjv/mw0gSX4RbLTqj2i9egvkpnpk3yiMZANNn0GBuZt2iri8txO0z+7J3D/V
	 Xhfy0S9R4THGrF6iiL+Fk5d2Dvm0WhjmkbGGG3X5eJt9hs7bcmhuLBuJ/30Q43QoI4
	 N0IKdf9nJvWEKfxvnWFMT5A0sotbYDxykdmM8MpqMT8DpH998nwabUvT3qSeUwx3MJ
	 Wg7pzpzzKzm4IghA602aCYsm4NW+yHUgrUOSx11GSGH8nL9KgU07U35HykX9Phf15s
	 V5wdY9pRCwgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9390ACFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446937358.15731.1604499465029637166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092d49059b7ab4d03aa55bf615a5d90845d0ac3c00b07a2dd1d39f4d2d956136
Date: Sun, 30 Nov 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764469373
