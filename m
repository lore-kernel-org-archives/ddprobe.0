Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F41631
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723596354; cv=none; b=jrCd33At7h6rp6XMsCAOHddcONjFJ2cghzeZxwRT9KwzzESPbbVz6yaErvQrAI90qhBONB6qtGwHaW7m/7P/Z0knYJRV8nsWTv5y3mlVmMZHmumB0qO+N6i53jFJY3Gx4PErpsArWF7iviUbUdG6+pdLW8yk4FGc2ZLrWAYEJBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723596354; c=relaxed/simple;
	bh=n1QSeXIlaxciX0ZHNUSfv6i6RGmbpzS8OQjdvO0aqmE=;
	h=To:Subject:From:Message-Id:Date; b=TNI0EwmuE1PZwXCBjFX7JH1LGswS7/u10mz1Es5CscQTi8EwDBXYsjhDGHhyIAG9/iTiu31Zzf6zMf1xqCty7/VxgADAPPkW5pjM0Oy5BJu2wAg//IjbhKSB2R6kODnNvgLoKVrfreRD9/EX1onXXh058DTs0RFZNwOgh7j5PwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1dfM3GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1dfM3GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF858C32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723596353;
	bh=n1QSeXIlaxciX0ZHNUSfv6i6RGmbpzS8OQjdvO0aqmE=;
	h=To:Subject:From:Date:From;
	b=V1dfM3GWfDdiYZNtfTq0GIVovQUj+39HYNvqqIBnqwqeEOEJdSNYgv0XTAvsBsKqu
	 CHtdgMVdoaOMLlVxhs8EFxwfWU00gB8CXcSYEFWZXgu/Qr6COgUx2cznUFTx251pTy
	 imd8C1U6LaNmdCtK9w9FRpml1Bj+6N7VE3WZ4YtcQoYYNoMfSbJU5Z2pqQZPre2qak
	 BGaMa5PdW8Ee5oc0FnGekpzA3s4X4UWI2ThFvRoQoXJW2P+fpvYGuMGcFpae1Cuibb
	 REuPFJOqAtWfJbwcO4/MfgkiKo6FLxvGwXtDjLlfv1ktedmoAgEFzW0HnRVhh4bbqp
	 haDo8OqHeIvrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADC0C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172359635360.18019.9642257311049580548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9e5ead772b811de39ef5b0bb6eb091478c1477e09e0e8fb25b952593306843
Date: Wed, 14 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723596353
