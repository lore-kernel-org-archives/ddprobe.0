Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD1536B92B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786041634; cv=none; b=X8wSiICFkcCu7gtSwbNbvVystx590ubkaa1p+ZlZKGMW5G99UP9Ys5SojvGRl5GZTlpNqdYXpRAFMdRRSuXK+CRR+uzXxXzezeoDS/02LWC7eyRX/eZedzzpiJeCpsoSs6MeCflUFfKqXaCr3wKHUN4bpxQKpPXDBStEXIAiqMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786041634; c=relaxed/simple;
	bh=17mo/kMsiCDX5X6xhbL/q4I8gaJmwbV3cDj9kpng9nE=;
	h=To:Subject:From:Message-Id:Date; b=BxRoF+jYA2jq3wSzVs2TghGVfn5T4rHt0C84D/sZSOxCOz7aDpt4B0L0ronEhtN6hNgHyp1CMWLy5fRHDapxULoCZ5i6oX5A9rhSc50o89tvd9i15LuNLe16U7yY7Jdcd3r0iZ+VGn3bKC40U/KhqQbaciddX0N/ohi1I2eKl/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3AKVVEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3AKVVEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89E4C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786041633;
	bh=17mo/kMsiCDX5X6xhbL/q4I8gaJmwbV3cDj9kpng9nE=;
	h=To:Subject:From:Date:From;
	b=N3AKVVEt2gSMjf5nZ7ZhdHsMfxQ4htM14gyRQRKVYd4GchQ5cAJ62KkbpK5BAf3Jm
	 zY1Fa6qETvestuFNjF18I6jow85i8+SNzxHZskSoVIC2agDdICmdT9nm7uWuhus9aN
	 yc157OfaZ3SWJOKPYVcclQPpp5/wBLDEdOKTfma0BbwUQR91xXaiIWMUiMwIl602kj
	 cE+KMLgnwvijtGa4De9GjKqkp7OvP40CcHs0LaMIGQBNhTJtGun/MEmMXjVZYWFT/9
	 JV8KiDtkFg+OiDRfbI/sNrgutc/bse+n+k5GbwowDLzTXcoI6nmHV5amVKfSkGKeEL
	 ox64aZxNaokFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07BDC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604163370.7825.12709027902434960789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5394e0c71502dd94edda44dc14de55924678bb9c96ac3fbf038bb5d60b3ae1
Date: Thu, 06 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786041633
