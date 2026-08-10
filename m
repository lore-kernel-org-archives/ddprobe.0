Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E9E31DDBB
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786362634; cv=none; b=FGrXyJRvxt0RRGr4qEfdgCEgBy2ec8moFqmVzmQfJ0JFRgKCgYhOUUSUjiCrVcsibSz1asGwcF88yiVO9Dh8it/nT/rAZNa8QqGWlObrxX88367AFCFFmEWD7QibLbMz3UsNKOTzqqYEX3mvgfrSe8nHJb90gMIDhnc436U1nVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786362634; c=relaxed/simple;
	bh=bit/sdJOqx6NYCyoAsIgIRB78aFfduGlj4qU0M7L/es=;
	h=To:Subject:From:Message-Id:Date; b=Dru18a7WBKDva3oQNgLYZNQN5v/ddwuLU0umYVLg+C5AQAJKWQBo948BtFvY/Z1BmA+qCerTmt+nJys+Wit/G16hbWHmKmMydjqDOud4hyRaAt7egUg8v9r/P1K9vTNduNU7zzc4GJ2xDjVJKc9XF5AvCvfY5B+tS9EQovTkR7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2i+XT+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2i+XT+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB651C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786362633;
	bh=bit/sdJOqx6NYCyoAsIgIRB78aFfduGlj4qU0M7L/es=;
	h=To:Subject:From:Date:From;
	b=N2i+XT+vva8v6ZcmTUUi6D0TfVIHyFsxX8nThKCzNPGu+liatQQME7trpgSuy/7WP
	 w52uqvIkN6/SuHolpAWngM+iHZNoXEopMDzhU98kPgu9LRyhgvb6S1ICMUiSi/Ez3Z
	 h9x0C/Nh0/6SqcjXorMNb5/zgvzWVoGI02vTxMyMOQzcaYGvHL+OMpvHMwm+DxkilZ
	 e1DJJ22ElWELTPBxLghHGgXV76F6yuKVlRQ6aMa4gNPyb9Z83/NkBIQi3/Vh/wDmMJ
	 RuR/tV04KTxVM3h4Axk4eFD+9doGes0MnexRfxXSSMAWIU9gKBS8UeUpz/IsKzaWP2
	 TR8HJ9L5eHlQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B38C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636263371.28512.424183057284516214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f71e2885d88853f6f661910845167f326989c2491934199cdd83de33e0ba6e3
Date: Mon, 10 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786362633
