Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CE33ECBE4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785155434; cv=none; b=PMUHkHNWTW1M5CaRjQQeahFc5clZyJdkRRoQyywxslKQeRT4E1GTuwsDXuzrrJHRiXjBG48e63HQWBFlPhPB1FtdoEoM2T2Y/z8UYu2/Xjuw5yQsdyG5BI82cMUEUkHH5qa4/Z+0bPgmSVRfFAU0KlVNxXnjuGjTTic9Vj0fmNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785155434; c=relaxed/simple;
	bh=AjGFxf5URc+xSTo7e3Y46NqHYM1G+FzK5s/2qahdK6U=;
	h=To:Subject:From:Message-Id:Date; b=f5NbyEJ1khx/PvDTVIBR4dIn0IzgBpLauMP1Qac+vJ0iD7stXGDy7TeLxyh9lKGlpD28fn94X5w4c3xuqR3Udx5Kee3pyA0wfh+DPErXXgSA7EWuPsV81UTX/3+H9THO7FRjz+pYu2cWNqXfWO3WpfAuh+cPVhAMm9Ex/WysbxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msAbSQ92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msAbSQ92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD8DC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785155433;
	bh=AjGFxf5URc+xSTo7e3Y46NqHYM1G+FzK5s/2qahdK6U=;
	h=To:Subject:From:Date:From;
	b=msAbSQ92Xs3zleMysLmNyy9Z24ZPj2DZlFDmJxedaaj7WCSGDH/86KYojHEdI2cCh
	 oGuxcXLrFo4AE1Yu2qyqvSVyKx4XvHutp+p5S6TFisvmhQJeWFebJxr/1v1WNkHbGM
	 gohZu2pgMO3IYtd/YO1b+6n+RHDaDRWEBBQnwL9diPYHmvk9j7xFsHkKImz9UNAGS/
	 ljFwn0rG4R474aqk0PIcpByVhXCojZrgDR9eGB0nC2dZF/lfMdzU2PF0KztfcT0ik7
	 +bl2mLXFjA4Dp9y51RfvbFy6ljcrh0lVO34IYwufKr8LG5a6RG6wXSMoEaMBcg6l28
	 4QgTjFeF6vB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D6EC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515543368.12202.11255936650734982046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9db3da2b56fa82f63301c257fa249e9eb8dc42fb9fb633a08ad1e85106d19e
Date: Mon, 27 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785155433
