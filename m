Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25032C21F6
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761341994; cv=none; b=rPwkwhkawj3bOfjihc8Spf5FaXxTXJB0WhterByFfHEZrZV1S1gszaSZUPWrwK68XhciH1XUbod8KVDKrMsvYY46h9qEVtvqP7ivyyB5t4BpFzskKhCO2Ua3l5AsODEHdpaR778i5xYZlfGODDS6xAt1f0rUWnA0SHTbS+BtJ4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761341994; c=relaxed/simple;
	bh=zhL4uNZNSfQtRWy2OGieprCVJSU2WZJ86NtaIwWhZWU=;
	h=To:Subject:From:Message-Id:Date; b=EUTxU9AtFccdAXuYoowSq2kHN7BzM3Xx35bp9PmyILE/vtpH+h7TM7kEaBDXl0/bze/kI5ERRpT+NvAnwhtyd3S1bdDKou7fYB5im91XFCCcMk0FxWjz3mc0b8cHMAPc577PdqCW0YmKEjtYxLRYUjjcBzRt+ckwBfWfWk9KSFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u08MBru0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u08MBru0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE3C4CEFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761341993;
	bh=zhL4uNZNSfQtRWy2OGieprCVJSU2WZJ86NtaIwWhZWU=;
	h=To:Subject:From:Date:From;
	b=u08MBru0disaoeIi9iGDW/aEB7mwx8qOTKNjNYTL0hu2lx6/M3i5giw3tnQL4UFUM
	 +TYIY11kFywK1gD4hJCt6Y5tkNpcrJkWGr0NsUsgtxPrjwikor/Aa70lXxWfiz5BmK
	 2Xq5EH8yxVzkqaGZXDBdNZmImL296hSuSU4zodNmtCYoTOng3tlUTMF3098tE3dmir
	 qjGcLxvnSfe6yu4nl0o/PENCmiw1De5E8GEPExNwc/B8A9e/CdWmNQnKnTJ9ZGt41H
	 9mo8+L1yPWh6p2y/nZBGLL4xcGzOpqRWchqQZD/RPKdW8fV5JOK6KYcA2nSRnz6nZ8
	 Ccws3xjemVRgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F650CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134199357.14236.1207335720079664878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9431797d8915431f905f1241c036752bbe6a09e9b3c2fa117687b29ba70199ec
Date: Fri, 24 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761341993
