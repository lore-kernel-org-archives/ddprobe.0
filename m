Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526BE54784
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717172063; cv=none; b=UmR0wEnQb7CPeyE136KM6GaHddIlX8mmJ86xy9A2rj39GLMb8wtcKSPnpdu0gNkDB/Udt78B4A4cNucH33XuImCxkVbhXX2QFOu33uWc0jbIUo1YHOo4Yt8lw3ZUyA2vahZKZXK2gg4RlApT+9HK0E6pZYbenOdZrLzz5gpuayI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717172063; c=relaxed/simple;
	bh=wqD+qDvWuyTw9TERmGfwKM0Sx1rH8p7kO41EViEMmxo=;
	h=To:Subject:From:Message-Id:Date; b=PLzYEETEMujWQqgAm8E8JmMqI4kclKtV6XX1kAhjczPD01TC6pW4q8ceow6Dr2muzzvAq9PQdLCxANOIjzMznfIgCL3OD/by65/6/esvA03FmuMnFnA5waVqQXF6xTDCgIwIIBRO6WsyBNuA8NmutHRkddGgIxcQL0DFdtoaMFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC8arB9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC8arB9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75C7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717172062;
	bh=wqD+qDvWuyTw9TERmGfwKM0Sx1rH8p7kO41EViEMmxo=;
	h=To:Subject:From:Date:From;
	b=fC8arB9KLKfdj/dkqRMGVqFpEBvejZ1ilcADmlJNfsM5bSyiD+RTLZjzodAxjaDa6
	 N1jk65AKo4O0iNjLMVuvHCX7j6pGYHob/ZLfSDblOxSHpF+sye7Z8U+UTj5GAOajvX
	 kXf+aOIhqK0LnPn4aA1hIfsHL9eXLB2KQFGyE7ARyFpT+AZZbrUHZmxwGipOpljQBk
	 ekV4wAFDXDPRrxT0RvjHSCEtFuOM/LSNSXipco6Pbuj7wZg1jBvIFPXot3qhzUHpsQ
	 p6r1ba2jO4+GLqsqB0qSQwJIZ2avUanfUujzbMFvKKJklqUxw1gE3JUEvPH/CzzpV1
	 uBCbzweRNNT2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3796C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717206285.16985.10134169081124221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cadf8b38c9894ff236363441d50fd191adde17ffdf6878c56222bafc3c1952a
Date: Fri, 31 May 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717172062
