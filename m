Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BBC135A61
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713879023; cv=none; b=fBpLNcw8gwJMOpX0ZLTfdBzsYVVziyzNV4aMyKy7CzQkAB4cEo1gvBrP5kIYpd+b1TgwCtI1azau2r/BV1Fbrjlp0AWwRPBfmbnYIxGkLGZM19eWoF7usXxsoTDszXU3GeB2jXoWZ9TcWS1HdUgQ3rALPtzUjHjK5nIYy9PZGj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713879023; c=relaxed/simple;
	bh=eYl8uJ1e9Rt3OFfkVNOSl3lUUi+ubD1Bs8kTn/LTuFU=;
	h=To:Subject:From:Message-Id:Date; b=sy1dW5GIY3DeD53tS/4PAtFJY0UCUYn+yBuYrANQeHj2EZ28BGPz4KNX8yN0slL3rp7n/VAO4WGjDygZEwiUxA+LyJpp1qhEmxELPEi6zWq1ukPNFdVIu3FHa0FqeQqLkRLzzHcGvd7+WVl/ci62diIvwTb0mQEPDIFN+AMFhI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXo6NYE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXo6NYE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC00C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713879022;
	bh=eYl8uJ1e9Rt3OFfkVNOSl3lUUi+ubD1Bs8kTn/LTuFU=;
	h=To:Subject:From:Date:From;
	b=rXo6NYE0wgfhNv8qjMiPec+BGsJMeltyj8Zro0X6s7DmbXH/ejaLRwv0BYB2VKHxV
	 s7Z2rSYEtYhE6gqhKG6qy1pajBlKbP0t2EE/5Q701J+ukTgN6iB5arhBD3fN83tL2+
	 Dp32UFBbIt19Tg9mFBo75fHUKjyb4MLNjZAaS8LjQQfJT/3dJ+KK46Fp0gP+9Tr9JZ
	 yCOV9X4M247RuB2/1YD0Qpb8F09ewo+XIzh9OK03dX/M10Srl37eF5HFLpZ15e0rm5
	 oUcSNEXPH3qgCehg6utWR/SrKihyGnyvO3IuYy+esYTXHfhkqPfxDvjtu6BNL8++DO
	 WUZKaTTrdx6xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA178C10F15
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 13:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387902281.18822.9737801190772398990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339450dea50911d7b5cc59e9fc400893f3c18c68360abb1000a13b5808fd4370
Date: Tue, 23 Apr 2024 13:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713879022
