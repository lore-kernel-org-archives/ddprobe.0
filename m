Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3DC331222
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786665034; cv=none; b=eaToIYmEhfHkOmFbiBPsfbC4OsF9w+XfXdIvpL3QVgLr2UUR3Z4CeNLpZ9PplvO/NUkvbO4dMv2d3oClU9o7lxXr4DOG2Oel0FjmAH6ikoTFk8Ofb+6MV1bt49sK1I/2SPZpfaVhAKmwH5I+9dKS4ZILLQpoPSaIlooNzxrCirs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786665034; c=relaxed/simple;
	bh=5maeW97qQeNel82anT/dcqsaEOvPh3bh0KtMLEIRLNk=;
	h=To:Subject:From:Message-Id:Date; b=GCpGaUy6ZYvwAkm81FykKAR5TfgBIS1w2nvBcHfjM6JYevNMJ2stPMmWmzBiDT2W1x1mFxuvz+Q2gdSKjtP+DhRQwR0uqFilcplxbPYQ9vcds71mUpsQ3Gn3+r3/lsy/hwsrqGXdrGRpNCAFX5OsF8QGUaGryrzCFmSElqoz+jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKfJ721Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKfJ721Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D621EC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786665033;
	bh=5maeW97qQeNel82anT/dcqsaEOvPh3bh0KtMLEIRLNk=;
	h=To:Subject:From:Date:From;
	b=QKfJ721ZugbwTP6EqihYSUSo3NX6UwN90WTb3xZF+nPD6bTrgX0A8NpE52U0VT9h/
	 c45ubkmlEepQEDevE9xp+q6vKJfOjqXOxmps1QioRACsMJi5IaOp57/2KdkArsD1VA
	 N5AcOj1tohnamPnRLD+Svt65Bj3NkRnA39sSLOsN311Oyb9xPzLzKDUpxWfyKmNl80
	 54uCA4L+XThieQY5LeGpRj26y08idUbA5QU5KOPpDTZiWvfNAsCqK8L846ol24Ic5x
	 iQQ29wugOkrhf5CitSdZsuQasLTdua0flc5VJyJme32na75/uQsvZ1q0cBEM1pTAPc
	 FCGI6NecxgFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B37C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666503369.15987.10469466044165836620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05174231423b1a64bfd15735115b454ad4b503925b0e253ce08033a77c6ab00
Date: Thu, 13 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786665033
