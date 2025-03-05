Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF081EB3E
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741138134; cv=none; b=so0csQTbipmRFcJuPxOZFhF1gQFqenrqD0FA9oOObQEfAx6cWQ/qTubW8NU0Opem9b4A3ZCmpxxIH39UHQkQMXV7FfS60Ld+c8/2B74fwdvf0DPc6yAcX/KR+ytWdaPSbGXynaL65qQbjqv2wFQb1Ikr9Wezs5umzyZSge6EHuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741138134; c=relaxed/simple;
	bh=1YwS2iBsaQKazmijK5C5cZxULqtnl506hHcNKqstjY8=;
	h=To:Subject:From:Message-Id:Date; b=JRz8QJrGhwdKIKJxq20C8roiD7R55s2vgNgL2Pt36+60EHfAzsYo1nWEbmAL2phUrqbdKBI94U7pc7shWeA2xJzv8CSmeVfhS0UkZLcWw61XlolFdmzclvmw2FRZvKyJlifBdIpGbWQe4KIQrKngtyiMPXqAv5ZwCTnVBlNQBZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLi1T0lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLi1T0lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B548AC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741138133;
	bh=1YwS2iBsaQKazmijK5C5cZxULqtnl506hHcNKqstjY8=;
	h=To:Subject:From:Date:From;
	b=RLi1T0lwVpdPrz3oM73ptkJXgfkHLaFDeNXTEiN638t5g7HJ0nrVM1iJFbHR9ORk8
	 PqiQeDOK3FRxab6ots8BQO64KJ0sXpUKB65PXBAUaF1Xau9Jnq1/HiTcKdDZZVcI5m
	 McF5NsOc4Gqx25m5NVdYAxih+hKI73ijYiSKkzUabmWYLlTKpA8BUumMmvXxnsk5q1
	 nJoaoQ/U9vCg3nP0RXz5bPkf5k+EqZ3ktmcvcGPJFVOG+Vi9hXm8wKjLlFaIyEHdh+
	 iLf/0rA98t9p4OdepCg6qZh6eggxj5tpu7fMqdfagoBXObt4lY13FNp4JnMWQF6eF5
	 XzqPncfRyW+6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2190C282D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174113813365.4181.2958506573041865878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614133039e1cb92053bd90425fc6ed16335c7db830c3eb1aa99cfc306d97f555
Date: Wed, 05 Mar 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741138133
