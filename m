Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2878726AA93
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665195; cv=none; b=FOZ4xaKcEvCOayVYsSctwijHz1Y8gJWNnlLNOqQUs+zyNCETHtUPMrK+ROE9ZndA8RdvCBha+SjXedN7fbWuzLqejlROkigUmq+vxJgYa1Ct0my78bJ8XGitkaEj4HPFpgy1eG+YBsaLH4gZ1zx+dkwUSxBhsn1XkQCFvQADffg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665195; c=relaxed/simple;
	bh=yScyiu+oVjgLOOVVa45A3XKHsfdCbo+pyQf9g9j7zR4=;
	h=To:Subject:From:Message-Id:Date; b=jpjJ5xa8UdiJ1oyKhCHiffcqelsJpLE4wccx2Us3LoJKnT4vc1Yr6j0dsx3NJEflU4wxzxsc4H39GGVxdwY73fO2T+w6LvEL3HCtggEpbEpOk4UWHtw7gsD+eqvR+e74nozYvxZUKvfUIhzza2dlLycHdp519FCOHv4TfIfZ6nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmY1eoyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmY1eoyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD13C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757665193;
	bh=yScyiu+oVjgLOOVVa45A3XKHsfdCbo+pyQf9g9j7zR4=;
	h=To:Subject:From:Date:From;
	b=rmY1eoyZAI5JbPRA7CVWNc1csWIru3qtm4WZ5OTMY//NaksWnQQLs+7JspDRfJewe
	 rrV0WB7Et9Sh/q6gLxidNuhlLAEPk9qJ/7PgSb1UvBhAhgPlacXkIM8TKqbBbMtioK
	 dBQiLbgQz+kpH8MfflKZH2ffX6zpxgV+JqGTIo6dwHprWCYy5mypyL/9zB27d6qJE2
	 Dy6XLzyLLu3fFEA9drjrguCNWK2ob/EmotAKQ00oMMieO1Hylph28b4gs9iQARJ4po
	 2vDaiEqUR1PrB9gIPkpz8FXIUA47qOYl+mITVoX1v/BnC7VRogGWj+Pa2Lck3Wxynj
	 V8+JDyfV3+G3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95196CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766519358.18948.12491007021595471079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048ee6913f1b10e907129a2301b73659b3f7871aaf1c37f9d5939380ebb78aec
Date: Fri, 12 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757665193
