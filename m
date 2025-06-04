Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA3817C224
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749076194; cv=none; b=m6SN1cuJSeCUpN+eLTl/gvd7cjSu2Fp+HCQit7Pc5h9HO8FgU8ZWvi57hMQxG2ge6zGCFqhkbHj3typA6GzEeZEMl/fTTvwHJqL4ZIrcerPQWNyzKHlPBqNgTdjJUtL7V0BaPa7G8Iasr/3GDZkra681VmzU88FRLGbwfHCt2GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749076194; c=relaxed/simple;
	bh=eR7QDpocCF3W/f5NnGz9HAeqpvIoMVjVZnied2bagsc=;
	h=To:Subject:From:Message-Id:Date; b=Yp9HYRovZEVuTHGj8CVENe/R3EqVrH1eXC5ZFj+hCNkD2ajjjOuyumSMdqQfeiWv4j/K9u69BBEpaoAcdNDF63OG0dPRB5PpRgavr1IjF6bBtikA6HKlz8RDBp75DdNcZ4d8Ay8Y+XZZDTipW1AnRvIn3GT/5mhJCNB+VQN/gk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcNmGGBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcNmGGBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF9C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749076193;
	bh=eR7QDpocCF3W/f5NnGz9HAeqpvIoMVjVZnied2bagsc=;
	h=To:Subject:From:Date:From;
	b=NcNmGGBYnFTQx0hSY5iZOb3bpvceAieWIeQugjRBl35vb4k99rQQREVAtjQqe/qZy
	 SGQm0LTfeLelMcTgL+xAfJOiJiXA7lAR5hoI9UTG45lFE39+Luwle+7I//zEIIlYjk
	 xe+wb6QYxcGFkg5BE7KRFuOJ2gvsqoFXLKH0amo29wLvbEclIMsrJ/Gsu+6Pmi3jui
	 4EuSDbQI2vFZaGUqy9f8kLZl4fetr7LDQuo6OY8tIK7mAYpfAHWzfoGsHFTyqXRwJe
	 bC3WYGonkNz1Gs/7/MglYWNUvnkUV/E9oPCZ61wFc2xGQBmV5OjE0n4DehwWaGhxZZ
	 9v7kXagObixUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E4C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907619358.3113.17464612178148678916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63b6f18b8608977e0e015e4f0bc03d0195ab974f47c6be289ba5b1a11db8b39
Date: Wed, 04 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749076193
