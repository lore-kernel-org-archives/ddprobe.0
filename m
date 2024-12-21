Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFFF33FE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734792954; cv=none; b=QyuvNhkvXbXfPRJlhLtLYk8ZNgpZ2tHDZVsO1DhCYKg06/wNQCChuH0yvUvPgM7NNqI717k/ldgVJL597WBO+EsLtubM4ZVhdJkGeOphfA9JVfYXavV7bDm7PgTdXHCOKSxu2CHsyrdAAQIU7bCqh8SJkNIO0Xrdxrj4njY0k7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734792954; c=relaxed/simple;
	bh=whOxCO6Z90yE4mdGmSgvJ5pl+Qnd8IVk2jmrOCEX0ss=;
	h=To:Subject:From:Message-Id:Date; b=Grf40fjstNZiXhz3/rbL10KyCFgUdfJJA+1WwXJqglmcXLzWaQBPtzazKWIj5Et7mdmYLhyADuc4UA28p1fs8c3wC1An6kf/8xOTBRMMz3vDmeDPWQ1qAwk38iKs7y9s/G0k2133/jSTo4SwzEmPxIUony8Y+HSYMBGLbLHv6m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1t3Y9LO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1t3Y9LO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B306DC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734792953;
	bh=whOxCO6Z90yE4mdGmSgvJ5pl+Qnd8IVk2jmrOCEX0ss=;
	h=To:Subject:From:Date:From;
	b=p1t3Y9LOBezpxO0uHLmj4j7cGHO6Y0fJqI46zx7uBUKxCqzNCLl6G45tkpp79RwDs
	 nhJIgWypi8jt1PuH5AeWa1DIchrPPEPgP+hPv62QtIZzt1Z7UMQXA/YNTeGsDElRPM
	 z/RnoKWoe0wt6xfA2YKvSKwdiCK0ySK/FyNYD+H41THIerFlQWrdZlh3R7rbh4hw0A
	 A0Z6TI9T+n0w1IvVRQJqhzLdyuUuBnxAnK/Hxo9Ok5oske4t4QHp3tjFvmrjGVcHhC
	 lFyI23541jQd68NqdTtKZV6E2EJPXVyChBuFYmWLEBUyJAEKP1j8ZySJXqJI/Xt441
	 tlH8k7eWfxKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F00E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479295358.6982.8010401098173469483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c33a46158a99252ab01e5a862697eb7b9fcf9f10eeec5b2501e0a6f0e17dc83
Date: Sat, 21 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734792953
