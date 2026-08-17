Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CCF3CBE6F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786961434; cv=none; b=U4OOglFZWi0OUi9q1jyaGvgqTdaskUbDc7Mi3Yf26BJVUnHDwuat/N4onPq2iBHQA5eMOuzKwm+6vxaHfcj4YNndFK4vtOBdE6QR2KejMPrPEhUViSUpSYDbK8xBFZDvfgCfg9lhY9R2GWmIVfDBD7y8HAjBnQJ0jmYCY7Lz2rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786961434; c=relaxed/simple;
	bh=w4h8JQksjV5Sup2OnnqGo/IgI1Q/8F7YMhaV1KDTQEc=;
	h=To:Subject:From:Message-Id:Date; b=nV56wK56VUpzolHQPNt15wjoqb/VqLfnNiUZ9kt6jPifO/o1wpBx2fSDOggznQmApG2S0fBtXCpyUB+9qIVSwKNp57R3CtVZkt8+DDHMnNOz+8xtPFj+UWoL4F6onVs+QGwo14s+jVSZgYezVIt0iDQoOpl9inrD0i1iljNMV84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaVuq4XA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaVuq4XA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7068C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786961433;
	bh=w4h8JQksjV5Sup2OnnqGo/IgI1Q/8F7YMhaV1KDTQEc=;
	h=To:Subject:From:Date:From;
	b=SaVuq4XA+hes/8ELlNo+m6yx3GpkBLq/D+eyuaawoaVUBQ5vpHIh8ndyHxBgU92Fx
	 ltinXlaqUNuj6tZzXyP++WikAN1eHh0Dp+uSRDjjpuTmr9ONvXEZt9g3D7cY/6UtYa
	 oafGN7qrPhNKksQ/8xvD1olmehmpAPNYZ7qiQ0SsIplqDFKbY58FHKKo4hycCy0qe5
	 KtdKhBYZST9QCsWaf1CwcRZV3K78ZYVIJdm1XHTuOsR9T7iQ319W1JM/LNO1VkUIu3
	 U4PZOMM1cDUO3jKFuA0cske00Ae9nLLJK2P4IlshIbwqP4HtV1vcFZtPnc9LVxLUAI
	 WintDeOljle3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0980C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696143374.31207.14296845086207040720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c29a4fd4c93f395bc2c7a6bbd549f4566dd9ad5cf8fa3976a233fad0bb11b89
Date: Mon, 17 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786961433
