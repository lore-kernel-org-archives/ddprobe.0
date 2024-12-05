Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A6A217F27
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733401554; cv=none; b=ZifUL1wctJtb4hbd44rcNN0MoTxBnpwnDpcQ8Ys6kD+5oL4Pa2Q4/bUZlp2lBKt/OFTjrrl5VHLal7v+eBP96Qf1KbV135XH36IMEkx39DYQ1foBpX+3NMRBaa4x1asys/4kwFLB55vp6OwbU+ABMNNwMy2ycYdDO6imIi5iO9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733401554; c=relaxed/simple;
	bh=S+CdjvVDuEDcaHVsXQxth4AaeI4kvVkE7e8kz4vQWXM=;
	h=To:Subject:From:Message-Id:Date; b=eNhNMZgOjAVMMm4EgwUeGUJguaISmiw3TlHe5iF3F8DGPfJWIHPrEr7/OR+38BtLCkgAcH4iKXvauUAGUsAKcpBnmDt4fRlmoDdyoIquFaPtjkCp2mCLHeinajHg6G26D8LwNwuMFHePzGXS7GKgQ3ie2SVIuFLnjwICLkXEblw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnaMAtm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnaMAtm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0638C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733401553;
	bh=S+CdjvVDuEDcaHVsXQxth4AaeI4kvVkE7e8kz4vQWXM=;
	h=To:Subject:From:Date:From;
	b=dnaMAtm47wswmJ70qTkB4jgJiiqjTSSlj8DerJidqMcHSHBdNC+3/EPDuHL4VeH2j
	 YslW74bIbSs3nPrb4G2cZtZpdDpvwquVcqOZ6/vgaDaXdoPRWrrHKauCvEMOpD/EqW
	 GFkb+ROa7JkPnqV40Vzm29jV+JNia0Jj3+0RZWWJMwiyWWHLNyLPFPtfkGGUIadLhD
	 QZwokOHTvp8jWIBnKxCoup0f3Cb2eeCsut5p3yFzBG0/Ndkzjczujvdk4zQdEsr6Zn
	 AURPBNESjnCfQEzKMQqilSbQEHZnjpGKxlU95O1Y2RqTglCRavTMII+UoSpnRGHVZy
	 si7wAlrTKAW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97593E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173340155361.13745.1353823911141120057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4da648b4f0587ea3998852557b24c00d1c0c07940079e2011b7ce8e39590145
Date: Thu, 05 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733401553
