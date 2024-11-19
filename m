Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F651CB310
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732026954; cv=none; b=sDBmTG6X/8f+YTKTMvl6dGs9hhlIqbGaxwWFWXUVgXf1MCstry4uzXwlA8c83fL4+6/h2UwWNNh14+HEEKJFF3ooH8Vs7apeD5pGFQcEpr02h4aQdNKSxV4szMTZbg12ldd/2t2MqhQg99inncQ2hUHllMTPRrR//3fMr4wBZDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732026954; c=relaxed/simple;
	bh=ds9TVAwBFSruVL9FT9XIKoy4IMknTGFg5eUGb9qlGew=;
	h=To:Subject:From:Message-Id:Date; b=tcp6ylvTjnoyaV5tWN5RuqRpwmmZmp0Ll3U3Oq7gZCrcy7+zTvGrTPcCYjOFZoV/jFUXNpAZcnqV/AWamZbPX+n6fsaiEwpogwazd4TWC2J1sB54doom1ZBXvnDHe1iL8NdB4hpP+ptz6C7GJG4pQeJAlCjsT19QVWT2kfaP2oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rga+RD0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rga+RD0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD1CC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732026953;
	bh=ds9TVAwBFSruVL9FT9XIKoy4IMknTGFg5eUGb9qlGew=;
	h=To:Subject:From:Date:From;
	b=rga+RD0r/hvvq6GzkUTtx62EQcNBSnfElaWIAduJrr2EPKlfJTKdlYaHRqMVlxMP+
	 zm+H4HsmGAr5vaSMM6UO6aVcuVJGluitTmugXC9fotf5FckGHMO8qtZl8Osp5pVH1n
	 KH4o2E0NO8k/X0VdfXY1mTXKHfA/Gm0++rBMSlCK/M7hLIQmOxKB0/7L3XHfxpPDBg
	 gb4pNWolVEV/Yn7SVuTLSOMCkIGWlUaldpgh35h6xO3UwtUVfXxkDUtpZp2GOnOe5K
	 9UIomyL+0YeeXcZ1EYY250YaV7tn9PDhQflvr0410t9eNJcCjibtvE8IORBMfGjM51
	 cSAVqRs+InC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A9BD44165
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202695360.17047.11497383439075089865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5e0de86a9c8d4035ddab6532c76dbd153ff72d307969fc81c4dd47e913f624
Date: Tue, 19 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732026953
