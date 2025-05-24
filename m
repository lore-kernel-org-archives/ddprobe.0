Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BCC14EC62
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748089194; cv=none; b=ISyWUBOmQ+IHkQJl5KvJ7OO+HFrO+oYHOl7yp17r5wfD0HTRmW6tUwenpt8oWgHikYXbY+01J7MjOX4MJC1ljVMsiKRf6lm9bYuRjR+axqssjiJVIBJ6xuhopRdDkJf2hZ0sYO3F+d228uqP6x0xKcpUZCGb1V95WLdI9fq9WZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748089194; c=relaxed/simple;
	bh=IG83Y62AVp+BMixbls5aBJOfOdkh9Tiqjic4F2KrNPk=;
	h=To:Subject:From:Message-Id:Date; b=eGbCiDZ9oYEyYCSfaVFwfAcMoJkzuWG2JjfAYMr4wWVkUKpkEF5Fv+24SumqgLWUtsM/SG1eBaijMucgvUbCKBxQ0QXFpTAAnnPaHStJW7JXrnbgTkOYPhEql0Dds1mYfkH/86l8mIF9ZhFraJQysbD3EhdzUwpa8Jn6nrBspBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvjMleJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvjMleJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4746C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748089193;
	bh=IG83Y62AVp+BMixbls5aBJOfOdkh9Tiqjic4F2KrNPk=;
	h=To:Subject:From:Date:From;
	b=nvjMleJ+SHulTRvlPLij+AnPTuBm2BWXMhmFs1SkaCLM3DrwlZkei9xhLHvHYsvP7
	 C6jT2euhMdOe9xg44z86maciKBDDRZ3aUo4tr+1NyLbceI3gN/8R+m6pZfmcYVEVP1
	 SS5B9btZfyNMIpq99YgBQMDyVmjxSLqKpe3/tSbIqVTGmPNFG2O9XStNwiFKvx6lyT
	 gOrUjfZxWQXOHQ/BHhyLHND2dvEBjzXwCPnURpyPG/digdxkOt/fFrxe0R26EojyxP
	 6lGYJ3XipwoXg3dwOHR7NN80knAUzV1H0KORxKDdzi7gz3dc9kPsx5m+cSfvZ2GNr4
	 egZ3AZT8uDZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91978C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808919357.22559.16952089854199573379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2d2dc1750d2a88a7c0f2937cd7db212d4aad6aeb5dcdc1fd502ecf6660a3b8
Date: Sat, 24 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748089193
