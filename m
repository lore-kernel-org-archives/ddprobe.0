Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2474A13959D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781303794; cv=none; b=N3ljVe0klCS//aF2tudswpWsz4x2xtq6XPqXwCBOSOfKSdksHjaUOfvcaL0f3kyUzNYXjtSPHs1d5hkThfoBCPX+q4ORKi3v6FkhDYfmfL1igjsJ6vUj3CL/WXvWjYsetsaT2m0x3vXSOikmZiXlSm+FdmL8yjwLIYy7a5Zazm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781303794; c=relaxed/simple;
	bh=skw1BB+17mbu/fNyo8aDepYjKxsOaZgd7GGKwCK5lSo=;
	h=To:Subject:From:Message-Id:Date; b=gF0txRNuKv74vgBZKPyZDZCHYQ4F0KUuX7Vlkv2Sfc6JVLzgXe/aTK+UcadtQpu9jKQF3i9NgyrJELDggzk+9oMKNCkV74syxfdSs3QbPplZsqbKZ40bKi30NpFXTAa107RssCwPSPkJL87dzQ/KmM2FcI5Vbr+5yhjt0Wh/fe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzZUB1se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzZUB1se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12F2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781303793;
	bh=skw1BB+17mbu/fNyo8aDepYjKxsOaZgd7GGKwCK5lSo=;
	h=To:Subject:From:Date:From;
	b=XzZUB1se6S+ElKQ/GcMynlG28HdKJK9crwKmVB6d5/6Mw7xFAsC0ZpHR5jE82VS4J
	 Ms+jjzqHOmIwrNCysq/oHqSGlJne1eTyNK2+M24cnQqT6DOufXAGKeC5hnpALZeZQK
	 IU9kguudQIgd7vGFwkp1+PU72ccHV2rgZm9wEBK8izQ5uxTFcepLd05WGez9ZtzJsQ
	 URZDXYnFg0SBWOOvO6A2KtbIZ7eGwkXW7OxMsHq8Yx6brTBc/O/FLanPnQ3clz6un7
	 OxrdcpDeCdouNROHOO6RSmTBeP6vFjKDwwc/brGhyc6PmGy1FMiE0O5nRbIH90tyFN
	 qe1+hmsPgnPBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A862ACD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130379368.8681.1189673207426172709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af01e0f060fd6857f0a6cd24c72fa494d77743f471c672da9cfba29c191fd5e
Date: Fri, 12 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781303793
