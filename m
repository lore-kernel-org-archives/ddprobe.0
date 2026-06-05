Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4738C368299
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780670074; cv=none; b=RdUAlrewlXkcyjXxd4S0ZbjJjJceQnJ/1G1bUJckXXOzkH0s0LnTG2VrnaJJZhaGv8m8xwZNFCUlPbwZ9fHsj6IhIC9rcRVJXksQ6g/jOb+3GaMLSIgqOwXtfHlrW/BpgnivcHgaHvdyyovw6yWZjsWAaZL7IBiX6TYR77SZh+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780670074; c=relaxed/simple;
	bh=vFDKb+Jx+7AaIPCO0IxnWnT+aJxv767zRXupaCLfgjc=;
	h=To:Subject:From:Message-Id:Date; b=hDR2cva00RML2zdDpw5Kvl9miY9gPeCGY+aHO9yQsO59A+Dza7lW6WXD/dmWtGMyybTFNlaxfdDMfny0bbh+ebzG2gLCMjB3MTgV7ssS5v5QfmkAZcXg52e7NwbJpboXQfVKBCm1u5OSOXlHAIiPUfw3ESDV8r6ynxy0GGGez9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MogTVwes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MogTVwes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0296C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780670073;
	bh=vFDKb+Jx+7AaIPCO0IxnWnT+aJxv767zRXupaCLfgjc=;
	h=To:Subject:From:Date:From;
	b=MogTVwesQTahFG9Lx3AQWLMnL0oks792CzKA1Z2APwSMnlb4ajXDaQw7VjgqsXiqp
	 EgQ3DdcwtSkUxQu6biz5Cv/gBL8FqMGu6i00//EVeSSI0ce9LrjKlI3OQd9Gn+HM9m
	 HP9MKXZE14aVqGh2WB8gnUJ6NUAzPExhvw0QNTjNBISsKNSSR5m2Et3wgqkI7psVYE
	 nPozCP9N28qNdIRK+wzCVqyGaQZHYaUWw99R0rJGr4+yABNewZF9fOls7PetTy2yJN
	 Q3vHGi8rLSPJs1487yL2LHzsoiEF5aHb0LWKv4Hu2B/muLPXZxU87c7+THqd5/fyZ5
	 OhGQgqQMUSHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC19CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067007370.30624.14294406944632057686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25037f6ed858dbb4c888de5c64a2f945e75fbe5f59099988cd57e5927e43f84
Date: Fri, 05 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780670073
