Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1FA256C6D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781937994; cv=none; b=cAE8XXhHzbMpZkOVizJj7cjfrqytfb/813eLhzHpt7BJ7M1CHAdAMH+MUHizikSGpGeeyH4mXXeicVCf+0CFyIISyW9V2fArt/JOznswYR4kpfJjRkVIo7yRCkodQqMKkr8ezTVZWGxolzEaQ9UBB2J8PlGpyvE/wRlZv9sAHPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781937994; c=relaxed/simple;
	bh=hV86Q7vQWJDAgla2NvN8IZw1homYwz0i9MAppw7Iy3w=;
	h=To:Subject:From:Message-Id:Date; b=kqYnA53sTEndeJsLuOnX8Ip3eSolFwYybrD7o6vHighg4S/M+mnIz+ZcX9Yd4lam/re/3oNv0YOMETH92woOFgCRY58cSUmCO+bapSdlmCc2aqI3/ducmlTjWPIBmSvHjEIU4t59Ec2v8W5yuxmJvyKSFCoBCfMVPE9wKy/OPJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcyCwoyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcyCwoyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8C1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781937993;
	bh=hV86Q7vQWJDAgla2NvN8IZw1homYwz0i9MAppw7Iy3w=;
	h=To:Subject:From:Date:From;
	b=tcyCwoyR7PGVNAMjnQYYgYS6657BAHQGRO1U5e867vNBmp/VUEm6y/RZPOF6JkqHq
	 Xgap9r+BfXfEPSJnJEublAScjwoJdWwGtyO2qBZu/CJ0F0t35+h42FyPrrnW7npG7m
	 BQ1HrX15SAjhR/6ZH2tlQ9nXGV6Dj5vtE3cNufjSQJR1J2dEdovNJfc1389ph1z/iF
	 7ETkrT4pHo+eXyJM9FUBQUqj6fUXNG6nXtdY00Rmay+IDaaDIoQ3aV3CbmeNprwHgs
	 0jVKlOYEE/hUvlbklTsqa9lN6U/Uf/NPsujxM6Y8apHKqqVZqOrDoGkDrrZV51C+Ks
	 /He4OEj19aZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB31ECDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193799371.19181.14873237085035215785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0891e33cd5d8ecf4dc5ecf4fa8d8fff47287fc40b6ceb8963033ca477cf3588b
Date: Sat, 20 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781937993
