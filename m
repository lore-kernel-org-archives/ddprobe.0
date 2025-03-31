Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CFBBE67
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743400194; cv=none; b=p0asKFeXokN0AzUDqUXVltYWIu0RRvVPBl2K2z6rXkF0eidoi/hFm/laxpXV62TOeR7vMPBja14Qw1y7WhvBY2R5IDdfQPuNRUwQUCzW+Rg2QLvHO8dDxx0YpJanmrET/T79BtLdn27IeVlktuVgNHYYk7o4q5H5bjPNZTsBnm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743400194; c=relaxed/simple;
	bh=cjyR8OE9HOnIQI1Z6msW4oBv6krOXYlyujLrMi15vV8=;
	h=To:Subject:From:Message-Id:Date; b=LL32dAAmw0GoeApRpl/DP29/++IYGjqdNwMMvDZcq9AcdD8DwZlvn0LUNoHIl2qlYjCJRcTQkrZvNyJ84hRQsKssk9VPjmOAOwLMwEVjP6s7z3wQTRa8FrodK03xCkMWUd7KVwiywS+BFKNxxc2sAp4fsGZPy/udxPd47BvIjy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdb4EB3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdb4EB3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE261C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743400193;
	bh=cjyR8OE9HOnIQI1Z6msW4oBv6krOXYlyujLrMi15vV8=;
	h=To:Subject:From:Date:From;
	b=Gdb4EB3CmsG9WTRqpL3xTOeH+ICsdqwzCvhPetRBnRlzVy/o28U5WbYs6+yZ0GG0a
	 Ktk0quShWS19I1B8wsc1K9tRafMj5rOtUqqnicOAdoGp7sXFgBBRlse76d5MDNW93z
	 N9NkQImnWdAQl2S5oa56uLFExWZjnSC3qqn0Xxkcq87/K8a47bNQtFzrfDWfBoWrqo
	 8U+rfQ3w2nmEnhRmr/8Q57G7SP86Z8w0OU3SKSlEpvivjumQ6eNNT/krPIxZ5tHQ7Y
	 O2E13FHSETl9lEIftpIjQXr6UXvb4VvDPKzgM4SUrWnYYdXTt5Z65sh28WSc4FHuan
	 PpcsIzMV3rLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9D8C36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340019369.28800.8668775182816592708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0d7d15f4d06a93ad55b5943c969013ccf5dbefec3c2543dca00ad21761766f
Date: Mon, 31 Mar 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743400193
