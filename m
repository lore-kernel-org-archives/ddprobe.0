Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B336AA2
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707024497; cv=none; b=hJsd5VwU8OCmZ586EaxvwjNq/KcUXgGMYTseRF2SoAOBfmrMou+HtnI6fR6HpVhootoJCCV6B77QDZAbu6amLIGIuRuLGhcOVL+1N1t1foRgpjJ/9pau1uCXsOHiD1UzbKUtVDuri8cMecp4IDgg4hFjxEkOxdw05OZJ1MVcU7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707024497; c=relaxed/simple;
	bh=IOOcMKg2Mdmc2tvrDYXw3jXIl4hCUIcUC3eoExpADUI=;
	h=To:Subject:From:Message-Id:Date; b=pHQRwZ1dPwdJOJPRHn5/2H8XgwcEex9UfEl6IWdAnWtGyY6AU8/qs+CyzVVvZv930AA2gucVR2ddOM17DArO7z5s+RUVclvlNRrZNGC0bjMbWdH1g+i3w0eRdH63je1SQvlNmUWT4LrvbncC03DfH8MkQHUAG5knhRh5A1B7wIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuBKmWya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuBKmWya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707024496;
	bh=IOOcMKg2Mdmc2tvrDYXw3jXIl4hCUIcUC3eoExpADUI=;
	h=To:Subject:From:Date:From;
	b=OuBKmWyacvj6FAfI3gJOdoJ5ZWEDsL9tAU5Hi6fgnIvE/axYNWf1fypMKeNtbYx1/
	 Sp1Vw17V8DzHS1nCBg1rP9UyDala3fHabzMNzuMHSLbMbySSmTMN5Dljie6MztJmVh
	 7mKzOeNpBxdzYZ4cypqF3NPalBcbCwqK83leYR3fvxo2ifM/qvYeKfO71u87Ju68Mx
	 hjauT6zBPgYg6Lc0ArzvqSPZbUJ9RSA+7f9a4HC9zpA31FEITIk3oiLOQDPy7Wv3NR
	 7r0cQPayIzAfVPdktZfX1KiANSgevgIAYpRAu7uYI9wjSY3phcDeLOBUir90iDF0FC
	 pfbkXhXJqQzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87B3AC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170702449649.25465.4527186756819809580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719cb08df486673e716d5c0149955626408a6aa0935bdebae8e12693ac2bff2b
Date: Sun, 04 Feb 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707024496
