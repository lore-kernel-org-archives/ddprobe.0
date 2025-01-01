Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233BC391
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735692354; cv=none; b=Cn+DWsyE6xcADs+6VV7/NN6sNou6WoVGU3dJJU10so+U50ArBzdVYs6jT8/OHizUjt+L1c51nLKpYDRMCgEt9zcDPqU49iBQwFM1gjC4OOBj+aHfBN7yEQYh0CibjHu2yGZceIhw44dzsBQ0xV/sNHc5rakc1BPrKBQzosUOBZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735692354; c=relaxed/simple;
	bh=l8/U6qZjH6x+EgNRYBwfgbgiTrk9uNZeXDJbyt5S5MQ=;
	h=To:Subject:From:Message-Id:Date; b=j+D+t9T9RH+wKxJg0UWk8psE+2Fx3jnZRzBWKgVeVoko8lglN80oGJ4RY9cinCppMIxRXVh+GkPXzkc0IfkoMDXBCAEMxj2GhhNO93kFr8+xB4kg84qHEZZmlXhYRyb6HB4jn+SvaDA3EVVZxuUkiDobafmrMJegQg745EEQFLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9TnxNX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9TnxNX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9213C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735692353;
	bh=l8/U6qZjH6x+EgNRYBwfgbgiTrk9uNZeXDJbyt5S5MQ=;
	h=To:Subject:From:Date:From;
	b=P9TnxNX7J6OSrSCYApw/ETXaOA944x2OmHYwZtWH9wbY1787AtE74ca73ASOqAJyJ
	 sZ3vfBafKWqVqAkxSmMIcZ/N3COe1wAx8jTvzmQuPvnMadGuVLUM//40VEUKGzRbWO
	 5f/ZZJYPiOf5ONxe5Bm4CyuGtZnQl/fREgRX2M842N12o3oexxUvohiZPaMxJdlL52
	 11L/5R64poMQP0hKXhQPSlVXqNqsvqwIdq5S7UBmR5YKdPD/VpNQs+1/WKyW5hzcvr
	 KZlw3Vdu1KsKe8U15nrmyz66By9s+y7MMg2t5tB3czHZy0d0gwLX1hv0xBods8381x
	 QWbuOOL9FLsxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94252E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569235359.26201.11900276852613504139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede27502419a275983765e0a7957bc8fb5f21ec5ce347c25a1fe16249f9145c7
Date: Wed, 01 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735692353
