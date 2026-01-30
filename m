Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057E130DD3A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769758434; cv=none; b=m4d97Xbl9A0vubTrv89xg4/Kr9lAfdBT5PkL0dnsALD7zMzFriijDLgSqMmILZhaKcp2nrQNTK6kzP8RWCG3k8x0kO2i8pvZhBcq1jNljudAku0ae/Mjmo4ICcgYqmO5Jvl1d77+/8dCNZgZyvtzcv4hfylnJCO8IMO2ctWrRXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769758434; c=relaxed/simple;
	bh=SQeN6yJ+gF3iE10QReKW9y70qNPYZJfc5J95IvPrUVM=;
	h=To:Subject:From:Message-Id:Date; b=MeIdUtvTfb78Q5y+492csYrlbhx9akobGjbJWTDY2C6+IAYkq/McQYYSK8P2qycyZZLfI5DNrH3qhuac3oRi6/ewmf9hAuaw3O+NGtbDuGu7au538tk5fbjxdpCFqVFTmaderx4Gdv42zih+wzTNojSl+7BuXEp6D25EO/9nn60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hh5VtY5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hh5VtY5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769758433;
	bh=SQeN6yJ+gF3iE10QReKW9y70qNPYZJfc5J95IvPrUVM=;
	h=To:Subject:From:Date:From;
	b=hh5VtY5q5G1WePaft8dEsnk9iFrG1ezgIJ4G/Sfh558e3KRdKT0A7vcJ2yxKxix2h
	 xZ7DSOI0jVY0Wq6jSaFWMQ4+EEANwxljPsN583xRgXxyQsuZJGmXe98TBu6t/e7VZE
	 rTWCfy+e7l0v5JAeOnDU1FaMnXb/B4PsRwuN7ftJOwQqCOh1ue/LVcibv2KpbBfikB
	 WMTXRNGjOzqwkGNuf7v8dcWUziIFcOpo5BoXZpxuGDbXCEjsQUotsbhRhqcKtZpRgN
	 K1Ve4DkhQjEaTE0SG3XfLZ9+TR6/zXy94rZD25TDKJL8Wp/xmXKYzMQHQbqJlF7J0b
	 lNPPZ8k2lZtTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB8D49C64
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975843358.28873.11597979500570596308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952573067b656761c12b545521c7d1740f1802391444667c7d81201ff582d8ab
Date: Fri, 30 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769758433
