Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FA625776
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743752994; cv=none; b=RgeB7Nx1VUWkgTCHO1eL/ABhVL6v8se373BV7hBXnU2uKKspAHb+5ydxjISyQ3X0ddmrlJ7D+p39XgWc6BPhZmg5vjDyda/IfLneiOyEJ5hRKsBuPGRDhFnjlwNGIxZNM7NVePH3Kei4+pQtomsBrXWGTPDMKiWlexTRRcVUAQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743752994; c=relaxed/simple;
	bh=BYzbe0eSzZI4mn5UY0quQ022Stdz9G7p4hNPYcZCgNM=;
	h=To:Subject:From:Message-Id:Date; b=hPCTPF/JpMl1fVG6+a5mdYH+AWRXMH+T1W831q0i97WGvhGe1SKhf2lZdn4apB3S8uXFoACjRFQIfqYYMJHcxe5ifme3m430JVA9KUYwW9t/QC+80YvKtlvGGFz+sy9flK08NWv2Yp5jDSNaGE5bLeOm5PheJ2UHxuAJPbcrpO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ovwme1yW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ovwme1yW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D16C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743752993;
	bh=BYzbe0eSzZI4mn5UY0quQ022Stdz9G7p4hNPYcZCgNM=;
	h=To:Subject:From:Date:From;
	b=Ovwme1yWRY9AiHdasMWhhLVycM+2Y/w8VkMeNxyHuj9PIIiiul8tPmZi1bxWF1Gn9
	 W+5nfZbFdGjVydBh0n+qKLHlwIzWMPZJisWGB7nV/H6/t7eLWQikyfhx7ixr7AfgDo
	 1E+0s1QGQeGZNWY0TFDBunTBIreroTJu05ly+KiwEYca1DYcIvsJfEdnJFhGNrHR/r
	 +RLJ/u/oGtva+Foh4rxXswzsiN/FaAdXY0a8Ytttkqff54UKTeRiDzfUpf5BSu1oMH
	 pmIlEKaVPJYys7kaTt/5fc3nWTQRUHqA1IRf+BMUb2s3JQkYuqJAdKt+p/ppCzj1nv
	 6zswnDDqHSgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E338C3601B
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375299361.7728.6589061965095054762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ab6a7f8202bf5d13bc0a3bd3b118a3a0b4acd9cc7080f7d9263b0f6dcfb122
Date: Fri, 04 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743752993
