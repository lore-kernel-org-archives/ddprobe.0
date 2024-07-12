Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EC33EA71
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720771643; cv=none; b=r+U2tmhsY49sD3ADqdcTFj9w0XckhOIZZQQ6LMLFqCZ/OZV3S698UiXDPSzreo5XpAnhG3DIOW6Em+74xFoFzvJSrcgPWIFieIw2We873lHBfl7xYSj1k7Tvj4bKgXnauy5UM3191LMYfGtKMy4OrRmQd7gm/gyr6JS5NSHOwho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720771643; c=relaxed/simple;
	bh=vOsqTfawsPYcpF4e3Q0/TEiMODETq6PLD2SHz8eC1Mk=;
	h=To:Subject:From:Message-Id:Date; b=iJZH6gEbPuPiRRiiCKU3iyEKBSlz9lu8goMzOl0/ks7RIMagHQpzOd0Y0AIkBqLD5KqvrdUVGBSUTPpJLYTnrRzajiLySoRth0DtMlEI6nZTiQmLIggMiNLs5infewSm8SfDlLI/2tNSCZrXOsZTTPrz2NctnYkNSOSAv1Gqd4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asAf2oGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asAf2oGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E7AC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720771642;
	bh=vOsqTfawsPYcpF4e3Q0/TEiMODETq6PLD2SHz8eC1Mk=;
	h=To:Subject:From:Date:From;
	b=asAf2oGyydLjeeCY8PNkRqvM+dA8ziW3pMOxoLJYW9bjOzDI0cddMb8NQtlG5qCa1
	 /zyNCtbPL9m2wCS3iJ/glUpBYkC+CluIawDFLhqeRoLUZ9uvkbjEjVrTf1pxx0Ln10
	 koB5m1W0E196wdJmUOD7a8HsQuhMtY5bEE8I8SU33TRX9EsM1sJ6d8/7LBOCQMh2xJ
	 ryO9npBZbwmsoJ9snTMzB2pY47FwShK+N9rfkvRjDTGCCJ9y9mpHtwX8dD3HUWghd/
	 dKwEN+Eoio0gf6maKzIxfY/9p33lHci3wgCHV3UUhGrowAedj941qQMneD2U1uokih
	 x7ah9HxsMiieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF9C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077164278.8639.10460532940092076598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ae9e6f24077c677186911dc866ee16873aee8bf228d4e34e533a1e2857633d
Date: Fri, 12 Jul 2024 08:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720771642
