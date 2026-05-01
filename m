Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D499237C939
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777627053; cv=none; b=jduZXJ2PVowTGtfoGTC73uXOvBk9uRg4vQEQfT5/EWMOtUp0//9ebR/i+aDvmEuAdGIsg7oUEgoV6e6Pm7Do6P3eha/4zXHZoJ1QdEdyxBmPfrofo1S7rmZMQyrXXIY67WbjOr6yWbB+/FkfphBXDi5ajK0R5TmfHt0XgSbyT60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777627053; c=relaxed/simple;
	bh=IU+TTE01vKMOhf/l0ysjxyCl18bnq9zvWvr+TfEzJmE=;
	h=To:Subject:From:Message-Id:Date; b=oqSFBhGp6OZDmX7jeXJmS13eg9rO4TB+JzQnjwZVBddwbbzdIyzE+hKSDHiVcUIykx9jnoqoNORGU047i1v2oL8bXwE+Zsu3aGVLPdX1Yk89FMjOXO7ZxSMXcrmAstLKODQxnBcfzvAHTBSZDuoTEFh6/9ahTzbsTggrijLYcE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nz6D4m4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nz6D4m4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96E2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777627053;
	bh=IU+TTE01vKMOhf/l0ysjxyCl18bnq9zvWvr+TfEzJmE=;
	h=To:Subject:From:Date:From;
	b=nz6D4m4HyF3Pw60xaobngvMladfX+a/yoDbO+0wEWqrbTgoGgLUCMq3xwr3hB6Okt
	 fat6zOqHoWkRM+cQ5Qp7Gu5U64kLh+yqs0A4O7bf42TOCRGZSpLjKYzcQ4ykVHa5mg
	 9aiMUb0Vr0uTtw1+KBOjamYbIYaghHWMfYTSyMsSVujUUcllJgTF1t+EISQ9erb67r
	 BgFpmkybHInnfT/HRaVdgtryMfKQsaCRZM3CIYGhjnqyulihTL0N6JN88et2dKGE38
	 Atqafrhct+HRRzHRX1qhnU4JvQtN2PJNutKmA3FTvOni4QUts5SaDYtjiGD9QZpIi9
	 ISI8Pyh6MX7gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE80FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762705368.4951.4821703612650918301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153d38ab6acedac075d633c6adeb944681877f72f7a05d46b5f87fed856cc57d
Date: Fri, 01 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777627053
