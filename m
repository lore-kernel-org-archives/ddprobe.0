Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225747F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706347097; cv=none; b=bDBQc/fjdPGF/8C1jRHAT2Hd3XKiwu0njTwz27zaj1IdSafv9ezQrReu1cQmiJzU28rYJYLZizhiovPS0e/S75ngCbfBtcPPRHrfW/viP+sDFz0Mo9SkYmip2SxV5oi7i6lA8fN3RT6EH+PAbTy8LQT+W/gKhnZhM7RfRoNzhfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706347097; c=relaxed/simple;
	bh=4TmcEG8sPU8RLM8YZVTU7ARDK9/zl2qxzcNOEHsB3vQ=;
	h=To:Subject:From:Message-Id:Date; b=k4h7WkbeXURTJm2id6ZjLhSjnmWsWCpBLjuZUaz9DA5BXa4yOY2/j5BZ6gGIuvSooQbFR3bAUiwcKXRG868l56Df7gK84DCVEJkp+tNAC3tk+UgSwfTW/TADzwsyVZ7GHO9CZzJcCQy7/yEila3N5WMZ1rUrGQdSpJo0071ratI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAGqqS2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAGqqS2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80760C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706347096;
	bh=4TmcEG8sPU8RLM8YZVTU7ARDK9/zl2qxzcNOEHsB3vQ=;
	h=To:Subject:From:Date:From;
	b=EAGqqS2zJc7TBLEQO7XoEkxbpmgdNRoiRkoLMyVWg+99P32ix1QeU4N2qBq+nvUqo
	 LnHhy6E91tgY/MS4sPpiDYXxGL+6avEeLsic6Tj3gpd/8l7aIwn4fWHr2wCOX3RMKg
	 bvlql9rs7kponEVXsniBXWCCEDPlews3UKDVU/LqoCOgwXeNi5YNdIryDK0FPtXg7+
	 +zwudkIbw+pTcaPru4qbD1RDHhbn6U4TNJCMYo4BlSAbJVrStd1GpYbD0Gx+F1i2rt
	 jJ8drFrgub9FHUDmb0FZfwmX5Q8qaYKUquqBK/NIQnZ1AfCyOKH1DEXVJdEMG9V2hc
	 RutqoXa2+PG1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6519AC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634709639.18935.8637546659938126021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd26d5d45c9017b9a622e696328f16c121e9d80504ef237ea61b474126d8a7c
Date: Sat, 27 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706347096
