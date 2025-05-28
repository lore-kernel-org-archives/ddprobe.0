Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DC754764
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748398194; cv=none; b=IHOksr76VZQLsdoVHm3VXB4fClzmM3lIyo6vdU6RbBlx29lQRMbMqsz3T1a0Ct+gDvmPSnvWX0euMCVisNrbwqnZ2xYLERH85KiBN30Vhivm1NUvWsmpFh9FAJuoQH2jjHOq91VUpbATn00vpjXTxXByQuuyKhkFZagIDJOfzVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748398194; c=relaxed/simple;
	bh=cWMvTfDJJiZF3IkjqW1ozFSHe9Jrrj9szXAHagS2TRE=;
	h=To:Subject:From:Message-Id:Date; b=Z0Qzlg5g2m/DRs0QuEtLFGTyu16jLyIL0+3oAaqmhFDnU+Od7r8pL88zwn21sosn2KYQfX1OTXZEvtmic687fcf7Lx9T+J6zJDfvqalGnw2btR1Ysv4M7CIQap5A/BtwnBfMWdAJOz+Bo2mEWK5FIdFmNVx5yFORMoitxtQSmtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzHsdSWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzHsdSWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C8C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748398193;
	bh=cWMvTfDJJiZF3IkjqW1ozFSHe9Jrrj9szXAHagS2TRE=;
	h=To:Subject:From:Date:From;
	b=WzHsdSWLt67in3GqQuPw01BIgpPZXKzlZRtQMLOFNS3aD6BGV+IdJrIHQheytkicW
	 rHBZh7AjcIKAo0nwmMS4wAsDZaELKtpiYr1m7rmwh836lG6Uo4F7DxwFjWPyfaTMFL
	 AOOx6ha0D3hkEfSsQs6bE8uQderFjNWxvII+GpWXNXS5oTvlRSYa/METCKcD/epLZx
	 8MsWMR6FjtE8oGMw6Oo0mJOGB5wkYKIRCAqtycKubNtx8sasLnzXqBeqBjUEHkpyOt
	 s1cFMFQDroO5bIZNTliLGixfgPRr1EMAwwzelBwaNaFNO8n2nRWF41wAJ8JWio6cuW
	 MvPalypGoMbtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BBC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839819359.21876.4119626892547574060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a6dbcd332e1e079c8fdd1a067d70b1f32d06dc4cfeba0c209c7788d81dd461
Date: Wed, 28 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748398193
