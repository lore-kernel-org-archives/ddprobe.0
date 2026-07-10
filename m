Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2C43C1413
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783719514; cv=none; b=SCRD36/VzH3muPnpZWjdH67xu7WWCrXohFBGGODZGdWw96sURXRMZ5AwJX4HzJV1B4XaUSCYS62AMnX298wFGNCd2ilQVJYm+y4rXrLK0upsbwPorX8a7zdHvab2QeR4vp+fKU3jENIP4R0B/d4Ffk9GDAIS3RTuUjXHj61aPOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783719514; c=relaxed/simple;
	bh=LG2BfaUXagoGl7Fk0vFWXGPSAzMjZVsbVOAdVO1EuNQ=;
	h=To:Subject:From:Message-Id:Date; b=L8Lsgc2kc2gDwwWgRBL0ti/4rfskgY1jpHXAFJ1k1X376hGL+6S3gdamd3BuPsBkqRKN6g0TXaWzcA2MgEbemeJm8MMcbMqe/Z4fPPeE6JRfndgpGqO/fdPS9xrkdxDxbdGs35oGD1DlI3eQqIEHTtkHvZyyzbQb3/rRCXEtUjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWLLxL+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWLLxL+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1C1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783719513;
	bh=LG2BfaUXagoGl7Fk0vFWXGPSAzMjZVsbVOAdVO1EuNQ=;
	h=To:Subject:From:Date:From;
	b=ZWLLxL+f3Zh6H9Y1DjuBHqftt6MU3RHTIu/78rEAlUphJOcsnEJYqeP7g8BSzsd5O
	 yDPKu4BxgOzIifDuzfYw7HS7ZoEXvcC8Jk9aRNTkUEwRfqRdx+t4pMnddahmZOTF7J
	 F1Qrb+RxBIuH1lEQe+GrB5nRF32PwkJXvugjKCGu5erFP1aeAtfTx/ahc1f/K0aGVX
	 DJ9PyUYFKLk2sgB7qpfFiIAxYjNwvoQYb6+NK6z/QxZX4RaVMYMv9TDCPUrF1te6Oh
	 e+1rcTOoUjnT/s+8R+vi4fEemkOYD9ajir+z54cTsYhTmQzrTCeCXzLBlTqH9C+m31
	 9Gwth/w+B8eMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A893BC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371951368.31505.16898653748190119438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d79821a264e5e6794a547f22ed6d6eebe033e1ccbc505c8505d0933a41ea72
Date: Fri, 10 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783719513
