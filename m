Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C9E42056
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756435194; cv=none; b=YofLC299n8na2494kbyTqWly3e8k9kjXfI8I9uzv+94isYJNVLzHI8nG2DnL6j3hvoBZaiGxV88OnM/zc1Vk8JmDJcRjPPNqlRb7ZhKUYO6/O2rPgjy0hrrpbNZ7n0RH4XWm1lQ6UT1BWO/KzlN/mEn3kYVoAnZE2CQOWmSH3xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756435194; c=relaxed/simple;
	bh=cg8lTC5AgmUEkf9SXhlmIKomcchf2MnBSkSdpzHLzMk=;
	h=To:Subject:From:Message-Id:Date; b=ncRg5sRYIpBMNHKU1/hGSZ3y+aOQt/T2jZb7EqlPDGnp5aaddYaVQJpzW0vRX2izCLYd1jmcD3O6LidwqYlno0h7DIkbh7TD3QfBCCwqkGworMPjp9MKaXt/aYFjvGTmDL4j1cypJu+VDcS3M3ByX30d+Enqc/kJ2H5dwBrVDnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HehOvkNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HehOvkNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F9AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756435193;
	bh=cg8lTC5AgmUEkf9SXhlmIKomcchf2MnBSkSdpzHLzMk=;
	h=To:Subject:From:Date:From;
	b=HehOvkNLVTzQUBdmMxr85XGgU4h+JSNae5csmifVSlD6OhJKbGjKNw/gZeUrqDSTP
	 V2QjIWQc7d1kUn/kjtpQ6l0zbfSzUkxo20pRR+8FG4feLaQx8glLL5Xflxz8m5hm7d
	 NwWQlwilRJY5SW262jp+tdgQBi/6qbE7QInqIOnINmxePqcqfuXs+E2RXVfbdpzRCj
	 nqOXao6C8B7OE6AHj0yjTJyIaeidBQ/ziB4Vy2JI1aBL0/6k/222yxdEPU1hM30bz4
	 AIq1X3oEh2gfnYvooNi4QMwUvIrR3+jKu1vWSAuZhjHurnPstXCWZ9/wqqhg16bteP
	 mpB+qQc5RkbyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91722CA0FF2
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643519357.9678.14591898370259667110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156f2dc4ffed3f556136378f550a1a148bcca08c5291ec6bcff2997b02ec7ef8
Date: Fri, 29 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756435193
