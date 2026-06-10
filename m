Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FE423741
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781051134; cv=none; b=OhAM9cLFo0dy+2fU4k0tM3BPWxspG0UocOUjWPnyxzvQT0yzGE/KpAYAhZt5UziL2nTQLBeGU3X8uhO8PaKcgYEBpa+/Ssq85Ws7obfIvh6OGzQpu2DFFiaFPC4kcbx1wN1u4qWxF52aHMAzj8E2CwSGIDEmjajGSgHSt2r68vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781051134; c=relaxed/simple;
	bh=5GIoLrCcfUVsfYQREnKRdLeoICNnYndtgynde7vL9fU=;
	h=To:Subject:From:Message-Id:Date; b=MpyMMiLOe3xvnEV3AWM3HHJJJor7bfhrK8eCEQaeVBJ3Gaf/adWosfdIXptBfl+CAyNHh51XprxUkFlezUuV1bh95cu4m2dPiXLmJCLLTV9xcVPdIlonz62KuTncO7oUbqNKiwPvPn5EdlG3esfdX+aux4me8qAXf/zLf0m+IYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fgwex4D/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fgwex4D/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71EBC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781051133;
	bh=5GIoLrCcfUVsfYQREnKRdLeoICNnYndtgynde7vL9fU=;
	h=To:Subject:From:Date:From;
	b=Fgwex4D/3BelQjy/XL/5dwepn3+K1STmISp1x7P/htZUf7+YFX4VqG/iFyL6LsFU7
	 qgwyPTFwgSrxnHMgSbidAwXDU8LmNFQuAv05MdTQKat4n0NytlGIROxV6V4JVWeLje
	 FXs7qG1Sh0nyoc9i9CmhB0nY0Ss61o31AZOrKF2zZIul96Pji9qU6PfRnFD02Z93Zg
	 9SehQ29azNWMgUWC00RUX7/Njz9Y64vOQPr54h7cj7VTxmLvLsrnZWEgX/STnTmFmb
	 TTB0/xLhDLaMFCc87gRP5sQc9YPfenMZ2N9JZ55SttLKO8YiCKUHNJM83Tn1ZB0D7h
	 8z3NR/9KA1Ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA86CD8CAD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105113368.16410.559438399802455162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3f3cf59ac3ebd18dbeac1212cad4a46127febc2238ab31a34903b615cbfa03
Date: Wed, 10 Jun 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781051133
