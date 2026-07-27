Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B23BB9FD
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785167434; cv=none; b=Zx7EiTCNM9hWOA2Pnlko1PtRh2ESI7kbGetzoFUM7dJJ1j5fRvH2DtB6hkGaL38BOmk8pXMFvPOJwVLoj3DBP+audCKpllyDBZvgqnunFUf4o7W0n8ERXUySDOGm94tecu4eI0a/hJfXa7UiKt6MVKbpvf0EbvXtaLQeAOaIT7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785167434; c=relaxed/simple;
	bh=WVf0yB9k0tq9uQHCoN2P+1nynL+nYa48grJMOQmpFII=;
	h=To:Subject:From:Message-Id:Date; b=HC6l3zJdgsOas39dwODc/NTKQGdlrrDiWwx/s0/T6DhApm/bqFqe3ITw8o8XYhB/DnO6k/AC3i67FimWfT/gEDaHQn5MVhm1zBC28H/C/kstN2QLdLM0mxNIeUiNEyFrYKgPk2ASXrwU/J5kQCYvP2G8+LtHldXcQoJ+3CUDW/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1YIK2EG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1YIK2EG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8063C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785167433;
	bh=WVf0yB9k0tq9uQHCoN2P+1nynL+nYa48grJMOQmpFII=;
	h=To:Subject:From:Date:From;
	b=K1YIK2EGjkcjtFm/D7OwdCStgM7dcTV1h4nxRsRduPdpF//Pg6XoLay832ZyzsHV5
	 JIIdgxbjX2axh8qqo7vF2hFzaBN6dMNdDMkrG4Qe4LVebjwYf6LJI03bYDCZhDzw/q
	 5hpLEx5SnmNKbdNPZ+7XTZCu5r7rtDT7M+TGb+kNHHbkpXHYjnuhhY0XKC6HwQ4sCD
	 JJZXiKW50JSarQB3u2hCPmknJRfqCw1dL67OzJ9sUMsEXNPMDNTwPOPDsj3WwO3ZzK
	 LTLqzhezRDtGevxhlKh4vrNlvoF9PBm7omv9U5nKtRasn7HRDeQz8BLeO72FnEonDj
	 GCKq+mMAArBcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98FBC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516743368.25033.9243490525026045514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785db6e7046c68f19312e8c1b63a5748e5b26c1bd851173747b6a2709279c6b8
Date: Mon, 27 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785167433
