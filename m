Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C362F2D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719115343; cv=none; b=p5W7HTycIFhmni39uIxYDfhLtxUSw0CjWK8WPTRU/KYJ44XGKa0+pCStxfQrQ6a0Ok2/gc0StghBzSLyZg5M2w/iZJRVpOd2vWDEi2wIyfahwDtoy0GW9g+eq2/PfIo4tyxYyXnILIt3RYDvfbRacM16VSlUz/VS2gL4NXfNWx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719115343; c=relaxed/simple;
	bh=7pnuctGDk0Kcam6ltC8UiyE141zS+D7SnGn2tHxMxUA=;
	h=To:Subject:From:Message-Id:Date; b=dyh2MIzRhzrjQTBdl7gb+KV9eb/GTBuYaUojNChi86lGgYPbaGj7f2vuH+cALaTNTw/91HUnDktvNco79lDWVHqVDHUe6gpow5BIsGyCfI4WX3olbv/ocV1FiO3OiGTlGdSRA22WLXF8PyQ/sfMzNhpdkCuVQfJpis0agYrvwlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6SSnmC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6SSnmC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3F1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719115342;
	bh=7pnuctGDk0Kcam6ltC8UiyE141zS+D7SnGn2tHxMxUA=;
	h=To:Subject:From:Date:From;
	b=b6SSnmC60Wjq9veMqxd+Jbosdv/ezgsU5QaQO6Tty3Lnn5cnX1B9Zd4VS+qtPUr/8
	 4SBF4VtQOVqgDAh22vAfldqC61ouv+lQCaiDTDc4TwxDgSawHIVsluMW/z8YDqFkUE
	 V6Dk2niPEYVAqXZ0YgciGdcelbcGEjY+ng3Vs00zH1LDGtOisrilUxuD05O6l6lMol
	 4NtyYU3UANgt6iss2Wt10jQDSmVbUhHKq6PI/cne7AO0iF6/YQ3cSCoHPmHuK6srVn
	 cBZs93K8UuxAxoZN4fbG69Lx1PidCNKH0ROA+W//WaVLocc7ySZ6+B1aBYq/orWrmV
	 SF//zM+R9OPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39D1C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911534277.32499.17167938990331904204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810e7c9993b40345c15afcbf2270ab6f5ec1c1ecc5c2cb231b424600c5e1fea1
Date: Sun, 23 Jun 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719115342
