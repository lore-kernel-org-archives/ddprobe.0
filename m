Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4540C281352
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745348395; cv=none; b=hp/MHQViTQS18noecki9iE+GrnKb/iah/LWbKT79YPy47NF+gsHPuJptl+MnIO224l0KdYy5j7UijUpX+RAqie8DaYI1qR2CVYuo1Oucqlvl48bDBFHDPYnSKcpXCG3L+SIVHICCdk6O48+b96TFx6PdnKLH4M6iXAq90Emcc/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745348395; c=relaxed/simple;
	bh=IN2cSlA0Ex5fN778z7cuyWn5pCT2+4cgSXx22fojZGw=;
	h=To:Subject:From:Message-Id:Date; b=ALlHD/FyaYrvbrVeNe0k9S9p4DJNwCCA3D5+31ZJZUbh9Gb1uWfym1w8LD5ad296A5r+rK0cwXPXrEfI1rv4CA5MApfI99uKQTto5llRc1GRx866RF0rwxiPp5LZ5aKuK/oAkQAPV5uSuiRNyHQlIETII1LO4joFRJpNZm5QMGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osEBiaOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osEBiaOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9A7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745348393;
	bh=IN2cSlA0Ex5fN778z7cuyWn5pCT2+4cgSXx22fojZGw=;
	h=To:Subject:From:Date:From;
	b=osEBiaOmzhTf4QA6gc+Q9RQO3Rhy8/gIC9kodzWiB1p5sdaNvwVH5pE3rT8xgulZe
	 P8ZEiQZjyBLyAzoYVFfoiwgODThy391m6LbKbokooaUSI+BnfzvT2Lx1tmsGrMeY11
	 pU8B8p++5S6fxw202X8MfwNxIdJA0xXncQAn430tMRCwtFGFgvurLB66NpHRHRNnS8
	 mFt3nT9whapCs6EIcvRRZeAvkogo3tiudToV/XGacZdAbusNQp5Q/wrEK6SaeDp1MF
	 VuYuauCqUYfmpdqaaj/kEYFddGNfTdb2RKH02/lISecUOvGaHP5EdC77ZAXGTtD4Jb
	 euykPo45FRVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48CDC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534839366.1861.16045843774456495626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca384fcfad8b83115b37d234a5a91e49f139d078426e23bd86c65e5471ae6d4
Date: Tue, 22 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745348393
