Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3459823A0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726803354; cv=none; b=fKZdGmvrYI71bki3UN27+8drh5AGN/Q95WZdVdb41nZ3IRNhHUBNGHAcnoUdYQMaHSczhZ1/VDwOk6i6P/+FbLFPxIma+UXZ9LCGPuuXSSWk/6EGdq5g4YwyTvwtCOZ5NWrl3O6o8Flxh6IVIegGmdB+qNGJ8uzCDuPMpMyl3Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726803354; c=relaxed/simple;
	bh=5bcfyUwnlBpkIgHyCLPJEYdI3aZNvLgA5I+5FTaANeY=;
	h=To:Subject:From:Message-Id:Date; b=SL0juZiuk0DLlnXi70/3KWOIAax2z5i5UR+9q/U2rnAqs9kIjEKFij6yHrkuTFGiuEVcFPY5THYkY3ij4qRIXeKHdrtSzID0YumiuTqRnvQdOCrpslloevq9uutG3PWLciGkhGpC5qb6imJU2sugRtvoMf/MoNPsvHZUn/zEJXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtcaJsIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtcaJsIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5802C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726803353;
	bh=5bcfyUwnlBpkIgHyCLPJEYdI3aZNvLgA5I+5FTaANeY=;
	h=To:Subject:From:Date:From;
	b=QtcaJsIlCDb51nHVRFDkVpvvgaelT1mXO2/Qpaqd9thQt89iMMMgB0dof6SVUMJFS
	 6kJN26bn7aV113Z5fXw4kjJGUJVC+5glaIJJQkmSMS0RL5pX9JYto+55svuu+bsjOF
	 DJpRwsG1nca/tbRZworoVIUZaLp/fzTgPNZnr6WAs0xXb715COtbd6MagaujDwDyeV
	 g8ZuwHHITzqfP/anXr8xQ5pl0q6QbJrNCq58IWcBNRXw0ocSAKXhBDL6aXXvWpcgxS
	 QmbyVERFK1z9PRF2BDugln6QNgWnwjK9xYgKJCq9Ce1y14PsdbYWXvY9JwMclCNvnL
	 4iOX29ctOjZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96306CF58C0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680335358.29302.3154502020698582989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b544399cd67c514774b7572c7892aa5bf2acdb6e49f31f6663d4541ff7be55
Date: Fri, 20 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726803353
