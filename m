Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304FD1D5166
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740178134; cv=none; b=WHnCWJoyzSnxHk3vmoB9GPwD7deyhk3Hop5aWaYctXEmct27qcDIY/ekiNxQQu6BKt0RL2dTocK/ALfNx8FNQmcmoKD8YjjAKl/jYL+DQqPT3HE0VCBu8P9VnE6OXbfYimkmflMXAXJG4BN2nlEKw5JuRK/be6Q6bFCnYT6LeXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740178134; c=relaxed/simple;
	bh=dqI9Ag4wNF3/ON0QoD7q1rGTVBgoXU31sM/DvMq9E3k=;
	h=To:Subject:From:Message-Id:Date; b=YCsilGUPbgkBi/XCEvP1ArMYr2UFLGwmK6YTGoziyBG2HpWMDsLwoHnrvCVStFqwAqtyNSe2QruekQV9bHGfBqmvRjhrnhpS2MQjTu9bCQs60lsrua0WOH+YV4d0xNQpI0GAYgT21uWak5EceOJq4RHaYEohIsGOuwPSGAT2rhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqE7IM7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqE7IM7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A952DC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740178133;
	bh=dqI9Ag4wNF3/ON0QoD7q1rGTVBgoXU31sM/DvMq9E3k=;
	h=To:Subject:From:Date:From;
	b=cqE7IM7HJO3YlKYyHK65oS5g2bckkPD1QfGW+VQVOgrFtVvhWnyLDGAkvTe7rrdts
	 86xTh0bHjsFCSKecTaWlJ/JIvqUmrEWur/Emh/yS/p/jl+NaKP8k0/J3kbBScbCM95
	 rcpy6raRT+SJFMyoYTE6/cS6m+MPTTBRlWhjysbSjXiUqfrcqz3jtuggvrI4qbmzSe
	 J34YzQS4/XTZZgvrvAcKwMKa0s67Kzfk4FOiJfpY5b5SNt9/62m3viDACH0QRTPsTv
	 7ytnD4rUPS04mCLavTpe0GyIZ3oyQPtNg8XYMVTC1FACFZVoMAm7ppQWb442eaLOFh
	 jE3XtHSO0H7uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94476C021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174017813359.7924.8702873089103592879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ceff9c7d3a9baf67db90c18f61fcd9d9500a78c27961340a1d903eef56ea7c3
Date: Fri, 21 Feb 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740178133
