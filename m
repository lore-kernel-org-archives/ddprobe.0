Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301A1254B19
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763215194; cv=none; b=FD0BzyB03W6007bKuguJeheF9AgFMdYX2HWsSkdHP+PU9w95r9svKFV6L+xRptG1uVxAuOcRSZ/meun4K+90Te0maoXtoyrFjokRozEk+RF7Q/+GGRAu2sikApWWzphAs+9XpWOo2M3uhOzJ14+vxIY2MNaT+7Mb6M8oTZN/LXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763215194; c=relaxed/simple;
	bh=AgCcovGR5mhOdy+rkejS3QJD404qKiMweKoh6M/iuAs=;
	h=To:Subject:From:Message-Id:Date; b=ZEc9fbrfsvFjPYENvRkOemdC7g2V0JrEV27xc6qZ3Wnmh30P6xyyTanLFYD5bRk9RCre6hXOUOpNXIuMwuRB9R977zmyvJ4Au8Gvlv612gqjbiqovR1eokv9WKKzXGyQlrypyn/tYU9RhP9kngrZJ2jvyxfn0Ywx1D+y4kbjqiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJjVRvG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJjVRvG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75A1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763215193;
	bh=AgCcovGR5mhOdy+rkejS3QJD404qKiMweKoh6M/iuAs=;
	h=To:Subject:From:Date:From;
	b=DJjVRvG8DT0riaZ0rsoi6WdVFWqw4YBZKG6kdYfUyq5JAoimDHvC7B/anXw0Ggg+C
	 vE5hpP5iF6N4peFG1+IZuUZbjsh0IvnxJywaMlyL5mdpgz18/j3wvT5OQ7IE7DS35+
	 pORpdpYzyWh/ODmMsDkrsiUAhF+tXTjJxpyo4fym7H9kZf0FKv/0QjHkN92bUWh9PE
	 MCnFHhfdNZO5xJ5rO+nKcmEkhexFtPXVrPtirXEuULaZE+7kPUHtRaEaAfaIkEELHX
	 nDQ5QZad4fxutzcCdhPfbEe+nUXwTQXmcSUFQ6EPMyM9qCtpQDPOc7wWdfijdLQDfL
	 iPeBiugCDt6oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7503CEB2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321519363.5805.6261366559181107277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37bdab4dfd0a1b76bab52acdf2a6cb5f06dea21006158e6e372d2b382bfe9860
Date: Sat, 15 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763215193
