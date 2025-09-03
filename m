Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B5A1E9B3D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756871394; cv=none; b=BCnDyC/o9s/w4evf8itrIDeUfDN2YTQUFYYhBCRAWSLDYv4ueEP3eb6FXNJv0IuUQ1Ze/V7Vcgh5D6zh/kAm4ACt+gb0ep5VDQOYGcLyLq5wM8lCHQXFtDb6zzQre1TsE66aPeBJLHCH8bMoEIOPHpXQ+1QvZsss1WRY14Ouuec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756871394; c=relaxed/simple;
	bh=9fxO2gUEtAI/7WS8lrfTfKOUxHK+HtRaEbhafVQRg00=;
	h=To:Subject:From:Message-Id:Date; b=XE5YHF/zgYvLGVaSI1XHTiuUSNFCPrL2mkdhQ6dVLgKikKqhHGzk+b5YKTSR1/xkNzvUoo/1FiP7xD9tYmIIQ0ldgJwVFNoNSMH6jLsUNEkBrtJ9KTTBPcDmJSflO3KUae+NfHVBSPqbG0nptLYSJ0sLBZZ0UzmvkGCdopD95bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+775M+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+775M+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FFAC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756871393;
	bh=9fxO2gUEtAI/7WS8lrfTfKOUxHK+HtRaEbhafVQRg00=;
	h=To:Subject:From:Date:From;
	b=a+775M+HMFm4v5F8N9fBC/fG2MR7IwVBxmA9j0tzEdz/PPXYkkyPjsbRs0oyUMm8T
	 PCIn9v6xoPV9gTcfGgK2GW5B9CIGGfjJEdQsA2/ihRrrTahHCyRREzg/PKvKePpgSE
	 plNcUiJiKMB9V0HpvWSYG52MZDmik7lKWF2JemH/zV+K/jdZPzHoJM4D74u1wU7/6X
	 bZvWCy9h2cZpQPWm3muKqbbKwNH5dx23/egxl6sdeaUkFV7SPP4w2D84l1WUJGCYR5
	 /zbXsvSTA02BCgIwGXrEm+rV5quYfD+fA958va1M/y/uMi+5VspVUIOecaAodfWKR6
	 jKEZtSX1jQZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F582CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687139357.6952.13114251310833641145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc45229c06e2fb41ef81ff7fd383c2acf7580cdc80759cdb2f2981285bc53953
Date: Wed, 03 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756871393
