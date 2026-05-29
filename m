Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322CC36C5BB
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780095814; cv=none; b=ANiNVNmsLI6y2xhy35he+jUgBogQM1EuterTpNR4+Rv/MPeRkprbLdNsrn7yigbJj/AQDfN2s0dQR2rwOIvRWI/pq7T9kCyfvt7weEHNBMPim8CxPvDAiflFAoC2LFeg9xZ1NUtm8RH5OiP1dkjeICwjdOvHYB50BEjm7vnWi00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780095814; c=relaxed/simple;
	bh=rRCUj2j116M4b3Cllfu0VZ4IjIL++CFR1LDOzBsy1/E=;
	h=To:Subject:From:Message-Id:Date; b=Pa3ZQ1okEfWSzgqr2m+aEJyt+kfUBPMBRKIwZfPXkg8EI/S3uVr9dx6RuRE00SRZBirxtfxCOCesUFOOR0J70AXPnJ5RPHXcDseOjnBVMw/pQwHhVL+cu4yS+S1iNZkt+v/17tJhizrzxu2/ZEUkjY83sr0zWSknD/paWMTAUaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXknT4IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXknT4IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B52C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780095813;
	bh=rRCUj2j116M4b3Cllfu0VZ4IjIL++CFR1LDOzBsy1/E=;
	h=To:Subject:From:Date:From;
	b=dXknT4IOeg4lb3LG44sMq27ARxBitA/+chLI14S8oFYQ9aPaEI1GndxetnCydc0pM
	 LZbsubhIffiMglIbrpJ6cVJYpIDnFU88wxgH6XtpiESejmf/lati2orQyB0Ot2p7T/
	 cDuMg4sYvFlwLZnAK5riTiB+F0CtaaEO9/mQzM9vX4BvDwhvQjzKHNOy+WLH2gQbOb
	 WWO3Qrqob0MaKBQfbBnhlfg+RrPZZFOWohalW8qE64l4UcoV5Scn054VuL9rqYPA5d
	 8ZcwsJ1eHslXmeO9u6sXAg8VGsWsWW80QdOY9WHAxUArhLHYQMFL+WcaUqZVO/HTk4
	 5k1FwzwXnMy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BE4CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009581368.29358.16904468905833624338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e329a2f4c0839a3c0a2ecd97e545fcc64ad976e0ce0ab04e3422f19a19334f4
Date: Fri, 29 May 2026 23:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780095813
