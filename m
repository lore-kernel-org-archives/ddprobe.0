Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3456833120E
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778824834; cv=none; b=umnaGc3q1m1l871HOUJM186NWe5scqJAgko/i4fe4FMZKS1gcRPO3GeakgizOXT3Q0d1PwgdQ72ncwZWvGYxB7Mkj1accVL7H4bGfL2BG6N8XgprsVExdGZ2eF4vd6GbxovdguAnrp6G0nIZ+Supe5T3suIAjjlGLOQOMzWAcbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778824834; c=relaxed/simple;
	bh=N84VwG8F+fjnNV63soWFBaH9+SkhI2VZsTh/HHcne/w=;
	h=To:Subject:From:Message-Id:Date; b=Sdb4gz2vw/+Ptk0prWEOVQH4MExybDuQqOsPPA76Y+aJ6UfLGIj4AJgCOL3cr9qEh/p+UE1cyHD+MeMXD2gJ4pEQ1OEr7zErk5jDY4zy+UG98obriEzs8FZ0QSlCnUKAwMZSvMQ1VdAyeBbBVLdDCUQWJUNxrox0+o7nebqh754=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1YMjQ2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1YMjQ2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B45C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778824833;
	bh=N84VwG8F+fjnNV63soWFBaH9+SkhI2VZsTh/HHcne/w=;
	h=To:Subject:From:Date:From;
	b=u1YMjQ2aPMi41Cw51xKh91igBPfmaZ10V654DgR/lkwe806SbG49fta5/Vx1uHcK6
	 tqbwAgmLAQp1+LAMiH6eqGpXJdgvxfIshWFUy3IjaS4rvp3uMNrYkmwqrtxrdRhtBk
	 ce4AmG+neyIVQKEJq6kD79EPg0US206G8Q3j27fXWXxj0vIAoc9FXqM1hWH/CF/K0/
	 jiHhOqRp5P+bATCMZ4GUUYlx66x86eIFoyanU6vg81kcFGigzrPlZ/CfpalqbLxN3H
	 0uZie0HQqxI0ox1ctdorOH/N6h63xXOjsd5n3VglN9YoI1nX93fuR5LddVVeUW4ja7
	 EL+bzvL6dSy4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8A7CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882483374.11724.15163022019405325611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc883f6af094518015856fcde29f0ae6468fb28a8057dd7f3be697794ae4906
Date: Fri, 15 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778824833
