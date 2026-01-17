Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165B2313298
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768654434; cv=none; b=eHJ+dj/QVJWx0vjkf9MKy7D2JtRZXHTl/7n+MjxctF/dl5Siwe7Fq8LvwgQbFrqdJnaAsTaSDcRG3Utb+rBNr+8jx0tqw0ZpuCBPaQwzxZBQWelIiaMPhppXTNPQbxB0Dy7nVPXgi1A1/x7Rbjl9tQTqAoftIMwyLv+EAFbk7mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768654434; c=relaxed/simple;
	bh=xnV3sW5QbtXL0OKzRXb3Ai5oUXJ41KG4bAbbb4njr5M=;
	h=To:Subject:From:Message-Id:Date; b=oeGFpZEy7iGQRASKDZQkb2bnOuYNPlqdeJNTNnfbZu4sLmUCE8VXBUJ0S3gF4Qnj+BexmtTQDSFTWKYfUo7s6StEuH34qKmTTg6AV7/3nORHop9EOHaSuODsIixkmjNYe57aZBZ3PfttsL4KAjBRctfph40uwI3zhFFa6nSk1xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8lRKrsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8lRKrsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1C0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768654433;
	bh=xnV3sW5QbtXL0OKzRXb3Ai5oUXJ41KG4bAbbb4njr5M=;
	h=To:Subject:From:Date:From;
	b=F8lRKrsie5B2JKtMoEACes/IkLHLj+Bpt+vHcBa/rQEi74Ux38wy4VwWcOwi1fBJN
	 ZrsmN3/HvwgG/VCU+3LrEwm7F2Cxu7aamDwjeI/e2k7zXQWssarfA2AXBdbhWbeuHR
	 gIIyo+vRMNTjbMv6IZpe5eht0tRK6svp0xgyvkYBzeNu+za7E2mJE0Hqw/bo4pnaoP
	 tbAkLRRqM4j2msNKCKCNMhrf1PCz6zaXPOh2iCcybgXJ/hmquKVAoucZ/FlVfCdqtE
	 BFrNGlWmr73QvN1pyxrQopK9rSBa3QkcV54yLK+KefArMpe6T4J4BPcOfgmdleeDMx
	 dnDtvw4Ywz2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6D0C98328
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865443360.18335.14321392942227211247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b853079fa11ae80af0fcf12b6a9dff27778e9aa356f9fb37e769179c8c2cc91
Date: Sat, 17 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768654433
