Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D217354AC1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760854194; cv=none; b=Z8T7c69QXEO0WDp1qE+ZduRCNBy7+lO2bPcJdGxyiLbEiuGAEtuGrdypHZoal3ijTQx6Sbxxp9PI7o/Ao77zYICPFmcfSfUb+5LGd1JCkSyU0JyiDe9uh/lOR/XRs6qQgbk2r5dgNPShSoJEws03DN0IOFGrEufoY3bYj5kMj6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760854194; c=relaxed/simple;
	bh=cmPvy93e7zatnmjHyvxVNSI0StXE2EQV7ySWXraaRvM=;
	h=To:Subject:From:Message-Id:Date; b=lrv7i0ebFAE0J7hVwFoU0/KQmEQV8ONeq7cwjnVa5sepQEfcpkTbkU9yHFPw7BmiQpYahk+nFSF/2PBXnedCoCx34I7xixPu07VUbbGMGGdWJ+2mOHzM32W5khFaksLemEtzLb2PY0O3T7kZ6gtpMKs9AGdjpJaqPHmHakmgtNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhqAf3M3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhqAf3M3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A574BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760854193;
	bh=cmPvy93e7zatnmjHyvxVNSI0StXE2EQV7ySWXraaRvM=;
	h=To:Subject:From:Date:From;
	b=HhqAf3M3iA/7j7IoY7FBSqm/ZJcC9vYi6dxdas+aqnA1XvECCut0DTHWd0nUZFH9X
	 ZjQLPIfj4fdDgejIuG/MvSFD/Z9zTr2QWZ4QzSGPJ3Cp3g+2MlZtMjr0PAjDKUaReT
	 n1sZKESNPM6rL1Lult7vLD11trUHBQi0jtCci2qZugySpss9xwS1iSGV/SFvqDp/CK
	 suaJqKdPg9CQyG2vmhofM07Sz5AnkXNwVIBB6wjeY/72gY/lt0h648F+Fmzw+2Ow3e
	 KKY/MLT5ayI4SJzDqq6+zMFlZhNPhVOVWHtCrXDWSpE6t9/s6Fmz4cm28Mhujifho4
	 PjBuLS7DoAwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F18CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085419358.25144.13060232608138294894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de46b23526079b5f83d803a050cb15af9753f910081189d29e7b62b6a4b5350
Date: Sun, 19 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760854193
