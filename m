Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621A923D7F4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785909634; cv=none; b=MshE0H/ISczdzWOA20BVThsnayxeA2ORWvwVBYKMJAnqJKINKth1NUNNjeDO0AUx4PhbzOyN8zDct7IdDJpzaIoamgYT0aQjqTzUjrwy5gRaldIVViivEFY1sGPr1W/MyWKn+Uqm+JTcpaHnfz5M8P5URQ8a2CawLjgRvV6bVv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785909634; c=relaxed/simple;
	bh=gf7pQ9saA5DieOdNV/4JNmMWxP/UZUmXsCn421ERP7c=;
	h=To:Subject:From:Message-Id:Date; b=dUrzLaX++rrCy4vaFIsScPZMFP7BWI5+n53KyKJ4JiW5oV++LFGuI5ryqIrvLQE4D4sj+wm2vMgLnFDNYwTwbIRkIuPEFV3zhFMhCsmUXSCrffZQoQN94z6zmqel7bjdoed0zMgmVaJRZUby8AeEhlb5tUE9uvKxQ+D1fESyXVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICE5DVoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICE5DVoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE81C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785909633;
	bh=gf7pQ9saA5DieOdNV/4JNmMWxP/UZUmXsCn421ERP7c=;
	h=To:Subject:From:Date:From;
	b=ICE5DVoRDqK+uN0Ho//SM6KHseEL0x8K/CePP+Jo88MGcDvbfILvcp+tJIdyTdr7C
	 4hIgP0hDjvxRu2NaUYivh13FdIHvZhbEfE4llRxCl4ya/2Nurnhj6HvifrV1SKNB09
	 bwWn6k6BXc6jwZPZrM8p4pBFbITq5wZ+1VMXkOr122gNALGmUbcO9j0lJS6NhkGhaV
	 8Bg+fSlu9GaRXIF+dEvy+b656bJObojipwn3GQo38Ots1a9ywOgCdYm3tzTlTXYIws
	 kk62nWHh3uI3oQOuuUM/gu3MfF2JePTH1DeHnJSxDqpAd5BVzNnnBljDBsqxF3NnDC
	 PylaUJTO6bgzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82F4C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590963370.5676.13917488660925888320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41faceb7a1a56fde8d1166d569fb97bc6864a96cda11f24f42245b22b7f31764
Date: Wed, 05 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785909633
