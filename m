Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D05242067
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721280923; cv=none; b=WftMxIehLclkBN25jFSi/VZ4sxQbLEOYITJFt3qbVRj7C/CUIemJuCp8Ylujf5d1vCgy6KmnQ1uIsVoUZ8t7fTKtvKA6ICMWuqgZnrh+Nul4AvEGBKbBA2jXi+/IIUD/8mGrvanCxB7Ounv7NJZsswUmbQWyInVl5TFjEzMegeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721280923; c=relaxed/simple;
	bh=cDVsW/m5ksqPteyylCO5e/ZdLIBYqDYW7r+QULB5Zq8=;
	h=To:Subject:From:Message-Id:Date; b=ulFIRRbGeFJurej9swVmmILkkh26k/WNfe/e+iHp/vcmhkIYdW7W7VfIT2YAAfj/kHBHvOMbvn7TA6Kt4NUfMDZvBkbcbYaEX4gUAF1pAVxF3fqSetKEccpHYMNNUETg1NLGPiLgyxpF2ZXlVLeZqYkt15UFV0RoTp6YALVx01o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogldGQp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogldGQp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC12C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721280922;
	bh=cDVsW/m5ksqPteyylCO5e/ZdLIBYqDYW7r+QULB5Zq8=;
	h=To:Subject:From:Date:From;
	b=ogldGQp3U6VU/9TmGobK2q/Bu+ystVPOCezRRqzHrVB5kMdKj7KFDE80p9C17zh/U
	 8I9c+Fb3vQC/Xvotkk2o7kb0EZBNi0UL8a1DjniO329aCpnQ2GvNEXaWoD4bqZab8M
	 oOdxsNeqHFTZgC0MGKlhC83CEA9//md1EqqMTwg8fFg96pTEUDsMsoGdU7TMQDK9Nt
	 EvTTYxBK65gOI4kILHpuzq0FhTV8MKUa4KPtkiNLNBWdInhOGV7yOLWXGq6VNhWquu
	 vDCUyI4YlECAZ92/ugyNmysOT8b0YP/eGbXZeGTi1+syFQklve0qXFlQ7WYfo9vFZa
	 L/GA22Y2724Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA249C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172128092281.13003.8512229299834673413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e209d27f36730184634f478eed7a9c03183d730e0a5eca6b700eacf5379790
Date: Thu, 18 Jul 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721280922
