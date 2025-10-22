Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF90A2F5A27
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761162593; cv=none; b=a7/K+qh9hCQVEf4IU/2ihYMhYYE/kJcoyPDgIdcT5K/9ttOX75FnfqljR4X/jn6EkyW5rS+AOfsK8yrONWD9r/mpCQ/BMn5S7YfuH08BQWG7kIrd+Ic0wqNjIvU8IVRaI1Tu2wLKgHkUXe0+rUTU0ENmRlG5ri6l91Kr9s+4feg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761162593; c=relaxed/simple;
	bh=0BwtvamcebCO7r2lO5i1/PaMCIbOcVoj+EtAE8qKTgY=;
	h=To:Subject:From:Message-Id:Date; b=Acr7U4SqmVqPbjt1qnTSjj8tqyCWfa2dA43aGt3CoCxIYwM38uVSgICoUrBLjbYuq05txq9ozGqbFjoRsIUy9F1mg/lJdel6n/1yjFV3A35He8aa1XCAgXd0tzhZ6Naok+ipM2kaSZabiuyf0+gBXzZtKqvgYBhrqttu+MIh2Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9HvzpST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9HvzpST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761162593;
	bh=0BwtvamcebCO7r2lO5i1/PaMCIbOcVoj+EtAE8qKTgY=;
	h=To:Subject:From:Date:From;
	b=r9HvzpSTYvJdQGydbkHk9DYLfYSpRWjnRvmBMDx7xeDh/rpi05ZRLx4mrmNZsiTTH
	 L4Wy/8BvY3lo5w3t87WIhM8rTho7v+T4k1dysYm9zCY3IFyycJ34yehYYHWmQDb/cA
	 Fo+3I689Mz4KplQ2rQ1r2E88zjG221V+yrOnjoxLo21Sdqasbyi9ls5d+krQds3SLO
	 5VCSpfxpuGdhYsBSYz6tA1Q4cjqd/2NkQaVkR1jjknQ+4/nv/EPb5p/StHXFTkKL11
	 W603X76UGoXgkIzBf4nw0zpyh+aHar1T0hGpWDxI+hgUFQ5JCBPCJVBEFKBe2fyoAg
	 w8O9kYAfDo9jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93468CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116259358.9630.1354896491932538507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc83c7b680b43b2e1228c20b9e7066653f4563c61ab0e599c5a3c7061673ae3
Date: Wed, 22 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761162593
