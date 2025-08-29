Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2835630F7F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756464594; cv=none; b=gOS5IMnoCaP3OD9Q/lEbY1eo1EIWwzpfillk9Wq/tzVkfWcrx3na56aLR8NwUlpqXA98xcV6OAorAfJfewKUuMD/9WNHAPyfSLAPel2+n2tGt/XcOBeXq+97n0LgZaVIkl/c9JP55sj/Nk4SRniBwFINtVsBQM+7vDaEKOfq5wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756464594; c=relaxed/simple;
	bh=t5JFKp5VpCBJAncoTALVTG6MC5bJeXVMQ56zmXvcgc8=;
	h=To:Subject:From:Message-Id:Date; b=fkM71YDk73zbP6LI8Tsu8Yk0oQ1heTf3ezdshoGWXPaymj8dBMEJI7eUN2rq0EHVpLfxw8lBTvbuVglUUMBCg7TAxVwkmUU4jGg9Tv5P6gQ3DPdZX/bdXq6Ei5bzsq8kof6IHwWwhfGwFMAGcFlZWORWfDAG4CxuH91FVfvCU8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLxwTMxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLxwTMxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A98C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756464593;
	bh=t5JFKp5VpCBJAncoTALVTG6MC5bJeXVMQ56zmXvcgc8=;
	h=To:Subject:From:Date:From;
	b=TLxwTMxQzMW9ms2gIiCRTFd6QJ/UvwoX6dE/0oU1zYYDW0F8ls+AAg3KdDHBIONeL
	 aoGzTfH0CzV8ZG3HYFpTSIShSAQFF4RcMKBponCBKA5I1qHp1ufC/KrTDUV9ahUZrv
	 SCVSq+ETOFR/MXwGOofLplz7uBbt11VPt2/Ff11oeobrvYqDQLKmvW4yER9ilY8k0M
	 1At0fHP0JUJ18VS9sL+9Ocw5UtQX3WiO4dNTBjpstQwhM8GGu80txlUfIazBBSw+aO
	 rllV+PLoCuH4zunpwB4R0I5zckqS4OeSODxc9HPPmbYJGtPcxE/GifbfkbGNwe6r+N
	 r447H+O9SEpxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E26CCA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646459357.10854.982007066826676991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89677c831b1cd9eea0432a143e8bf64fa3d22ef07184704aea49ac0b02d5625
Date: Fri, 29 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756464593
