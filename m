Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3683174BE1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763365914; cv=none; b=fohAxbaoc4qeZUCTWEj3tnjAIs4nQGDJFRJAlLtdG3J7KQIYzBwI9mH4gDKxe4qJ2VHm9p4Y90hkVHoXjsDAumCSEeat8H84vMdFXk0Y0AevTiBfUAeWFjahOq8qIH/78EP075mPaHKYHU4pVvX7diCpeEUC6uMgxPNmwsaYrpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763365914; c=relaxed/simple;
	bh=OtmMci+HMHPZPsnR36bsAnAPeUn21FjWQZpBi+p1oNw=;
	h=To:Subject:From:Message-Id:Date; b=YnviKEh2JCzRnYxUfhIhceV7fXyHy6EZ78BHMlQKzShspL4y54eu4s2GCBJ6kY0g6ZHtHgR60aTWQAML4+0zf03ROWGnRxpQHv3vX6RSKBn6CS0UmdB3qbLpWChH3MRsvYTwJRGo0xmlK+M38GXEeXtiCjwG34zTghchONz3Uj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/FP6yc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/FP6yc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D1DC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763365913;
	bh=OtmMci+HMHPZPsnR36bsAnAPeUn21FjWQZpBi+p1oNw=;
	h=To:Subject:From:Date:From;
	b=F/FP6yc3G8EZ11/D528y4LcKooV+PTOFDIIVMx+SIYt4B5KdggOkvsbHkjagjLIAJ
	 4QFq40ZNX1OOluqIez7Qva3gi6ZjLBwjeOJUH2Ns228ZmyWHxN7OzbIpJUL2KjMN5p
	 8oI6xe4Sj4Oa4hD67qxcXIfVboKwVkxdcPXXrjn00XoRKxw5hprSS3zYAKIfRaSeh+
	 U6T3nUC0t9hHetF/z6UCwrtbWmR8XgoX1DtscLIQ/TqNSCNgIKv4eshkFbc3Qpq6lf
	 Fv8BscqxkcUIZaL1q9FaH+0mGQRLvDm1SS4EBg73bDBXvAaWf9NA9lhqXlTzs4yiPl
	 O90dZ1ncnpB2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93539CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336591359.12350.9329294125027904105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836a62551d410e5565bc1eaf0dd0a0c43fdf9f4f590a9e225083c923ab53f7a9
Date: Mon, 17 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763365913
