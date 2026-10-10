Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B23913B5B3
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791657034; cv=none; b=gb5z375+kXd8ib+p954la9IB1w/ZJe5uqdI6HctX4GNSNMqZEd2mJucqUbbi+WS7ss/nUzzvCNu2iDqR7hiBYQkylXt3RWRKe9Z1K1yMqaktnvpBrhv2+ncFwDiswR+x0L7nTLpkOGcz50ye/1eWpBpKGe9jzjZSvlQgk1icHz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791657034; c=relaxed/simple;
	bh=1xXfyaH4S7S9GxVy7v4q4itML8QpQMabCq/G6NjhwjI=;
	h=To:Subject:From:Message-Id:Date; b=BUv+9EaaskrsVMQ1+iHrYlria8WZwgnorpc24pyizSMVi649aUkrEEvgd4m1Dk1xXKWPvJurUJbptfgj14EnaKYwAhFDf8nx8A75WVyyEJp1/WqrgR4LkBCSt06dSshcPJu6MAADYU1bfs6V+hgbwYja+KZtDexyCpbb1/V4+20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2mudYNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2mudYNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC69DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791657033;
	bh=1xXfyaH4S7S9GxVy7v4q4itML8QpQMabCq/G6NjhwjI=;
	h=To:Subject:From:Date:From;
	b=J2mudYNog2trt1KYzVK1p6UbXln0EwVVcB/0DJVw9QOFVDrdSQ6BtMtAlo9MJs+gN
	 IzrIUQQsl6mSOQhwLxXs6OQmZD35PTmozlYqpfR/Lao7ZXqlRqpFquytmCGe2CtBdq
	 UBoDZqWttTZkLn+bwcP0mtgvcn8p/q5ZTB4Ud6UXSv6BWaqFah4KiEhjIrc+AK0YZd
	 E7rX6htEHqRcx4YDbB5oRTSH/5NqXZZHiXZI0AlY7SLX8Y6V1+5bGVhGJdOz9ergvr
	 zYQ8TUUQ+0Cvvvuuf0ap1LnptwASi843mxj2xhZ643SWA8SpwTqXfOcSffbtsAQccU
	 7C6DZmREaPQ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B89CA9EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165703368.26446.12889920942052240897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c039e24de1723a058289458f8a33e91e7aab3ec17f301467c84f1c6b68d0309a
Date: Sat, 10 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791657033
