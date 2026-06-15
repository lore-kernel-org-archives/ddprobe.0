Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0C534DB56
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781553994; cv=none; b=CwQboJsMaIrT+qwvk25QThA8ErYNLFqrbYGlr1alwFHmX8s+tzGQDgEcfu0WCBn3oZtQ5exDjEl2bE4O9H9RXbwtsJ2geckLskQ/qVZbr4HRP36/DWNgHHHFx48QkVDHJfEXHPHlEjNGj4E+V4XnFHk2/oUBgBgDIOUFe7YAKQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781553994; c=relaxed/simple;
	bh=ebj0pQbETx1A6V5OreyoRv0k1jr4iQTImlqswehbWTQ=;
	h=To:Subject:From:Message-Id:Date; b=muyC1lYqpTVihBFDOYuKCcos+KEwDvgPOEGsxdyltrMCKvjsX2SNc6KyZ1Ci2Vvq2kJOMvcTqyZI5klpEwzXJYIssDdDv9Son5bAk4K3Zs1vXznQ9gInTuHkSQCva4FWH7EULRndk0k4dwiW3THnCjWL5QyxPXi74ywvas6Yj+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFQbQ+he; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFQbQ+he"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C39C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781553993;
	bh=ebj0pQbETx1A6V5OreyoRv0k1jr4iQTImlqswehbWTQ=;
	h=To:Subject:From:Date:From;
	b=PFQbQ+he5mXN0mgV13X/p2t92pfzH1yke1QxXJq+8EKKNc3LaygABZN9TyEg/TiJd
	 y9UeFT1PT/1qTt0ie1OlZZ70KScC3xVFhb4/5JzJSRpZcCPjcpHVPM1FwLagne68Ec
	 MnItUCsG9zmwlSWCt7PoxBmQvFkOQ8aN1IhqlzGlid5/Cyc+mIWTo+c/pWVHv4+aQU
	 BDlGw1jCL9t0k6BQ7LXBDeOh4KxlgoRK+mfhIHP2MjxXMndt2cb7WSeGGFZSLkax/8
	 bZgD1+HCGko5urfT44EqzujAZ3yF1IWENmcDzVJAyx+vSv9quhNX9Z0EGXvj7XXW8D
	 aGJcQsx+Sgh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4170CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155399372.32448.11217824798037664549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a46ab43e1c30887492a9d082a1c4ec8a866313646d5b716bb16f3f626871db5
Date: Mon, 15 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781553993
