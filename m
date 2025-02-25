Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F66A267B62
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740482934; cv=none; b=bzXdxPKwqFIVoN/dNahcROZwv30Usra8vGeat2rPIaEWVDzNDe4x80xRp4kJzB/oWihE0P7Egm6aZbea2gPEwQPGxnwPwidtIgWpWMQRQbFby5K+Hpyg32ZNEzJjX5jEKQI+Q8yxpUITiR6zp5FzQFmnamTh2C82BDTjLebAMEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740482934; c=relaxed/simple;
	bh=t85aZcpzxvuUA+Uf0KLPVPQV3opvZLz/5lsw+/PCKKM=;
	h=To:Subject:From:Message-Id:Date; b=XdSB8VTPvMCBNhSf15DocgvONO23CQJclKaXPgCFVGJ6EYgtWAbg4bdcrDA9AASCPTVmCILwoRZbTADCTEz3xMZFvxsPoU6FjowYVU+sqFLwoeKhnDQm5YGvFGxU3AF2whVJ4Otv6BeQvGmuze1qwZbA7mQxrtasMOBKXj6B4Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYXtiXfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYXtiXfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34C9C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740482933;
	bh=t85aZcpzxvuUA+Uf0KLPVPQV3opvZLz/5lsw+/PCKKM=;
	h=To:Subject:From:Date:From;
	b=XYXtiXfV/I+ITXSA/MV65b9inHU9fJ9KeDus5h1YR1BXrXrMWN4wkbuoHN93JY+ap
	 KsQQqEmXa4NCjKmExqwbfmKFTOQk0EM9mXsAtwRtQnZYziZen9WPsplHYY6RgMq5GP
	 3VjHh1pL2nprmcJ9U2Y7GghAUHWWGTcexkxLN7sGVG+j2dzS/4NRwF2kDE7P+myH2c
	 zkmaJVE8gztPQaIGpsQoYflun2E8pGkC8bBEhsVaHVpS8umJyg6WkXP1J8mLsG70cF
	 RvKfj6rGTc3NRuWyxqAZQ36e0vDC6tM4T9VEXtzo4q94M7m++gnKPF/Ch0xIfxZlbs
	 VYJOG7N4nLCeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AE4C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174048293361.16966.3834095204043449951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd74a906337c274cf27184ce7ad812b141965f78c93ab64c8e900244fb319167
Date: Tue, 25 Feb 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740482933
