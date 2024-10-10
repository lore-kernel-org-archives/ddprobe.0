Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242B14A15
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728583554; cv=none; b=gKFQ1wuOktdVlqxLKAAaEYRdcYK290jQeqeEB5FicSY05NN9AszR3y5xT7Y1JA6qlEVzpcqNgQqqbXMdu68ODOLQqMiYBpHuUEj4MWaSFFj7LZITMMETg9bLFzTgx6vNe6jeWK8DNEi855oRCul4y9GHJeUJixi8BWfpVvmTDm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728583554; c=relaxed/simple;
	bh=/cyafrW1Xf6YGwwscy7G5vtShyc8S+rZmP2X/yiq6bg=;
	h=To:Subject:From:Message-Id:Date; b=rnsoUsy/QUHEJAX8iQ1YS73kYCgIhHY6wrMDy2nN6iOeocMT5vcsm11vhVlxyEtiublZYmZpCK0pVkJyhiua/cmghoZFAEYxK1BzDPm8NH19V2pvM4+gMDoDldQMffdaTOnk6lNFroLMknlZJeH9vGt0Chqk6fE5TVeaJMAcMW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utrRKZih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utrRKZih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCC9C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728583553;
	bh=/cyafrW1Xf6YGwwscy7G5vtShyc8S+rZmP2X/yiq6bg=;
	h=To:Subject:From:Date:From;
	b=utrRKZih6IdIH795MrNW31E290vboaWwxJe5nsALrgSqizZTaoU9JJahWN+V38lHD
	 ODahrCu9ve8gBqg2kgpFECU2TIrJCX+30qX6m/iSp+PHXmUWvauxj4KhvGWstvBfGV
	 PkZ4sCNaiItetYfOL3EKkwQZxN1rbApa/3sGMdM1cd3uWWNmD0SIB4xCzLWUjjPrpU
	 Psly7QlqmxQCtmgc1YMAAxvsl1HvcL4x6ZeR/qarTf+7FdnTDkEkMsZosAHj44HEIX
	 AdeNPytpPXveJwOedTMj8tAnyLKLa9cyZItKMKo8CqACkFcupzVfyx9INWkHpy8GSP
	 vzsQuIpoIi/lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BD8CFC5EC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172858355360.19793.17219552376204864292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1542dab09f8bea4ed7d8eb8901b29a070c61466fb679cd1101715207591b56f4
Date: Thu, 10 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728583553
