Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA5B6FC5
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750561194; cv=none; b=RY7bJDAET2Zvs8pR0fYmVLdnD7uw3xPUidIhRp6W3q/+hVpianoPTboR6UzEYQHcZJ2P97xxWpuNXXQl2Esjoi9lgJXpcZbmAIzRlo0G3U0xkyQ+/hBA/60y5EKdK7EzPJ1uov9NM4XmuiFobiKb6sV07HzM5LKNPJY6mPlHfZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750561194; c=relaxed/simple;
	bh=T2Ur8xVrR3rxb0ds0SUN93VKP/kUoutjkWMUvNJwIvs=;
	h=To:Subject:From:Message-Id:Date; b=IJj7y1CKkIFass2HCi9WXIR7A4ZDMD+H4kuzN0axKmcBukftNL0XtBCEyvtcQSNtLRUOx4mfp1N5r1GjvUT62HuCMxD/DzzgyCoZDvmhlFoxck4r8OmJ3tyszjaCfZ4CLkBFITLTQY+FATJU8HhQ1Mtb2TjH1/sBvDm3XfTP0Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRpDqKw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRpDqKw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A539EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750561193;
	bh=T2Ur8xVrR3rxb0ds0SUN93VKP/kUoutjkWMUvNJwIvs=;
	h=To:Subject:From:Date:From;
	b=RRpDqKw+RU+FEPnMHExr6BB2l5TfDTEFbomCxT3f6oDuOJH5apmWsO6rsAGWsfae6
	 rDDcXYAaiXg0eknZwMkPp96quJBT8eB2Iq2EgW2GrYVi9Dcn3aM1TYgmkPM4DZFnoX
	 M0hNxe+quLDhPN9Tfc7d5FlnvCazzCuP5yHwAa1044IgDcid9tC72KQts5YCMZCvlJ
	 NDLKMTHbM7XkMeNndV2VwXlBxgtc+3JlqpGa6s07pPrM2atTtrXmvS/Ib4c7F48NOy
	 iYDJISECnY7noZnhcYf/ESilM15KGXpLCOJnOrdP6fn6f9WxZoz4aQPc5ZdcNSQVlP
	 Kn0UXW3Bef4AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DABC71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056119358.21717.16396300408801330600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf53bc6f3f48e499c4682ccd94aa8c37c9eaf45072084b3da9dfa6ae8d626a56
Date: Sun, 22 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750561193
