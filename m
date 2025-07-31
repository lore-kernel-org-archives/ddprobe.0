Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BA01E502
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753969794; cv=none; b=nVpbxcnBBQW3jTWYTT9GsXDTaTAnQ518s8Q2rJFrwyQpkACtXi1UuDao5jmKETzn3LwNj0o6pWCyF4XkNwpXHyC7JSeI5dGNDY8Nkh7kZp9fa1r4hHv38m9JXPtRjY9/fKoOsiKosrgykrQRFa6VU1JxcwZFWTvWSwuTMk7wgfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753969794; c=relaxed/simple;
	bh=qFgu8+79B7CcD52v9kZ4RyfElpxVmGllziemHjg3tZk=;
	h=To:Subject:From:Message-Id:Date; b=OQsqjKWU2aLG2CzBfCWwIj2xZKxgYVt5642LPTyVMGcPPb+eqBagwwHEa1yLshGUVQ3MKys+y2cNamgEGbE1FO37UYprpj56+oOz282QRqWLjv+wErWPWOCVQW1RIlTMBSHxhYPdc77+wn7JZrfeu54vmPjq1KnZJiI2Pn5Djv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYwWW6sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYwWW6sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB0FC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753969793;
	bh=qFgu8+79B7CcD52v9kZ4RyfElpxVmGllziemHjg3tZk=;
	h=To:Subject:From:Date:From;
	b=gYwWW6sjhHh411uW/9bygCQmjLrstIIzCCyPHQzq1MwrwB7EMRVJ2G/54I5U3KWXK
	 vnLu2TZuc8j6FkzC76mnzWhznSg7eHKpDZnNOWm9rMrKkFOaQhlPVqqL4t+Tepm1nZ
	 KJC5HaiIekMRa1otpWwr+sMP2BW4rp+2r3iib/PhptJxFkDE/cIp2T5EXYte20RLE3
	 jj1+nThmtokJqidDxCdOSJxDFJU2dT67MeK5oQL4D6wNYeq0uit5yhsWSo+zKxLE7l
	 HjFkcho5m0mBGpmzhz+EDTuZ0mkacUdfLP+dMZMHaPCGxp9WbIUC85Pr8Kf2YUiRmQ
	 F1twlxdd8u5uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF27C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396979357.32607.10783946489353632123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22a1b6b4c17ae36a3eaa583ba7dad19747f6a95e288d3a0be0f1090c39ce34b
Date: Thu, 31 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753969793
