Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4C18A6DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751966394; cv=none; b=DMgjOxS5eEOfkQWyHwcOUIG8wsTX+Mt2l7n6SgsrCXR20cxjWpMXYOOD7PNgDfOdZCqqxlOWbf7/cJxSO/YZg1yKqTktadYFq7EBR3mWqEucf8xD+TFEPVkBM5wF02i+Kff2R67CVMx8vbEfNsu6Uh45b3z7KeGuW+v5OBimvEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751966394; c=relaxed/simple;
	bh=OlSJjls/w/MGpiatsztrdGm6ipN/RNUbMo09DUEbXr4=;
	h=To:Subject:From:Message-Id:Date; b=KsRcFxHh2bQC5KmVaoTYyephngdJif6FPTDUFg+I+zxgdaHqJPYU7KrdQCarP5hXg3Xf/rP4/b23lWI47mYB88LhiPqC1BcC/ib7CfxPP70iIn9Bv9IicfW7J3Vgsld7PrrbNzE339GloxbH32khR0vyYLzW5z4X2SJm42iodWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9jIeQzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9jIeQzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3026C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751966393;
	bh=OlSJjls/w/MGpiatsztrdGm6ipN/RNUbMo09DUEbXr4=;
	h=To:Subject:From:Date:From;
	b=P9jIeQzwdeijwE4J3WtRE6aVs3Ec9zNw4HSdTggZFUMz8LiFpusWEXKyqcThZamTo
	 e824DrsHpKp+Pec0g5JEGzxPgvuOWxLyF7IBKr2Ma9HvKmOVU7sAlJS4FsLo9JEM01
	 D2LmbNy01F0MbPCyNoIeEh/NKqYvaL1foNbFpN1Xo7V+28yR2MxuMpy5/E2OXI5bug
	 Djn3Al4z/u3X+SosxDkIMG6umme35jOVL25fychLM56EOolwimZjLGZYMVr0Luz+pU
	 W7JDxrFWtEV+UuHfR6g158nmorjsM0CSbZCCOvtE1vrUhpiaYAgkMGZID9EI12oWve
	 nTXW6x6Ra991g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EADC83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196639358.4401.2180050688132218129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6268a38f882d431a4df1122092b13973e3f047b9d48c9c415ee08332456ff4
Date: Tue, 08 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751966393
