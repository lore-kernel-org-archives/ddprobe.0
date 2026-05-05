Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205623451A7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777992454; cv=none; b=GDmm8XI2x7Ohw9Ym10W51AKTXyXLaCepTeBT9TcM5O/lx9DxjHgNeTK+XXXA9Lx7oDnVTntQ6jCDFXo1Qj903hVkSzkm3BBbqq3C5F/LxFqHTCqdCffFsns1s48XdRvSWg1aXOFhexKORooYnzSf7q0/yBIQZQ4ubhKuamsEcu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777992454; c=relaxed/simple;
	bh=NAXwVgRP0V4q2rP9Y2Vgzm/Drnfi4XEdseUbB37FYyo=;
	h=To:Subject:From:Message-Id:Date; b=IfZOlJGFnhtiHcqcengnsiMpI8MjRGMiJR2Eihuf9Q75oF567iXRHiiFlPz/IfYbOOWrkivNtlX+I9fndT1QjJMACGsbIHyuC6kpnQy8HOj9kEA+Gdvs/dc4N2RGrT9SeH+dhLpwyFdOJFgwpuy+nVuGhtG9mIMf3BpPKcXYp+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCCvcSnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCCvcSnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73C7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777992453;
	bh=NAXwVgRP0V4q2rP9Y2Vgzm/Drnfi4XEdseUbB37FYyo=;
	h=To:Subject:From:Date:From;
	b=SCCvcSnUCi4U7PhjJjKOj//4NG4BiUqvFfT430yvs3TqCPSgGNiBrgD7YlahGbPdY
	 qV1hUwBW8kD1gZx6LiLVqJS4kJBhqckFL54OdYyxljBh3y1cG2S91unuGbaOHRlwza
	 8nw3VEFgt6uapVTMj+CBTtKa5ELStOLZwhVDT79pUpJPoZVObIO+zeT5Cz1iGOJDGU
	 5oWM9Lb/kVdMc26l/Df2EwZuenfgQQNSWW2VHej78ew8Srin+QEuSi1LwyQgNYTPeC
	 t5+oyKePJmxpOskcoD4Tf2IdR6kW8LYrnF7qXl+fnfGdjKw40zC/G8mVCzVvV7xhzj
	 axkDQu6HcmwEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9976FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799245368.28621.4920534858714054894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ede3924ac598d02b6c2bb45b56d791b22a40d6617ecccf630833a12e91c003
Date: Tue, 05 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777992453
