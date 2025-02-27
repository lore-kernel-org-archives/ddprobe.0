Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B71E1A9B2A
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740692334; cv=none; b=nHgr+JBQMP/w+SnyA4GpwLgLWtxMaxurYfcnEQe+1rAtiTCAPaGBqr+Kq5bBB7mc5IjEvAyUQgjUV8WoHxOdzHL5dlCW7fn/avuafsXgSis9yvqP/FXZoS3K+xMQSFwjAEzsAFohbs9GuSXPWq2IHTa3vnPiKpAhC9so7Oa5uxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740692334; c=relaxed/simple;
	bh=PkbIo/9q0MjosdRksXtn7OxiSkDLQEEagHdARwni5Fc=;
	h=To:Subject:From:Message-Id:Date; b=gsBwaOzqlAii9HGBAV9ZhXkZmU1JTV96CB2/oXETjTeg0LKO+1uHtfb/7Aiw7n1SfAScrV9zCIbQ2Ll60NUDxnmPqKdf8el+t8octXmJaWIUh/NsMeWh9fudeg4e7yu4kj1KzCIYZK/IH8lyYyPbKy/kqGLdLdQqMAnW/x9dmg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTgQM+1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTgQM+1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FC7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740692333;
	bh=PkbIo/9q0MjosdRksXtn7OxiSkDLQEEagHdARwni5Fc=;
	h=To:Subject:From:Date:From;
	b=QTgQM+1d+bAc64JAU23iDkN3HeN4cwmeD9Tg/p7Avxs2q0aI9vB1SlmNnm65cIM4e
	 e2Pn/lHv2sZpzXYmzhKHOpjrITui4z6b2bV07XYLnCybgxYOyGO+DRkDrJqXnh5duX
	 NF6/gBijZ0UG/3V+e8mE1XzMhflxi4abUb4LCHMRDIUgAr9CNY6jMwN3TUEwU17hYs
	 jK1XSy3qPjFliekTFore8X0K6b5wu029tuonDnyA6auw7+mhNgX8e2rCuhGWMEx5Cr
	 5o/0z/VQMA9JQAK01/YU/HveBm1CyxRNtsx71kM/bBLV+Cq5LVjICiElXUVIJuI8S+
	 YcbLhdHHAJ6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6541C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 21:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174069233367.9945.9517896150212398970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139f7c7aa156918c3e157253a414269df240439c18745304779fd2487210523b
Date: Thu, 27 Feb 2025 21:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740692333
