Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27538243969
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752537594; cv=none; b=aq8YgzJ7owJ3+9BnSw0+9E736hbND+kop+d5tUuZoWTioFGl2kKN4A14RcZ8Ie6p5tYdx8o6b+GTxuq7/5XmiCk7wTB/x+k94yA66vpVGn75LTkYjBPcrF+x4VL2Baxdu78qHXsiG/5eB5U4zVg4JsuTUzRCOX6oPwDmLdxfVfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752537594; c=relaxed/simple;
	bh=uB8X5VKrcAirbQPBWPn0tXaefol4E1vlOHJxGlysiTM=;
	h=To:Subject:From:Message-Id:Date; b=nLQ3jC6RogREX+r+uxoGdqQDZcyQCNotOyBaeX1TWazDTEfPa8X5ZNs0UCxTPFnBUUHbw2zc01gPNJMw2Gm9T3s1Ut6VkcleZhZ1DElElxX0QgmoSzxc4oxu3p6UBIOTP5abFPptSsGx0+9G0nz0sXKijVv8CZyqpNL+HOUNwDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hp+ZO9mD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hp+ZO9mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF45C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752537593;
	bh=uB8X5VKrcAirbQPBWPn0tXaefol4E1vlOHJxGlysiTM=;
	h=To:Subject:From:Date:From;
	b=Hp+ZO9mDgxG3LQhhfJEVBeye5W7197u11ut2glwXTCYKZ4ypm6mWKvNIW4DxO5/fa
	 OJgwH+sj2hpBDBeFCm9GJyWWlA+srdskqKo37yhI2J676NAFW1gnSJalxk4uQJuNav
	 4gtQeAD74M32oQP4ibcDYQvECHSrgX8nOhhktYqXl/NyDQbC2f3iBusnRbnCz84jnb
	 UTFi4c2XPgsCVtlfonBnbHv5WoWwIu4jjAlj6j7mkT9iaqkMs4ec9yk4GGCyqCmYU0
	 RKjX5EeQ7mXeQYq/zQokTTvebDJzn5/oOIIe4E7OgidDM63+SkkzN7PCvNuk/U3nM9
	 RCEaC/wg1lsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B27CC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253759362.29508.375496818764599275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ed1c75ca7902e9a829d0056517595c662d9c99610f0b2ce0c4bf5abaf5cc68
Date: Mon, 14 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752537593
