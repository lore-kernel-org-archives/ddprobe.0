Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C211E1DEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748246394; cv=none; b=qNdouk/8ecz4ewNFPFoY05btFmGyAFfZFbDThf/HDhKEQdpuPC8FSXtytOOvDpGUrM3RDL2P56zc0KI6FcnKfAUV868OgiQWW4TtCsHb/yChKOkGXpvUnuVTQUaF3mp403uS51WIBnjlt6NnP53fylqbXAhHhcm9EhcazrBENyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748246394; c=relaxed/simple;
	bh=SGAoK7FJI4ThDfjUMczOf6ggcang1hWnv3tMzSjkcIs=;
	h=To:Subject:From:Message-Id:Date; b=bNQH4kKNpkEfvauB6ReGFh3FCqCzsoshU6R12tHeW94YW1F1qkEfY2ygFeDF0/JmKn0dzk1HXDlECQi7b2eIyQGlQ3BtGh3yU8un3xiCcTk7RH0JHYr5nbX2rObMxCHLE6atz6kLhp57L0Lol97YYeloXLFHNW/CklIGZ/AM6Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtVumD1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtVumD1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3223C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748246393;
	bh=SGAoK7FJI4ThDfjUMczOf6ggcang1hWnv3tMzSjkcIs=;
	h=To:Subject:From:Date:From;
	b=PtVumD1YlZSq3p/+W6FvpnZAz5WiElfVpkZlcHhHEKIa36Dk2ubUItAzq/o8Z3CmM
	 S6MtB7te57a57D9EqxwmHQtGFJp8pKEv8/IqExkoXTrddK9pAL5JghUN26EIdeRXzv
	 PzuqZqvlGsEWUA/c29tujUqsZTGu8kxIqflLefGzn+PK8VkDcHiBKu/wQjLmnhz6TO
	 dfZnZIVAs0wY4QWBUAZBEBLnqb8qI3IUdvTi6aiGDep/cpGI/U1IeGTDRDQVW69fnq
	 D/FGfT27cmjg2WaS0c+mn9YO0Adb5Om8pHI0YR2mIy5mukbaO1j3Rg3hYYXkBgw4wK
	 deoqbW1yttUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CCC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824639357.417.2723423914133947879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5105479e6cfc5d0324443618643d6deae36df2c81d9391d76180eb52c38e3e3c
Date: Mon, 26 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748246393
