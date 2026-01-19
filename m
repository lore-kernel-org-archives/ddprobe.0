Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168E221E098
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788234; cv=none; b=TqAAMWy6j1iwXOhS2kk7OBr1pO5IPEN9Z1LNqrHdlgmAFMBR0wzYvv5kh7m5tlW3DApcT1PdmZBojDK7CMx2bR4wDggc0RGb7dTeKFqNyRAbfDVS1CBIIacJOidn/jF79rrnfeb45hN4/CtSM6HDKwaYR4U29q5m36ynChZWm7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788234; c=relaxed/simple;
	bh=l7aNzWpn2M/QakLV1KmtdvVtvGrcluG3V17bN0tlpv4=;
	h=To:Subject:From:Message-Id:Date; b=I/uD2JydoGhL+9nL90QghROUAJuoiJvZ9QDJ/4n0r1Grc7skxgmyD6IUbt5ROl2+iYKkXQtq65MnPNIJVgmqyaptFqZCm+KGgkap/QvlzlgIx21vkQXS7bteZqn4aom787L2gqJflJ3EwG3zz2OpAX9xK+kFmv8dIfjFGsdt1K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcIXjuVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcIXjuVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F44C116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768788233;
	bh=l7aNzWpn2M/QakLV1KmtdvVtvGrcluG3V17bN0tlpv4=;
	h=To:Subject:From:Date:From;
	b=PcIXjuVt9XJe/PKF3fl29YNMRtRRnocsg0uWFl4E42TVTYOCHGoHwSMbdHYNIqDG7
	 uwu5fOce3tXc72uYTYLD17ZvqaWDkoGh2XbT/Pz974tJhGrCkfwnOZMtue7uWCAfwl
	 ATFKSatIS+g0PnCEusKysbG8tUbuL2aV3r1262oSKC5FHvkTaKMI1Xrw8PIIxGrHXe
	 gB7KbNsS3lX7tHKEXsUlh/Rj8bV5ZjLLqpQV0EAGQfePQJq/khJ1SbiDewCq4Ukx8n
	 o90drGWAURt9h8TY6V1fYDURTGfivSWpaWvHjbvs84pyz9tpIWE27jEJMM7fL0n9HH
	 BWBYaCRAez7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9482EC9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878823359.979.12844563630002802251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cccfd1520369ec96c75dcc874d27527b59df23832e94a10d8fcc14efc888653
Date: Mon, 19 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768788233
