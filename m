Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529C4328B7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791071434; cv=none; b=GMVRG5mnC/HNxQSk0WZGadBTUsB78jLiTktN39Lp046fOhEkAlO9M94VBFqwYpiqh/hJIq9eiWBmwN6iK5WgzQOkvSnw0G+LewLOGjs7QWsB3nzgghG8l5xozVRPm83dktKncyyyqSc1Bt7t8JkAmzPOgHXRowFpa7A9/vJbBQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791071434; c=relaxed/simple;
	bh=MVqCYL+61lZQsobMnvWHuC37YKHPDssLKgmm71a/e5U=;
	h=To:Subject:From:Message-Id:Date; b=KWgtRh0vDKnrp3G02+tE9CNWA7SxWY9feTAxEQ9ZwChJk92FFxa9Ow2BVslf9TxwmoM1BBftb1B8epRnMFL+/+5fzMuOmk6UI4rgAm8nTqibR3labJ30Xgp7fAmBR0GMt30iruZQrHqGFnvJ+mXXLN/yySfuj8/8GAP6OQmlHF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnSt1lwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnSt1lwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53C8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791071433;
	bh=MVqCYL+61lZQsobMnvWHuC37YKHPDssLKgmm71a/e5U=;
	h=To:Subject:From:Date:From;
	b=rnSt1lwP7W9WDi4Fi71bvjEeVwxMIjlk/EyRAW/OGDGJn4J3uZ+wSyev0WAhGBrBe
	 Ujz33u2C0EtPehTKI1Ufgx9C2V59a+c7JG4bKYCePXON+GIx2ubWYG2sBHQ1fmpDHV
	 ak0Y+XNaFY4j85sjoqEkheUnMe9GaxKpDLGkyT/YD4zPtfbk1f670EWkFQ1patFPpu
	 73SdLJZR8PoIVSFSUMa2CGH3yvTaPJdcwa28Wfw/XAeKA3gnGw78wttkixr+JckCjw
	 XnKTckfgi8Fs3X9Gew93z0ra8uqjO/81GCslvyBxUPWhETJMblCg5ewiXckWzTxfao
	 IFbrVqhB9gVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19E4CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107143371.3891.16873013971316770942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9e21588d2b08c7aa57ab1ebaae6241a57464b9f8015ab883edafc193060e7f
Date: Sat, 03 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791071433
