Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8791DE3B5
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751655594; cv=none; b=Uf/ckOoQCKIBlQaXP2gYdF2A6h5qpz6Fy+LOx0TK/5ZxwLQibwJkdA1frxXzc077RmR6fyJo/oYUJsjX4gsKohwrXjhkO4NvenCPJGStjCmyYbsG3PEBoO+y6hSnYQKE9SXxrUtCUfppzoJNHHbbm4dH8XFP2B2LaS3IFX7qeUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751655594; c=relaxed/simple;
	bh=QLaLC9S0ES8zK0jPQ/VkXDnrV7RMNGcq13x5eA6TAx4=;
	h=To:Subject:From:Message-Id:Date; b=uZPJgiZK/RLidugw08zRumnQJutMjWRXoOKQ66ESsNwSrvwpHFVypepNEtLnpYe/vR5nMd4RNfJ+SHqSzsqqYH+pa4zoqkQL8ywdzMZm17JgVUgfXZzvycFjB+MEwOzwV+1Hykr/199fvdkLsVjLcoVHQKrauiJEptLqfIKmADE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da2ZAcea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da2ZAcea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DF5C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751655593;
	bh=QLaLC9S0ES8zK0jPQ/VkXDnrV7RMNGcq13x5eA6TAx4=;
	h=To:Subject:From:Date:From;
	b=Da2ZAceapq5IeFnDVtGjVCO98MtJC9nLorJ0c1B1vxyh/POjUr9/zTU3nuoJp4wQV
	 5P6uIcHrkOzGi+etphL3Tr6ihBJ6+yfnoBBY97S6dFVHAoyyxqCvG+q4Vnq8cIxkUm
	 iV69BA5Q+tHNuHJ2Loipddg0cCS3BR/sdY7Tyr5HAnvQxadFDp/cI41sVJIJf69GXH
	 JdSMxozdTdCVPQB+HnrHgqNxTOqH6cScI/9/OidGutT2Bi0Wm3qZsteWvDT6X3U9IB
	 Lg5Oqu2+15R+xU199a8c8RblxJOv9Bdt/NE0lK6XGQRKue+Db4vH49iGU0Z44AXn9x
	 dJ+L7nAeDnKFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78FC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165559357.25852.3215392090895127144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7750efb9c5927f04fcaba8146cb7343a71f17b85b2fb27708c7dd08b5f26cc
Date: Fri, 04 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751655593
