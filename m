Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468953438A0
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789137634; cv=none; b=WwDYzLSSOxjRykbkQZAIlB/LFWpAMwGP7nPZRjRxQoTlco+61ScKOuC2YUnJ0DthYpOop3Nil83LBpC6kuvvZawWP54Qupyh2eVsof8a4/w1ZTrCkA/an4lAddCD9KnCi83UFu0cBkrfq9msOZCWELZPvC4RuRpbT2cP09ZoMwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789137634; c=relaxed/simple;
	bh=hQq/QjdfDuyLGs0wUKZYRi/ObMxJRMebEenglK0Ud88=;
	h=To:Subject:From:Message-Id:Date; b=HGw4wG2SkvL8FhFZHQHOrjPjtU/YgEdWrh5+mw7eIOf+QAd9feiQXWyY4Ly7EpcFZF/tJ9NnS+4mKsv4xH7uUSSAEh4eI6jdi34q/JPYgBUpCJNwDf5L8CgdwhxHeSu1U8Maaxe5LSMKiW5AKfL8bZ39rZA8m6HB473enSBNDmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BG/KFJwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BG/KFJwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD87C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789137633;
	bh=hQq/QjdfDuyLGs0wUKZYRi/ObMxJRMebEenglK0Ud88=;
	h=To:Subject:From:Date:From;
	b=BG/KFJwLxciBUTB3Fyy4XBhvMnExomAaWLaC0niCjqj1Bj3CCKT15wIsb+dfiIBYy
	 QVeTWEA+tm2vaWDkPbquM2o4D68Gyj+0k79cxWtdpDZeskEBXqog5OT/M2d6BY6MoU
	 iOwBDsVjqPcqvMn+kivyWxMnp3+NKMk+AVWJef8FE814S23NJ+/bL5L3T8g26kqALO
	 e+8ul0IufbHpoCEEwhvAIZIwXK7LBSWh/cKaMRLG9PrmxQ7d405Vm6bvKmtg0evLAY
	 G1DcWr9bBhBGsEcU+FGh8htjuk/FZ6cbgav5/4NoRutjFUsYEX2IxSUTe4//g7F9kz
	 Gao4pfgP8Sbog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA0C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913763369.8421.15806956249720901507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0068629ea3fd0ce3fe682afb13d84143974b13e0738e3002350c9aa311c585cc
Date: Fri, 11 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789137633
