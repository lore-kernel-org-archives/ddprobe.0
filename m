Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBA213A3ED
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719294803; cv=none; b=Q4tJvpwAHpAHeirlRYF+Pug4gHDcf+cq1WBZgmMk/y4SXF08+mi0DN+cKTTtRRCoyxlwX2L9bR77CnI3jGSDIHkD2UpJzagdCTkwA63/aC+sKt15s+oih/BVc/95taHx0bLUBAj9zlOGaJeP3bw2p1H08M4VMYFgcfuMHdILC/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719294803; c=relaxed/simple;
	bh=f0NKXrZ0eW/BCIdMwaO8YNnKtPUa459Aau1PU2sfVjA=;
	h=To:Subject:From:Message-Id:Date; b=sQjL9Q7ZdpONjH0NvABTXkNufuuriW0N5CPaTm6qAy8NQxTDOPSF7/5yZSTlSReW/SqZBYzKq4eAOo3sOdHFgvYVrCHUCjzkp5vxlYRGEBEwEzkTbY84LQ/e8YTT1EuAQ7jzW2W+2BjyFV0Dd625bf+iyfqyGb8TsrZKAScvjfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOwQN+Lh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOwQN+Lh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5C8C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719294802;
	bh=f0NKXrZ0eW/BCIdMwaO8YNnKtPUa459Aau1PU2sfVjA=;
	h=To:Subject:From:Date:From;
	b=AOwQN+LhL9cRirQkA5/IBpMUvnipvZSp0QMftK0X+9c9f4VXmph46GzvWWlIusR00
	 N1bBkUFgPtOjmkeQKdrXCeArDe+vzQCn/oVPZbBXHRqmsbMXtLuypF4tOu8T52Ys15
	 gXsWyIA2nWvxbZQsa4HQddNsCSyAVbMrMNJiduoqzVM4SDvluSAdiKuC0x0H4I3K6i
	 ktTX1geqjv9SgY38v5Ez3n75+hD05UhK1ePFbrX2T2dAVTr9wjoIi98Rm5ab40JBfs
	 mD4b8ArXCraMbjpDMC3P/id0DwYDy6kOrGVrLeTb/g+nGz6DqBpiQG1aIqWNgjju1Q
	 7yGazjNzbvhFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95CDC3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929480281.1713.2832490330957850842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0fc7a616e12c575eade31e429d31207d24495b5039dc4e8bf36327e24b2451
Date: Tue, 25 Jun 2024 05:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719294802
