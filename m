Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3545A1A83E8
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748819994; cv=none; b=ui+9nEs+6TI2DRZcJ5cTez9c15ZSGGH2zf8ramE5X7Vt5rviUWE/85DFdC7X0l0STWeC8PolJXNZI+1QMP5ClTFDyTE0GTsfg+uYjjGqHsuTw9cLDsLrXaMOLzAjSvB8RgUHyq8Z4pge4pVSNaxnFxNcCEhaTH6PdwBxWsmomc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748819994; c=relaxed/simple;
	bh=vhGNvz0aX5BYRktTMKo+dzjZX1X6QEgkEoo17oOtHyI=;
	h=To:Subject:From:Message-Id:Date; b=kbPGZHqjqtxiafRuhTF0qfka0IgQ1plXbUEEJrr2ft1zKogpSzA9ePlKpF4YmFe64G1Hi7rga2XWCcxE73WUKsSJG68AYGhD2b9dLuZnsViNYSN/G+JooX2fmrMW0uirNICMWfLeTXsXo5pTK5aAD8vb7kpI3+N5JepPvJkQkYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbBOtsAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbBOtsAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F1FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748819993;
	bh=vhGNvz0aX5BYRktTMKo+dzjZX1X6QEgkEoo17oOtHyI=;
	h=To:Subject:From:Date:From;
	b=QbBOtsAaBQsrRbb6oD7Eyhs5tBvI+tsQo/IS2XtuSiufyov9k8huM8D6CcWjVgbZ4
	 5/0w0TDFpfShVsfLJn2APKNJR7/hkYlt60+nPmy2B7u7bnb0eLbV8k9MybhoCj/mJ1
	 Q7N0TnqYa1ussS0jUGazKvItWGvPPeR0udy1/EvAntqsfofC4Z3ZOWNZUM0jTG6yMm
	 nMuY50l++kJ5Xee5xxOnXrL9jTDAIlBYxVusvaIoW2MAeaTI78tmMbGyo//ow7dQEW
	 qzry2EJU2YWp+3aOc+F3097MxIehzwZCJ9lrsiXozCGTjsx8KHjERXCw2mO9qU4fn1
	 6yzY32p8R0NVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900EAC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881999358.11309.5670184015259929290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a27a55ee9dea73df8f72be35fe674f53b0c2980b1c6148c8621b361b423d98
Date: Sun, 01 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748819993
