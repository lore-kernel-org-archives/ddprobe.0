Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1028D3033DF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770987294; cv=none; b=MO4lHxu94aUZv3TmoBcJDEWzMC70fBrcne1XIxxkAlNa0Z6IITbw4fbqYw8TEkL3x3p6dnsR9ibSZjj5lQ+2qGHU7I+JQiBhak3zCnD/86UPBIYcoN/Vj1/Z8RF48mHjIRmBg3qMy56WfomVvaDbGr5V+pyyKqDiLkyGHxjSw1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770987294; c=relaxed/simple;
	bh=SBXyY8bnqP6jenwWDPHtaTSy+h4HOWrN9ztajsRjgsA=;
	h=To:Subject:From:Message-Id:Date; b=ZzxqioexJCsRdGWP/vak+q7UbewYUITRuvTRdKfDjYTzr9A9TvVrgiDq4plBKlr74UTqYvfg6/8UOxHki7rSI0JaCeCvkW187UeDCa87mhGMdaCToK5OibBKhCq4rykAqInrxwtKVJXI80lWxiCQtbSHlcPinUS3+keGucmkhd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWNFt+2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWNFt+2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770987293;
	bh=SBXyY8bnqP6jenwWDPHtaTSy+h4HOWrN9ztajsRjgsA=;
	h=To:Subject:From:Date:From;
	b=UWNFt+2cT8HhJVLqd+QGdq5gOjfrA8nbvyBxft+TjJplGYFLWXcsozRkv6an0Kz1n
	 hrdqjv+R+eApSnPpOu4iwo5UWNk10VCP0Q8EoEH5V7MK2uHVabSgfphmOyTto2siou
	 QuYBRcEUJZUGE3MWGvyDESnXMTBDgGHV11UGXX5g7yVVT/GUNpW7VqHrvCLc8RqnwU
	 aqKC4TXmM1VCoK17YjjxZwc1DqiLelJKPzEzZLHdQSmKIpkmQtiT1i7RrsIkn++6xB
	 nW/XNnyoPOToOft9zb2DQmCUNjhkaxLrZphlRHG3Y+sZUBL2clVUvRG8sPKXE95LQ2
	 0YI4Znge6zNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96033EDF158
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098729360.2772.25490210600678141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d847bf3535283437c3779bbdc2669a8c076fbfc551fe68207be542ca56fe72
Date: Fri, 13 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770987293
