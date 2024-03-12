Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4FBC13C
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710216497; cv=none; b=BVd3TItoHQLCHhcgCucXzytnxCVp8OpUhVTDSrBfelpbBRgXq4l2aaMHpCjubZnvx5utl8wA2OKAeAaxSSMjq5NqONo1y3JneTftMgsfOhmmXJVD9g7FqpjlJKm8OF/MBJ3Tjh1H8UQNngqcvDm9Z3gmud3EPKXhKn8Vziw7ZaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710216497; c=relaxed/simple;
	bh=rvyvhcEFygXwcafpuXTjFig4UbiSZd3HX824raM+UnY=;
	h=To:Subject:From:Message-Id:Date; b=EJ1Pw/JaJsQ4DMsaJ84ty3CIZ6m9m9EdUris62i5zbDb/SnOsCRm0NOteIaR+vwWYpZJVt1XsGyr6l6pTN3ANloIkweIVSxfKadcNdy67I7tNsQyJ2rYv+yjMSTcSNBZgOBRRlfKvaGD2+staNUbHpCpFcWSpkwFJFscWC59UcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwGLAryk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwGLAryk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C433C433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710216496;
	bh=rvyvhcEFygXwcafpuXTjFig4UbiSZd3HX824raM+UnY=;
	h=To:Subject:From:Date:From;
	b=iwGLArykmd9QUumwjKPeKNW+iu+kIba2FnabXyvW7LJxXUft2sK96aWFN1ALd8ojV
	 o0xmQm1JPSX7v530RDr3Wq2RSK2x1h/vWpEArJmZzGsfIT4Qgpju7dRmtAHTwMDdZS
	 LwKzS5LG/i0O637NSkeR7OcHVs9n823FK6uQl6cGhh5xq+kmYqlreWyrzXMWnWkqdl
	 wuvTP+1N/4mj62q8XVebGdVUySVHOEtOQPpOulJmsQBHfaQAAZtBrMQ9V+7xia22Ks
	 vC/h6LudRTMXv1iGsbHyEkUpGkNA1tyxGKjA3oy0ucUjcHvEVU9L503PNno0uBhG+I
	 Ax5+Wf9qKYo5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2FEC54E49
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171021649637.5186.1555161325870190281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc32e6a47fd250f35571d07f2e9a803581d7e84a197627d852e169be9dedec61
Date: Tue, 12 Mar 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710216496
