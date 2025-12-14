Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60913B7A3
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765752774; cv=none; b=dAtUmzq+nsGtDO2W0cn8jD1wHVrHVMDyf5Dr9tIiqNU4ToNKy48lNeV/aiwreuOJfodwtXiN0M193YMnhfo4ZIbXQfs/kdCCeDjJ+TM3XndXu6htACPhSI9mznWPI8J1Xyk88C7x8EsKL0fYRS4gfqILOfDrfrh/D9jKxXGjsr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765752774; c=relaxed/simple;
	bh=EU0MD3vjMIJ0oZg9SfYx6RvV7+3cLjYrcS8NQdyx6Cg=;
	h=To:Subject:From:Message-Id:Date; b=W6rIm42/N+3RcR0fM9WdN3FEkNsajkaS5b6Lnon3+cpgZcZWPBRMdyxML7lEpdkfNIVC/ggJq1hCUtlr0lsc1MiXwm66fnfpM7mJMguZurldlWUb3ncACfEsWBv/FT//GDS2YLctY85OqkGqeUpWaLoskaQQKA2kSNKqvLEMKfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KniuxkvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KniuxkvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765752773;
	bh=EU0MD3vjMIJ0oZg9SfYx6RvV7+3cLjYrcS8NQdyx6Cg=;
	h=To:Subject:From:Date:From;
	b=KniuxkvFIg4UdPIhXRfqIvREyred+DXR8oQnpeo46NNq+3FGidJzX/jEky1GjUdw6
	 26QRE5ClgJiApHa4b8dYyd+jde5dJYLtz4rJwCviyekjWend/BkyJy/EpD/Z9NivOi
	 t/PM08FetWwZL3KQ6kEDIz91U/KNKL46zFiJDx7lMkmcgO6BhOSCgyoI5dz5A3BPvr
	 L7wMSvrxkx0cxrNWZlJfq3Jek7CEFt8Rj+FPUsigOLFlQGcd6oprs3+JLRp6/TNHhv
	 YX5+KQxW68w8nZR8CReyUDCF+jXPXeuC9MQOpldhDaPoqwWu0mag3SqeXtPmAlnkoX
	 Z55qqBXymWSlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95089D5B16E
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575277360.20368.1251919867047550614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40a3dd3d7defff92eccd55e38367eaf23baa2679fdd421ef5f5c6361978db20
Date: Sun, 14 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765752773
