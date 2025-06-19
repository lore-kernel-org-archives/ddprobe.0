Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2316C21883E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341594; cv=none; b=N7vO2NQFxC/KimD4qFwSeuHa3c9p6LBVoaH3yG5KL8vxxXttKoLT1uvRokh8woQbICDJC0XmHCxCZxBIwxrsB1863b/dGQ5FagvKdsTo4b8UyPpgkRel2utUrF9JTOGX/mHhFE9iWZ3mRMITgioqKOG0xUlKkLDLf2q+pMkByts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341594; c=relaxed/simple;
	bh=+uq/yALDYl+Ooz3zYI5tg+tfFWwPfDHGJZUgZ7fdF00=;
	h=To:Subject:From:Message-Id:Date; b=p8P1nph6rKoJp0FwaitqiqabO2QpvJsX5BXLkwtnMKwTPKF/wj9pv5ren1oEQRRiU6i7/XifBLGgdFTfPYcwyysq8VfXByoe84vD4SzrfD73wrkJYCgzU/lUNHkVm8tdoFGYJTWrPSA7blxDMSBMh7jAf9PNbAlA1KweB+FkYtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zc1ERtiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc1ERtiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750341593;
	bh=+uq/yALDYl+Ooz3zYI5tg+tfFWwPfDHGJZUgZ7fdF00=;
	h=To:Subject:From:Date:From;
	b=Zc1ERtiSSQlBQr4zZ3XEk7b8oYiO1manTPD8nBm4eMf+7yMehWnvX3GZq4+SKHpJI
	 yW712mbSPhVj3u954bAFWJbN17q7akIG98lN8mfrgGu6GfDSs+In24tWqPLWQpr3IB
	 5dz/uDb7m0EHmxxi9kU1pSA1PRTXrQudzajfIzfA7062PqqB/seHNuckxhfROf57mC
	 d0CHc3Lo4h+6+KNnMRICgdaIl1nbbq0eCc5MP+3YFmU0v4vAgE7MhPYBHRJLIQSGzj
	 VSpbtJ986MLQ+TBXzmDddXSiPLvH0KCI43mUcT5JzuUgn0EGGIeG7hjfwyIyUW+4Xo
	 +lEPZDRMo/NGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904BCC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034159358.28243.867276037442134274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58efae7c2d9c1451bcd753b312e6baa025baa53f689eea94b26f66aec8def9d0
Date: Thu, 19 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750341593
