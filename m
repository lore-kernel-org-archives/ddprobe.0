Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC06E567
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717624043; cv=none; b=iz4UjMUpuU985U5W2nvBf7AEFKuoVSfkOMwh+A+rrTp5XcqvVs3Bw1ckVsjRaNTRfIKPx+cjM9teAiCA8DdFQXleSUmM4BlhMgtPiBv5oRvPycAn5cYorS/UamHxce1B7glbDgH1lPR1tsD4dmQJWcLCrEZbM71FyTNkBMqb3io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717624043; c=relaxed/simple;
	bh=OYxEZH/oc6s+tpE2DEH+w0zi2Z5ib9TDHDCccq+rKJ4=;
	h=To:Subject:From:Message-Id:Date; b=CX/XlyyzgrZp0GsQaH0LnjiVX1P6GBl/rhihnZbARHzKAbOuDj+3XcLAP3x7n9fTYSVSRUOTZEk+Go/VRRGSS+HyaZojGczQ0LVca8EccVIx9U9KGHZ1MOhK+JRMCF4vq1YeMaaQgGRO/vcnIHrmzvnKIrMM3U+T+MSckbq/eFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr1Ktz3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr1Ktz3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 047F0C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717624043;
	bh=OYxEZH/oc6s+tpE2DEH+w0zi2Z5ib9TDHDCccq+rKJ4=;
	h=To:Subject:From:Date:From;
	b=Cr1Ktz3CnSImf4m3TEpLpM6fudawvkuaD+fOMZA9ZLd+h2c5rPrduhmiWyI+23nBb
	 2QFCUJ1slBo5Y6u/olCPcG43K/8NIisani2+8Q4sZHcs9R4/DDXwX2/hysd+MPyvjC
	 zAvaPATkanPcJmao8iGZMUYvC3d/QWLGxGoMB08rjtX74iKBvPha5AHSuQGbMH8TCj
	 K7oGcHBqa0yS8pb+6QxdcTwocY+62E1qp1RNeLFldsdp3/ctU0rrrBP5lyHbLZY+CK
	 C5rMvB4YlqzFOSgLd/O0+z11OjDHegOKxWuinza6djo1jc3WD5BIzzDcbnJXNy3T/t
	 V3Bh/db+PVoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF901C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 21:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762404290.10049.2199561133894325059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a21277d20151f5dbe391a156dabc245b7d8ac3492358ab26f1c256de506cfa
Date: Wed, 05 Jun 2024 21:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717624042
