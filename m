Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7199817
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723825553; cv=none; b=UPbPcvweFVBwFG/Fcnp/0kJkao5pN7m8bdjxVmSbNK27RRMKd4aSFuVwilMj4wZfCqtG8re2stJMLYLFHwvUhrJxvsPm7u1D36iY8naDuSoOnKflE0ohSVy4M8iWjW1Rh84nZtIAGvHrH84JMvA7SwNsE/OXCY8vBn5Y7r3oTXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723825553; c=relaxed/simple;
	bh=bAYotlrB8WZjn069o3wtx9scUwNtiD45hqZqcACUP4E=;
	h=To:Subject:From:Message-Id:Date; b=jE1GYHLyTz4jVzEUaWaOhrMTCLhK3NLO7ipLOp3wdlPq4L+/TJtEqz+3Ozfi242QSrYJXBTj1/ljV/b3ewQaXSB7Q68LrCyil5BEoru0yge8j9trgOaYceXEi6DAqYiXrgy78q+6f4M4npCrO7ZFwyRgVS5/vGfqQ+O2IQGbd20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYJuxWCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYJuxWCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6845C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723825553;
	bh=bAYotlrB8WZjn069o3wtx9scUwNtiD45hqZqcACUP4E=;
	h=To:Subject:From:Date:From;
	b=bYJuxWCG2wb36YVMljzXHoMOzIMPlNBpC49DmFTTzl6GUuONDuIZ4pU1T8RHqeoc0
	 qV9IP5g4J8OLJkX907T76vdkFnHEq3CZet79gb3iTZSqTWf9j+BG0n34vMDX0ovaXz
	 11l3p59BTFXzCrAofdkYiB0HzlU5qSiIdZOmRg7eBd3m37/J+HrCuSH7pYcm2uAb3S
	 5QRXnrmjlmvTB3nLHOsMgp9Wm1yLAb6DMmBJYyX/j20usCWONXo0gf3MEtwRgNRh18
	 DenkHhKq94ShAu8s9aUnzeeNHmGiDYEwse8zBJNrhdpmpMBS4fMUJ1SDWJ3r5U2wD+
	 QzXEFaiNHV/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F1C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172382555359.25624.2696228496256211471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8621ea63ae65cf277d38e47c179c6bf7f159a8f12b85b0a3ea5e961cbd93ebe6
Date: Fri, 16 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723825553
