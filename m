Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C932771E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784938234; cv=none; b=rQWBzbjPlMAiZYeXR2X2SdetGc0jdBo+cbm5BIBvHdOI8kwPyGFPI6LBMgZWLXsYFC5CxDBHpRn6Zqol2WCf2x4c9KUbdnZwfhL4DaEhrfHRtoSRv5CmSLDDzg0wowhgxAmdTHiQRD/ZT2fHjaMrhzbWJVFaOX4emWNg/+l/82Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784938234; c=relaxed/simple;
	bh=bViyYaLhO+tOY6YMRZubyMwDp/tk6Y+cuRgxxvKP+oA=;
	h=To:Subject:From:Message-Id:Date; b=Bxc4vaFNHApqjSaJY5mtqZiPf/9x/VuzlBLC0gQkuwdzsSxu6L1L04z4hpr3pAaA+wGn8IAD/wc73U7yf+uFs/SbjwMDaJcKGWsyTKPjXBUAsvr7JTCmz+YnlI35bHMAK/2NgYcCFkjUwcgA6veA4zszqQj6a618UabNVWK8msU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKISaloQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKISaloQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B03C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784938233;
	bh=bViyYaLhO+tOY6YMRZubyMwDp/tk6Y+cuRgxxvKP+oA=;
	h=To:Subject:From:Date:From;
	b=BKISaloQa4EOzVu2PbP4vgq/a8kLb8xGuQ0/ajwNSHeH2cuvpm7U0yMNpG39Njrpw
	 X/ifnckIweEQ3ropinNRfHzwc7zMk4UssGqkyYZBl4OjBJAzDXqcp351DO4FCw9Mre
	 RkoCyCJmcMvUs+16/WWPNhieZO8muuNY7HTOY1wRBFNfMdHqp1aOdY3zLf6Be4kJUk
	 t1/ItPbJC3tlQheBggKpGas93v1cMh2Sxq3pHaMnxNmM5CsJlcQTLVw1Iiftb6bvWo
	 uU8sjOIMjq8dWXSbj5w6Wa6Q9l/aBdZQfCzL8k2V+t1+9f1I3wTY7Um0F+jUFnr28f
	 +3KCiD1HUn0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF39CC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493823368.32369.10919366436970194894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d797cc5098ffef7ea7d67f000e22eaa5e6599122490465c0512409259de8e0d5
Date: Sat, 25 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784938233
