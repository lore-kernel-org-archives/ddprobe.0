Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB591D27B6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765317173; cv=none; b=fdG8Desdn2DZiy2M/h1a48PlmJmymQ05/5tNWtC/i8PojXKlVGo/ddtoZbBA+klm+WeJ7l0TjUI4y38eoG/e2zhmanOmIw+itGuiR5eHz8kik/TcCNvi9LLiG5P7WSJL4cRpc4ah2dOWpBQonJ35m7v8t+8/o+Y0TpHc+3NY75I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765317173; c=relaxed/simple;
	bh=JaD0RMmmHs5CTgfGJehjPft3so4XudwqVA2BycoDnNE=;
	h=To:Subject:From:Message-Id:Date; b=M7BSgCxy9PAIXsxV3/xgGf3jCt9TNMet3Y682zYEr5RSKFWcEs6irl3EZPvDQynECKRlN1ep/g5Ij0oSfI7lipmIy1CWepOASWnByfpkG7WOUw09V2iY8besp7Tq6wr16qe4rDPUPfPQdspBWbTatUGZUR38MioeqTNoQ0e5OKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSX0ayLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSX0ayLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765317173;
	bh=JaD0RMmmHs5CTgfGJehjPft3so4XudwqVA2BycoDnNE=;
	h=To:Subject:From:Date:From;
	b=LSX0ayLk3rD4bg9m48HIwJwkKf6RqkAsxT9sVbq4PZUW+cGjiaqmX7OZa0l+xCB8V
	 0CDk6kDPSm1aoNqvJFHJ8ziboc6mZv4QHX7tqbycliWukhZ5pjKCHcRr869/GGTS8I
	 Ey9hGk26kq84Daqn/CEQk3jsk4XfJgV+0kSWy07JqsMUGqRj6F3caJwCKu50v0uOeZ
	 B9lN6woMSEM0Wf+/bUWLp5B/2u1VAmnP5wemc3dkvEJHq7+djk6Sr6t/yChYCupCbk
	 VeUMRH3Tp3L6WiEVisSXkN//bc9N9wnHyJ7T2C0dVmmSROLK0mi89AMl2zLKkHaYQm
	 jp9PGZKLDqQbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6CD3B996
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531717358.18256.15134937739660506752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ef4dd64bc000d1cb2935975d132f17ffda7c20356a27a8ff907d75cee83de5
Date: Tue, 09 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765317173
