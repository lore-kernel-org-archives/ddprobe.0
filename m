Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA3F224AFA
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756670394; cv=none; b=Nm959vhGTpULCwPDMkwY9I47Pdg7ERTleyYMxXHgUds/DLO66bkua02eJU3r6FJn+uP82qmV1VdfbqiQVoHVxBgRhebKUYYkpHTPy+cP4o8lOMVe/YE3BoqsxWyGMoJt4Zv45qvHEChcahBYNkVqYg42pGVyjYg03Yd+IDy2s0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756670394; c=relaxed/simple;
	bh=sZCphMQ+xy9mVgCKKv8jNQDhNIqQDm7xrRsQLyEqNOM=;
	h=To:Subject:From:Message-Id:Date; b=UWYnZDo/xr9hTVhu195rZnagZ+MuQ8Nfc3bfXbRyZLamI2BCBOQEWpSIh9GqSjnrCDaGw81ZoFv+42lBarQFivVx8mNW5AIs/gACjfVz0D9ngStr3d92/Jmn+V06AShRaF9G3Pf2Zo2k8Gd0WU0h8ORnPeoVMQHb8YQHpceRBz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBiTHJRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBiTHJRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6378C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756670393;
	bh=sZCphMQ+xy9mVgCKKv8jNQDhNIqQDm7xrRsQLyEqNOM=;
	h=To:Subject:From:Date:From;
	b=YBiTHJRe2uDdghzgKgmzLmKrewf0aUGNb4ncs+hAb11j+zl8E5nkOmYzS2F6tcxRV
	 rg6M/1dviyWFO2R6YHOau80BRBNO5GBSTbtg/myM/BtV5UoHcy6jvwN3jQEWOLPusC
	 T3UVatYhTtUjDUhX4LpwNj+/XffM16Mc6s5V3gFx4IQQS5p6B+2XTU1FmSK6T70wn+
	 E3WcWmHu4EexW23k12ehXEDlUeHcVro5AvQwtG5KO7qaJyNn0zrc54gdOQQ8ENzqAA
	 A67XGZKIHJymPjE0sYvbBnDUBuhYTQWtmUCn1Ym5ItYRDWTHseg1vq066xx/WRXDX6
	 sYEIsM+D4Aabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94213CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667039357.23618.13755165432069875214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb6f35d00f3cce2aac6cd3032a0c27ba1e90c6155489a5a3d33caaaa094e8c2
Date: Sun, 31 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756670393
