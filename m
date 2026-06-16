Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36546477E33
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781627794; cv=none; b=L8y7pmna1tAkhZCgFvdxiJVMcHgN/NJ7uWEZepJdT56r3SW4Z8ZNgE3+SuShtVxJlGKkgwaBxFMsn6FknJp4R9yTCsp1e42/eKedZ6qBqOSZN/5JbCzmTspvxTvd64DeqImJfzvS8IJgJAbY3FU169w5KiWcc288WKVPwhSZRBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781627794; c=relaxed/simple;
	bh=0yzq7FtPiPRlRjsURBI3qFECIR0llNjBlsjH3sdnjZQ=;
	h=To:Subject:From:Message-Id:Date; b=jCC/9kZKcZAwgbhaW+JLBZBT0VZZTvQlSi6JFN+C13aPVqut+RzsdfKsOl5RGxM2GKLFl0zXtFnRuKwgvRQ4lV2uW7CsPuj3Mqp6+z0kdYLysLH6Es7R/pTu4tDr1y/pai7ouQ9lNelxkLugyHiXCDwcMRLgJb6TPhqSaQ2JsFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCo4aENk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCo4aENk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D452CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781627793;
	bh=0yzq7FtPiPRlRjsURBI3qFECIR0llNjBlsjH3sdnjZQ=;
	h=To:Subject:From:Date:From;
	b=CCo4aENkth0ADY9ow8iDHU6pSdYqJsBSQt1GIiI37fYOzVmDNg05Ha8HMopHI65ND
	 1iYbBunhDX4Rc3jAnVoLf3aEeP4/4GSB9unnTqvkHYolSLcry96f27UfyBYuaOxgWo
	 8Pun9RBItlFUXhWsini3oeV/FrKn/R4X6yVtKhAKFsu/NQuNgtA+0kaiBZYU5mq8Wy
	 jP0E9mXQzNftw4vIS4V+UXj3vbZWiEQwTvljl2ARSmTGqzNmo0MGSpv+Mpd+993QFB
	 /9TMEEl652qCCwLq/+8MnCTD80I+ZssiifSzy1KM9VeTzVODqC5R8A/97y2HBwdvEm
	 /wH3M4uo1wTOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE329CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162779370.19869.1108349565749438636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba441f4bd5c52c6d754cfcefb1c13cda5146cbb1c7615a79aad4aaf0d229e8eb
Date: Tue, 16 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781627793
