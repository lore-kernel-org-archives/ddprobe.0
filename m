Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEB9126F0A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775298934; cv=none; b=EIGhaftFsUkG7KIK+CqYrqgBA9/ugnRyUlwMJ0/1oZOL3IEq5KkaKXHa3wP/J9N8zNj8XFmYSrvXQCJkwt+yjCOwhleoDf12uV0lxpBertRJzpN6xhibESnxYFcaWr1D2buMnUMLch4dDZZPV867faSonclVAC04AZYjFJEdwB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775298934; c=relaxed/simple;
	bh=au2b1QNV/4dr+aRCtp5HaFeSWaf/B0p0vB5vA1U5jxo=;
	h=To:Subject:From:Message-Id:Date; b=K4oproo+TN/b8rPIRigC56ZCVPFw5LH/zZ6iK98/Dc0en4L8QZgyfX4zGiuc4qT1EiPO4eKXzFE2o+Y6py1QdlR3qdQJnLLlZxHMx5hSBf02Eh0+XCj/HgwlYsyesbInJ/kkhHqBLt1gWrHMIWNPjuNjPRPSKXH9Im5ltCaKCCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGWs7q3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGWs7q3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16E7C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775298933;
	bh=au2b1QNV/4dr+aRCtp5HaFeSWaf/B0p0vB5vA1U5jxo=;
	h=To:Subject:From:Date:From;
	b=lGWs7q3DLe1+4qjo2PMQymMY11AvdOci+Zi7WsXAE0ZSsZxcIBl19KYqO70K1keTY
	 692uZ630TF01xaa5/vwlbAIuyTYZLAPkcVh5R4MBFCW29MhFyREYrdbEK/gQ0HJpnf
	 VmtoQPZ+2B02Zk0WNXzETfhP4co54zJfathHinaaFzh2lR2Z1rD+htnwW5NbL6D0rf
	 mqNEPi7tfG13y/USpwDNpLvhzpVA/jeNfvwltrgNyKE/g2P0+ncRLIAOo/oSUhIzSH
	 7uRUUdfPDIY2OthShwZtBLXWv1HFD3Tkl2SaF0yRg3wfkwj0WZWptEuINQNvJLSKFL
	 RzVLIcYLw9hIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA24E88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529893368.2586.14737640533165697591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ec6bd4c91560f89dbf0629142e32c62a7563144e2f64375d8f2327d8b05bef
Date: Sat, 04 Apr 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775298933
