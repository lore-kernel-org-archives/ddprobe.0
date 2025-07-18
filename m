Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38608126F0A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752833994; cv=none; b=i0VnLjhKQp2JxEDgjQ4Fr0w22YPz/Rx6ZA6ijngbdrCLF42Jf4hLMDdYkACuB3xi6RfLUjHCuCbQnf9uqrdpzh8k0XDyQ0f5PWGB0wdGGfq2ADhQbQR6A04rxQkJj/shu6pYHS+2W8mMyjY68LdlATMbCL8n+FAQ03+e3TV8ml4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752833994; c=relaxed/simple;
	bh=zQcBrFoUsziIW2/au6H54tDZ7JaPk0rAVJzjFLDUdMs=;
	h=To:Subject:From:Message-Id:Date; b=AIqjRTCg0wKFmaSWVSmhHGUjwq9dTz48oUecOD5H3PsCW9W3KIMenIo1Pnm4emzXBy9uNIOOcgwRaBZRb1BhyA7QiY/9KCkxhATWfjkefMmQrkL1IIaI/DMxmrqII4McuD/22ZRiqwPphj6bpaJFwRtN51MmVpt9itdtbxHbXQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BobzC5Vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BobzC5Vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752833993;
	bh=zQcBrFoUsziIW2/au6H54tDZ7JaPk0rAVJzjFLDUdMs=;
	h=To:Subject:From:Date:From;
	b=BobzC5ViOpFCtNQxbiXy8FXVqBaX3/UXN6tsqToWBtRY9X1GZ6yA+k12v+SACdpg1
	 IwPOUkj5HPtF5c9FjpQdkY39Y5Fh+pz/Y0o1VPrMd91s2fZr3HmaJWXY/DOxaHvHd+
	 g7Ymc7svqR+71berm8/AWUHBNfRjBs+dHurZkHMK1C8b15hui1HWGg9B5gYPnEY0X6
	 krbDZoWnqO73ahoVVf8HX1uZH6RXAEaRJylXq0tvR9htzbzktqhNHXSfv+s3OFFjUz
	 aEhlqgKgJN3+Go5AgpqHqa5/qHOJll4J6BJnB0gmtyYYw09KKP7QfC2cfgSHGSpp9d
	 9cOcGZ7bg3wtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF6C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283399358.32004.13190892963694667871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81add30eb65728499d427498a58c118bd5e9aa0e813d0c340b93812b67dd1029
Date: Fri, 18 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752833993
