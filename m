Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2AD1DFF0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768312434; cv=none; b=OZjGfJls9gt6wT6RMCHsovNpn8LwnTsxFEwhnPw0zHPV5GOJ1toOvZcL3Yaa0J3qJn62RacZxrxTlKHcLjMQ+KFJdxua3ud42P0dUGw5qLyTo1zab3h6QXVKwKqXn4L1Od51jdnf+puR4tkglYN5vgwgKtV26P/tZ5Lt8r6kXB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768312434; c=relaxed/simple;
	bh=gAyy9GR6OwoqL5U/VYtnl3Ra3K26UlGHA14tkeyzEl4=;
	h=To:Subject:From:Message-Id:Date; b=ipFoGhdQTmjxUkRXjzPfALuMEkaId8xFODb24usaUwNWle1yO1MqeHw1FQT2b7UmHKAvF3CbA0g6REA3S4UlgYIKf1xIHOeWtMeSnd8eOaYpKMugTI7xKT5bFznpkHFt6PoYFvvBu5VdyPaOA0d4Dd/OhlxTotZayBBH3CfRMEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtiJSp3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtiJSp3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33EFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768312433;
	bh=gAyy9GR6OwoqL5U/VYtnl3Ra3K26UlGHA14tkeyzEl4=;
	h=To:Subject:From:Date:From;
	b=jtiJSp3BmIPCdyr5l47jB6iToZMETaFV04rK1pz+gSTlX+KJ0SBVN3X/xnGUW6gne
	 OqJV6tWyA7KuXmxGEZSKNNsDLabU3hiQ0Suoc31/THK7hAhxU/KX9stQmuNtuUV05v
	 ATjqxR5Tco2uCz6OzDWCxZLntnAk1fOZ+Q5Y017AcUKLGeNgHkyIkv8+TErcAd8vDM
	 DLtMXx+BAjBfGvbJRclmE+0B7fudOiZa75lOf6xYPDeoOlMYLwqEK0oBOA19g6TKI2
	 uljR3aZyCF/uB/2mzoDIzJ0s/0GRTyaZnJooX98Gf2Gvh5Ipci5nhXjWJ9Zpkh9ZSe
	 J0mGkNa1/eG6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D44D2D105
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831243358.18492.6609638157561855915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebb0f9d661b91287cc55d5f0745b100a3e7029053cc4d81f637a14120a2fb84
Date: Tue, 13 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768312433
