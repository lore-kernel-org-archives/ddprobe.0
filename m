Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40056455194
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785339034; cv=none; b=P06oVSM0OX5mwhYj8Bt8E127ag9EcQAd3UB5ZiQHo2lXb3pGzkoTk0zkXLkkYfsRn2hPtIlzZIXVIWqdiAskGiwBSHMwzH8PNOQRZQ4yj1I/ZqRGdk5CIiFkXYUWjPsSioL/LkiCA7FrBKLj05sz8hfcfZE1Re39ft76p3J1CKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785339034; c=relaxed/simple;
	bh=L20UpK9Q7iabvDj2kxtxHEezFLXZbrEEo6wCMs3M1ho=;
	h=To:Subject:From:Message-Id:Date; b=dCtid2S4gfbKoZwC/rjl+QnrR/tAvrF2bnh7NCgI0BGCUdh6SiBBXHSyr6sQoqvczwrysvrDOXiUOv950cFCzTCtFfDGpGBSMBdP1niCkGoEwlACeknMjJDKvzekLfYgvtQ8/Fb3rrpmzoOBOiHDU/lPsxBgoQMwqf81vgiqJ7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPXjBtcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPXjBtcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D5EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785339033;
	bh=L20UpK9Q7iabvDj2kxtxHEezFLXZbrEEo6wCMs3M1ho=;
	h=To:Subject:From:Date:From;
	b=mPXjBtcYrnNs9EVkDECj3KXOq0wgkiXSlpuPI+bbxdBRs9ih9egqVbmRIn7P+7W1w
	 knswIRdke+7y5aYggcwex92FKh1FWGW0jrWMdgLUNq439EqHY2L/VPYjVonM6VwSrQ
	 XufddOMTj7OoV/7PpYvJ0x/2OwDncw9zBLub2EdvbIuCSCeTIf+37sigWWwyDeDrW0
	 DaTmLfkGlWA86vZTjbb0/NVjdjxcFazS75vJzkZc/RqlqOB30TxQTX9My6mZ9mPeTF
	 07eBWm89EvFUH+mt1Ofm67x29ZSBBkIzPI/ZVIkMsVj1LTaNN/dF/EUQEP72+T6vYa
	 jlOFns8NAdAaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B65C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533903368.15414.4491405371580632070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3086fecc3b66e92770631237fb61eed451347f84374342569c72636261d4e8
Date: Wed, 29 Jul 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785339033
