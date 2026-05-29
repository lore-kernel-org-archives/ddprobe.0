Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B69279903
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780088554; cv=none; b=taJfZtMYW3ahGnNquyebz0vVVvHuPB8hWuALlWqxmYJ12oIEKlCoAPALaWcKDN3F8EaY/wIh5rctpaDqztm4fjSbs2fpJQj87NpJ6hL//9Mg9PqYF+knyFGU7jJ4LrgieQfFf9xis5tyePbOorvD0m+00gq1YoOeueJgcyBQrzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780088554; c=relaxed/simple;
	bh=DDtExV5CzHfYxE/SItZk0LljmOyO44BZ638m+1TMeyA=;
	h=To:Subject:From:Message-Id:Date; b=TRYsMFxafzBZNL7cd7S1OrOvUbbHq9+ouZyMOnVokFSmsIUowje1Q+xFb7TCfyaa2XqKaLtzaZsdsY5WTXudfFk2soU+A+T97TI9zebr7mwfKuFN6neqEP4PJSNdcI0knwhOiUCPq47Uj3XWvRV6dx8vCQ9FpARh5g01AyrSxFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK0mdzoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK0mdzoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06E6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780088553;
	bh=DDtExV5CzHfYxE/SItZk0LljmOyO44BZ638m+1TMeyA=;
	h=To:Subject:From:Date:From;
	b=CK0mdzozYsteDRZSM2izioLK8+IJ3V4CXZsEqBcIkjtgvMMVhdMFpJDXu0duXcYtB
	 xUt0FBO3usxdGZwR62X2pYa3SPg2+/5UC0zjIC3dhP36Wz1W6y8Lfa/dwj8mVEyKkO
	 ecuaoFgn/+UlAYQXQgrdEEhSNEcSyIfws+7KAyq4Zd5f51vgxUIygIqlKztC10cf6k
	 hs38DF/H/q5z3YEJQ9Xm/gMu05jejr7kaBCY2O/WuHmJXYxVoFfUJVyKm374MYG2zY
	 lAKfhs7PwKwwRM8w1Mz0EsuUCPsaGK4GJUaU4YvIXEQKsGrraY2xZja0buegOjRgP3
	 BeIklOvVuQ+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4402CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008855369.8634.1597006957041932585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7454aa73dc8d66e8838fedd1a4272424c2201645715a6d007028448ab72252a
Date: Fri, 29 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780088553
