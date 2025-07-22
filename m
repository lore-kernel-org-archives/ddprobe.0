Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2280F27A121
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753211994; cv=none; b=S3fKAebWwzr3ND3V3Djnue0uYQ3pMng+ew/+eIihKIBoQzmblR8NgcRW66N8m+nMdKkY9Dv/ln6KpE8/xpCkaynUdvwxxpCSCR20zIjjFd2ozvF5kKeoMElgAePMsTPHXwAJGWVxj2Mp5fNppIV4EESwgk97k1ndflqb0zMKCQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753211994; c=relaxed/simple;
	bh=D5ofoQZw+zNZ62gRT0eA1rEP+xDIjREuGTNjeLSp6cE=;
	h=To:Subject:From:Message-Id:Date; b=lZNdAUF4lrTGIG0+g8OmFpmiozuKtMdRTGjfX1SErNPSpI8vRyCgtG5sTM6b8Q2doaAGfv8tE7E2rFFeN+XizKfwgQjLu3vUIyMKaVDI2+o5dK/C8myoWDh9uiAiV1U675iiyUi6SZAddkcc7OHWnZ+SfX8q0BlbSkawiWhOy/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mki5fbMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mki5fbMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A856AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753211993;
	bh=D5ofoQZw+zNZ62gRT0eA1rEP+xDIjREuGTNjeLSp6cE=;
	h=To:Subject:From:Date:From;
	b=mki5fbMiTDBM2bxSAvKGapTv60vQCo41DVVp1uVN84jPCca6rQnokEtsyVgXAzP3+
	 EN5/GqgCrMwikkAWMOw53jsENWmVpFAX3Pyxkh9kRoASWPUJoqYeJHnW36FozYyP+w
	 cp9GGExmDoVq2905P4lW7BzeostX3q1paINGcxdZS/4nXPxMXDKoyKch9nqx1UNAmt
	 cqgQkYetlyKqSc27KuQroVbCL1uolkzv5nPuPzrHT9bcxNh8CRT1vA7FIj53z+jz9x
	 ArU1JwCuEDmWvhls+8R0dn9OAP5bfRz/s5/VZIQ44aYth6O4JJ96p7D+b+w+VIhfHq
	 W0kaEzYYps1sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95556C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321199358.31719.3822414794856472852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ec111ca1bd6008a4f0e57a5239a64036703092c2a8fdbab07a9814254a14fb
Date: Tue, 22 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753211993
