Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DEA1494BB
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740100734; cv=none; b=VbrMshiP+WEd/XOzdS1kJkV1/2fFv2+QlfJ6XR1oqAaHiMGcWDNo+klwtrYtnog52X4r7ij1MNALGeDHUP6UyCIS96sskIr9jH2Gw/0j+Abl8t139pIWOrWVSYDJxwNF8j7SSuVx8Sw7LMjc9VIwmW72iVWGRqIrDEDpd2emvDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740100734; c=relaxed/simple;
	bh=5uWw/6MtGFbCqN3GsUhis42d8XTWfAraPMdeIb/zUhc=;
	h=To:Subject:From:Message-Id:Date; b=eevNEGjbnk+S6aB7EAtFA9eeuVE3Rz5sV0fLlZti5RIkUEx3wgwqAYfvP4DqRpxtwVzFXRODrfpecTr2swVSmOi3rES9tLeBOIOkIj/wpsqSaG95zUrs9aF5vbwoSXhrfTXQiSGmUOoFhkOxoY0JNi0ichdB4KIkf9AQ/4tnuYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4dMV5lQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4dMV5lQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A313BC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740100733;
	bh=5uWw/6MtGFbCqN3GsUhis42d8XTWfAraPMdeIb/zUhc=;
	h=To:Subject:From:Date:From;
	b=D4dMV5lQtCwhdY1OoCLBDcqkLjkDGBqqjoJ9RDDTArJnBopnlyF8Vlb9yb0e7FXwo
	 caYLXmM6FVwsbk5axHMW32x2GVGvfvEiVETDccV2o2uLY2E6FzhRYSxmYHN/xDJ1RS
	 bQtRQ6y6udlts2OXUmz494h+AkpCRFQ61LlpOhCIXg/2GgT1SMb8TICZuPOgBlUOua
	 FnihaNTvDe00jdB81eHzG6X2ZVIMDFB4v07XTmF8tTySBQpXehRJLxspkblK15eXx7
	 RT6FgbcHI61+QekcKaurkjJzkHUCisIs1dPIFHt4qOFv72FPZ3mCgUiPLD93kYZRSM
	 GPBIwL8jSd5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D1C021B2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174010073358.3437.8126409279193713496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59eb5c78db4acf338969fc933f2e7f5d9c394fa3f91606c2aacf3b5dfbc64a8e
Date: Fri, 21 Feb 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740100733
