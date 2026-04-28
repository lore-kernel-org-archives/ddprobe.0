Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA7835898
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777355854; cv=none; b=uwCVYsxrILbsmjXPmomKZpeGs3ZlpjTLde1KEzR1KNA94izlpsNvga9AU75oB7DtyC17WzDwCl/pyzp4PPcmSPgOBODng5wQGl31Wg8vV12NCAJ7/aQ744R08IJ1FgfLlLnFPWOn/fqAoktUfPqTc4qLokyuJ8Juig4Y6OcCmeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777355854; c=relaxed/simple;
	bh=3McQdl7Kz0Xe7T03I3hilVgULR7OapviF99Iqy49yBY=;
	h=To:Subject:From:Message-Id:Date; b=arv5xPwkOE4y8rdgeNONE88hyzG2Xgqhuposz9eIgwJTe8YQxzcnNBP/mZn4l2IeCoVZA624ZPCMFH4eksby4U+MX1u4Y1WRgpvRiLXegrOTDL/yiZ3hE2x3kPa+u2L8lCzWQhYzhrT/aubjxupBfR815JR8Nj+FfvBjXFmpfvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QglH74Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QglH74Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3F0C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777355853;
	bh=3McQdl7Kz0Xe7T03I3hilVgULR7OapviF99Iqy49yBY=;
	h=To:Subject:From:Date:From;
	b=QglH74Za1QP/WAxf4Gmawkwk0xjdp4qLRb2fbI6gdJ+X59xjZPc70tezR+o6eTLzi
	 srMviL4MAbM9MCPI171jt8hZ2GMaFhTucpu9XXu50MhPPhlDxvBH2oRaPOYvcxet+A
	 pVSVPdJmLSunekFEfwr1FhMGfOo6xzS17wJgWzhCKDTgAmqkc9zWvi+nT5E9dMlMJ4
	 +5YlNPFEPtpTxa0ZIH+SQoEPJ//QKN2KBH8191BkNmH+Kv6DnAb/18lc56ZuqLRa/Y
	 3Xr6Pt7zvddcTx/lqJyKhz54g2N8HQhanIttEwErJs11iA24xq6Eo2YpODVgdxDWXb
	 wKQS+VFF83fJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4CFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735585369.29581.18258666061279579251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5825e8c1d302fcbbe59b189dd6efdc1eff61429f0d1f2c47031842985b09eeb4
Date: Tue, 28 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777355853
