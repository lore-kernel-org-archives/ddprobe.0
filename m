Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7C4221290
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767596034; cv=none; b=ZQBdkIJrAeSfhQstWlapkr/oZlynpVsmfySZQb4qBEcbIQdyahqWB/QCKXRUm8aT8jJyHaZIcM6s3S6uHGTl6jsGXLjf6H650WZbKsVQ0cIKUt/uQD/9tOA61+lLFW/LpsJYmXwaUuTYqemmw6PgCrEqkb99W9awwTaV7inzZSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767596034; c=relaxed/simple;
	bh=og5jkp1Bgs41VQktNBgdpIsicz+tKDwC5XgHVWBpJ5A=;
	h=To:Subject:From:Message-Id:Date; b=nZXTVP1gFFMHNEQCgvEQbds6VeJefFD1eejNH7fA/YzQ2n3hXaJzTQ3vtxGRqut/14bfEU/iwb8xFIyXjiVMeyYe2CP1erD1HsoNbapJcXy1piBJW29SEQA8MJ2eRRR3fN2p4pKWYBQ6iQF1liD1abPlnxptVGqw/4o5IW5aB58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETVgwsBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETVgwsBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5308C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767596033;
	bh=og5jkp1Bgs41VQktNBgdpIsicz+tKDwC5XgHVWBpJ5A=;
	h=To:Subject:From:Date:From;
	b=ETVgwsBLbwydoTUn/3+/jZxlnfzWp01X0tgacpfa7MpQ0Koh3QC1cAdw1FhZtuudj
	 siXO6VFxPzbMAZSCU84x6tiTDO2odHu7WEqAMAViFsXOkd43KCP4otQwUoYaAQTd6O
	 k7DxbfmK9wVfGcxfw45gN1CkfGJmD4w+Eq67Y3UPvvRfiVJdl7WtSKUTf2qHUPfMb9
	 0mqOdiK0YnPuTCd4Vcj/0jGpbi5a4MBMrYLakD7iY/zOu85OkGEfqPUfSYcdHvWW94
	 WzzgHuj1URzarvzYU4nCBKkTCqdkQBLAPWOEHTEmATsXR75rFyQA4FYR4vUDU2d0Ol
	 F43spWCcAH0fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02FFC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759603363.23378.14838981368797541222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d5cb772a391ae141c5412bc72d5fede021f80c5fafb4961cd1843051402e0f
Date: Mon, 05 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767596033
