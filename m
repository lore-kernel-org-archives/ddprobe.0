Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4268B410D24
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784572114; cv=none; b=sAw0qI7GnKRLo/JTrMmel+i+dtOIXEeheVI/cDrYLxlfAVxsqEqtz4Mibvizd7om2EA+HmnwqvGIiLJ7elcvJ06545wanUf7YHPz5ufWXA33/6vGpeZ+m9vN0ce4a82vC2UaonyUpZxvjVXsrCsXn7QnxBqeJqEsq5fPbDc1Y/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784572114; c=relaxed/simple;
	bh=OdluvDPLCF8lGU2EOvnSFsS2u/6G/phYtfYujrYU3aM=;
	h=To:Subject:From:Message-Id:Date; b=SyKYSY4uUgr3O+KueGiTfG4tm3etDVf5YylTwB7u2J4pTXlXGCpCxWdr+/m3aJVeizlCn8gu2lQP08rBdg1W9ZTNNwpK3j82gM6XgYVucNBiJmRBnAqEgOsSfSaqYJHZhXLuK70C2Tq3WHKIqK4o1Yj89XkhkIDCqO+aEaJu7ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlHupByK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlHupByK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FA7C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784572113;
	bh=OdluvDPLCF8lGU2EOvnSFsS2u/6G/phYtfYujrYU3aM=;
	h=To:Subject:From:Date:From;
	b=qlHupByK4D9uS3Q6nMYepMKBSeuDL+/L6BBfHUeZEup3kqpjA6OwP2pkMUhnwoj0H
	 sT2psgPHiPH/rwoRTG1s4TGV/bSivPXmQCGME0yrRiLL03n2l8LrON2NBfsIbEnAJy
	 fICyj3FUnc1VDcn+YcqAA7cZKReC3vONEdNdvcnL1JiBgZWVwhAMqlGtpWHhlSOBQW
	 0ijru5eJoxza49Ww7VR5PKLD0ssLKwa9eS06mdilHIamiQtR9WQ+JCx1az85oCX0cS
	 AldH3+4UDuZ1tWWmfWDskgmyKGp6jbdEf1hU8sd/6WRg1CbuPV4llJua362FGOd8e2
	 O2eGJRGhgcvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE30DC44529
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457211370.9335.4110215756767814669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f77b9b46003b10891a9b1d12fb87c4613857fea45c03b39f391bff7ba446c7
Date: Mon, 20 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784572113
