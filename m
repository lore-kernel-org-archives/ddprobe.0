Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B38A4A32
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782706114; cv=none; b=MzVjz1S9hx6/HuZRch0Z9AvCSxwJjujlFRHTJ7sWQL1cAyuUGAtQRaPp3dEIMs/Xi650LxEsZWXqM0bzAQGfg4fZibCp9Kaka61hUCb1AnGS2OJD0KKYH5tLpOxVpxCzSxAl2DM1Gm4v3/eTGxW/iC+0HtF4aEeOOIPYrhbzjL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782706114; c=relaxed/simple;
	bh=tmPKKgtPSb2a+CwJBr9yww8gwVMbQ/yF1Fr2PmEKFUw=;
	h=To:Subject:From:Message-Id:Date; b=Rwg95JNqo6/Yba+Lpc2TBzKhoXJ+WoLQjHy6PN/EUdgnZgZxr1fIqEbwrTf9f6Qc+hLLaWsUG5vktDAd3crxf41i0bmalwnAYSjJrG4DjTgCgHkbpfkCjy9Y6o34keaMscHN8lanVD1dnKheR74oT6upyr4BftOYESzxnP1dou4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1KogqUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1KogqUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF411C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782706113;
	bh=tmPKKgtPSb2a+CwJBr9yww8gwVMbQ/yF1Fr2PmEKFUw=;
	h=To:Subject:From:Date:From;
	b=m1KogqUuBDS/J4mW2EeSajhvvwsWxNkm7P/KvNy2k9P7ywxgbyVn81ib8Li/UHjuy
	 etbAt+HsD36EStw9/logYdUJr23aseUCaYPswUV6C4s0KBCce4nnBlA0P4Zn+CMXTh
	 uznXN1eMtewus3I3OYuxGArfRL2UFxpWBSEj+Cml2WFUEBPJJkM52anmpOfNlPFpeU
	 YsEMMeHv8ynOnLiUoAslBDiHIPPlCNGrHgXdJNhVD/xLKhx64er8xnP94ttNq0ID6Y
	 u8sozlOGf5eevS6Cgop8Zo32gQJm3LA+S90m5PmB4dX5fjc07bCmra4F27HgpkIVKZ
	 6b9fbtDfsC3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F06C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270611368.28554.13749165281930773697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b375202e7f21fe854066554b3f71973ea96681cb09f2dff22dbb24f7f0649dc
Date: Mon, 29 Jun 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782706113
