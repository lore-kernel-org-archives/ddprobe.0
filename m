Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B22351E423
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789569634; cv=none; b=o3HcITBOvd4vQyt42HiYIIAEvn0h1SHic5jywp3+qpREymeRWE+8OY7IO4xSCOUbpfVVVtgMWRb7n5KXWbUwvEty1w4GssvgkKrLCcw2dx+RBni1L7cUvRsbMe5uN8XtmIIhRuKYAXSZGisnlL5QmCnEdWdN3QgOZYLOv+T8fjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789569634; c=relaxed/simple;
	bh=tr5jo9otRCVHZtTJmrMML/qmYXc8yAYpH0y2/zY4jbU=;
	h=To:Subject:From:Message-Id:Date; b=D8G68yIEgu4NH5c6nJg2N9QmE28n8FZDSLE8AT044ltsmMQDhx8O2eC94+g6MGhysZ+zurCE7UoXx+u/bWbcPoo9XKAPjINEEHq77KMguFYDseivaUsToAo16wv13vSWK+baLDb9W2U0CVq16rO++TdvreZj87BU9IfCwNZZCBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1HjlTgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1HjlTgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7209C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789569633;
	bh=tr5jo9otRCVHZtTJmrMML/qmYXc8yAYpH0y2/zY4jbU=;
	h=To:Subject:From:Date:From;
	b=f1HjlTguDmmBEIejXhDVBsBelgUDEBTOgVsLkQaQa5iquzjJwBa21FOO/lVf2fTPd
	 eGHwVQoBGuXox1Yt9HIb/ePFJd9gXrhaqv18PkaFQZRkLFjsk0Rh+ynSyiQTQ6prEt
	 Qork3N/O3g/mwzQQ9W1l9alvCw8dl8JCQC209NFyShyeFpTbZ7EvsTJ3DUR0mdXD1J
	 ijpW4RxteC4IrsY7OnqqIcNT2ZbdTtMtCS/wCY0OVNJJEuI8j2mAw6JTjplje81sbr
	 Oci4Tn2Vyyifzm2f842c4dGX7y/SwD4XaOzQDtV+y2M8tiHMaYAEu43qfXzJz1R11N
	 ewxzsjaATXbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B63C982C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956963369.23096.2961711855667925807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a980abbaafbf429057c23c5d619691853bf63a01414d78b791bc33acf6ab6d1
Date: Wed, 16 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789569633
