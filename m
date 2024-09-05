Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF41372
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725513354; cv=none; b=iCvXl7qtK3hdXxU8jsWzxpvDEBQO9Om3zlcd4nJPMyr4PDCxvBZzwRaKnmex2o187Cp0uWbGSCWwnAv+DMSvcMGf29hWBp2Yu45apW/jtZsOnS8KuxsZw7DHc+RVwz5mEk5c1T5AVSbxqr0ZjVnTQHCRb30ICgTrpft418CAgqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725513354; c=relaxed/simple;
	bh=+e4RqZm8eccu9RQVOZAPUDs3hpuoKMEcWkRkkFVNfS0=;
	h=To:Subject:From:Message-Id:Date; b=huOAGuGBIVTiQXajg9CpnaBIiHDB2ZgSbZsWTzcyRvI6Uj5dbbxe8rfoB03Yi4qOyYUSO61mwQ4Y4mpZeeoCMkXXtOnfzRh+jcKAXgfvmqiGuyEXjfBw73oh92Ga3ikqjUnKl2x8lt0lw2f0BEyZIkhgJ0HShaf6G4Q0fuZ+PtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqN7s14t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqN7s14t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAB8C4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725513353;
	bh=+e4RqZm8eccu9RQVOZAPUDs3hpuoKMEcWkRkkFVNfS0=;
	h=To:Subject:From:Date:From;
	b=sqN7s14tRMNZ0m62sJm6EzZ+AFND8iKmgXMHjmOYIBERAaG6mxHlVw16uLC6B8Jal
	 lN3/wejklWPg0KpRvaRvy6UaEC5LIHcoaQJ/7jxLFA6uNY1JSWHnqI6QGzv+AYsDk3
	 oafKefR2UFZ/c7zgk3PuCRAVQ+9Cb1TzQVpBxPJNiuxr1OKJTfPuoKpOKburMrGKIY
	 mkKoF374fJ6DUKV38E8FoEULJpRGQk6rpFY6Lz9NSps7m3M0tRyBFEZ6c7NZzLkzh1
	 NMgfqEPS7E04yUswta7v/IJUGABbXIHEw676yX01HvlmpVmC5ObCvK1Pn4q0heQzcw
	 P86m6PoZ7QntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7296CD4F20
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172551335367.4079.11012279711834774708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e07faa2c92fec8aa2a6511b5aa2d7855ccebc60423c9e6d2784104642a096b
Date: Thu, 05 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725513353
