Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8687E9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746844794; cv=none; b=KXq7W2fj0tnBo3KiKGMqZiS15ceHGW7Jicf2QTdtKSI9CQ3AQ+WjRz4Hqz5xlSP2mxM6ZtFAX+yYaSosGhIb/uoZu8vy2n7kzI/l9o0WX1Q49KeoFpcC8hzYhZRIk2shkC1SuR288aHanlMxZDzpTYlMicMQETr4047OSGYxZR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746844794; c=relaxed/simple;
	bh=l3XVluqg18ANuAJXHUpc1rpDLTHk6RCWpTAkTmH8irc=;
	h=To:Subject:From:Message-Id:Date; b=E85mtV/ZkRDR25wPQHiid5wtnD5QfygnzAA3UWZiJJB2aepTGx1dnWN1YbgVwmBWBhFCmK/jRX7n5h0HWtFR74lrf38D6mBt2T3PdIX6+TdCCnO2JPUTD/Kywg/Aet5CqlTPDuUR3CS650pH2oN9HJAd2kIhUOFZ5a1/GIw+qcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ireibocb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ireibocb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A817AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746844793;
	bh=l3XVluqg18ANuAJXHUpc1rpDLTHk6RCWpTAkTmH8irc=;
	h=To:Subject:From:Date:From;
	b=IreibocbJQN5jaJ8rk2MOoCijoRShXrLX/MAaqlFoY4FM0VH1+AhFVhkgKTSA2D6N
	 vpes4E1j+B6ME5oPgfzBRXOYKNNqjolPbN1FAJ6xsiLUwDXwtEpq2ZfgM/ljGeTmb9
	 KyBAyTcBSAYuVoMHGLisGvSoosbbxFhyzB9Nsv0zwk/INzgJVBv+6burRSmvl604np
	 Y3jX2Q67voXliMUG11hGXX4+pxRF2LNct0Cs7mpG+7TA9j89vHY1Z4+EVA1bVti/JJ
	 DD5aLijqQ7irmaHd+5ScnIJx8X7jsQlEM/3aP9U/HoQFtFhXWFAJYl+Or+MwG4C18i
	 ZXeLdQ/74GcNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F70C3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684479357.18209.13480887325026395220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2506624b2951b513b42c4389e95d5c2145465335c6f1bbbf19908d814a25d8
Date: Sat, 10 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746844793
