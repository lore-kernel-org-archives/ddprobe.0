Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE231519A4
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742001533; cv=none; b=HFyZKciiWn1THTDJ0xNPTV46aMhhI4lxU7KPZ+cSEnOhiWUyKH8MCzSs7xoyOYjNbFnPRraEcpTlh7MwamAFaF8cgO6tQsfthoeX23DugC4QPN45MlVIwVgtMAoQWpjP+g+nxOcUYn48kQSDkORpU5Vd7/waKQ+j1aP1nrn/b/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742001533; c=relaxed/simple;
	bh=kGbG7iPuKJ5elB8atS2l5fWcQRNewgWMDhhy1KBaNqo=;
	h=To:Subject:From:Message-Id:Date; b=DGId3qseyMlA2jx27+/nrLWbliJsSpzjC7z5DySvLbCoilQ79XNsWqFRLzz3WUqLixnSozPtkurr0U1MwnIrMdKqEO/v4lNZM1d4h4o2m20YSMcwBm8jHHL+I8ph4a4HCxcuT7OUahYBvdZAECS1vqHBpdLZVePz4F2ijsLn2ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q13ZQQMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q13ZQQMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADADCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742001533;
	bh=kGbG7iPuKJ5elB8atS2l5fWcQRNewgWMDhhy1KBaNqo=;
	h=To:Subject:From:Date:From;
	b=Q13ZQQMZRIXL1tnKiiMhJjeWaBvb9Dk8pYuXwJyUg8Kz6WOCR914oYBpj2ENOtUwc
	 pI1Aztcsj/TyLAVSCBaOkpQQlRzjyz+79/b78+cdxmZjUEX0azQ4wN78MJiKO/uXfS
	 WnCY1+qvSXR9Fo85hOuN133ygNFsAguOUIPaApBu2U8EK/lW6mXGWhSirX9nD6j2W5
	 CAQX6BFzonPY1jfXLWrWDh890NnNk8HGAIhAUFG1IHv4Xuhk9ZE9H5Sbt0HrgWoqKb
	 PjbPJAFN5bVmlXYFbl1OGNPEWMb4Qz5Qxs9FCWvBcUdolNstswnOT2QuJ6bnd/qJce
	 3V9q2GCzlDP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE6BC282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200153363.1801.12550269813622617820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff25f2b0af023c7ac8997b23898a4fb1e5bf73c9b1d4a4ca0f1401a22a3bfb1
Date: Sat, 15 Mar 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742001533
