Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F7C1581F8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744433995; cv=none; b=gleUrQy8GSEV59WBtOMicqARyNgaLY14vrBFNZ6ApARTQZippkHnSdSXxxnkS8QzJIzaI/r8QiAjzK4edpwIQAq/zTGrEXkizXujZXrmScnchBEzNO+jqt0lXfavFuq9Qkkp9WKqUPXvc1iG4o2f2VweeKEKNct0iGEoQPRKyds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744433995; c=relaxed/simple;
	bh=3lXo7USDPWqs+k3VuYWTxMB0ia6wAv74GKpXi5dJY8E=;
	h=To:Subject:From:Message-Id:Date; b=NjgB8GiVtd1KWqrmP+5Rj+CA9T7NaYLnoCbsm64T1i1S36OPMrsWxjd5MCsy4WzncUj5G/6YGlH2h+/SR2nCy9+ZShg2v9VbSpQe7/7LcMhU77p19qL3phaZIwVxTkxhxQGHdBWkog716sD995vCH9X68e+S9d++/88FsgK1dTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgPXzXnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgPXzXnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B16C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744433993;
	bh=3lXo7USDPWqs+k3VuYWTxMB0ia6wAv74GKpXi5dJY8E=;
	h=To:Subject:From:Date:From;
	b=YgPXzXnNt1z+RQyzA0w9If3tJ4Qyl0irhF0/lL9eYD1MIbxOvnk7KT1jPxxAGi5l0
	 KwWa1tQzMV262F7ICL+OGHxdBx+8t4g0T31opY+Fd1Du3dhTZ2hVvryVNqm92fb2ON
	 JWopcaIy+beyYID8uUrUz8v9MkHygrr3WIjfAxIDcZFa7SATcTBlkaoMfQjcxOTdUy
	 I3ZyK2o8SOBkyp0kahZOCC7gFOCQWuf/jQpWcPQ/fK00z0A8DoqTZCmgGrKVlZmgZ/
	 89czIEmhJXwY03WuAHn90xO8mzcCkk+PnVQYbbNASq+gTQCsPtVPebjXnGR7mCts/P
	 ycR1AMb7CQ+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162FC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174443399357.25080.4435434679272342909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9070b975a46fe5d56bfb240f40fb428a3410e7461799ad7ae6c59d2cbbbbbbc5
Date: Sat, 12 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744433993
