Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041C11CBEB9
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773554094; cv=none; b=Pe1lDaGD8BqFS1e7Y5OUBm7rBEBYNgCox0Y61pIlLa/GcUpZPgIrEMzr/a0BSQZH15hnBMciUeu/Wb/sjSMSyrGVUIAX6SHOIjN3MZZkDi3/C6FooGbBUUFo+/GuQRdnjFwaMPVHyJEGBTmmkoUxzo0DuYx8PasgjmKnobpevgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773554094; c=relaxed/simple;
	bh=12VcAjGBb3E2Kuc26vvRs13mspB+IQstkqLaD5K7a84=;
	h=To:Subject:From:Message-Id:Date; b=B9vDN/DEWQaeL2/6l39hv0b2CkYzcb/joFQCjuf7imjsQoShb28ljhI8Wz6b+B7U/au1HUeke8YYvit4db+BnIvNVs6te0dyMGmMz1zNEc92DXFyhiCg2lT+f9DhWTsTOf5BcPmgds+9lS9CbbnLYCLyGqLCLKoOm0VcDXDzv7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNceFQya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNceFQya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773554093;
	bh=12VcAjGBb3E2Kuc26vvRs13mspB+IQstkqLaD5K7a84=;
	h=To:Subject:From:Date:From;
	b=JNceFQyaV6l8aELfKktbem0g75k2ucOHXoXAytnGJcF+LcniDd4IiBq8niTLbBixW
	 mCBWodkGU3H1+WZkXbGFCDxz3CmITpLri6XaGgH1aEa3hax2+MiPkuWtQOlpdw8ocZ
	 XiHE2ocROR0V4EdZmllfWjgQc2J75lJPqHgKLLwUoEAfUmLrmnr/+gUtYSeuWMOEZI
	 yA+K/qU9yzCLeh80t9TzbV2b84u/8RpJhdOy6cALB5kFScFJESHs60xHU9S4Uq97cp
	 RPN5UcFamtKYH5SxNhx17DPUFeB3XH7hW/JyqPQluMzJ2qzj2hdS23iFiT2QbzOqaw
	 0/EjzP+vowDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFBD58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355409357.10343.855518943101428536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47aa7179e3c31306de0624dea12be32f1c2351f5f773c8611d2c1a21922e3bb
Date: Sun, 15 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773554093
