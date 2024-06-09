Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6781DA4C
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717961843; cv=none; b=DCUb7U4taBPX8lmV4Hypwc3GO0WsHZil6WXbVqP1acro5p6yTCUm5m2Ik2yCzagoiRxNeotMIFWOEWesQqB/4d8SR3AoR3TaXEtZJKmrBlNr5Gb0pUZ1ZWcyVA9OjF8G3nqjf6g98PazaA2WZ0eCM93pfdTExmjyfKxO39S7EKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717961843; c=relaxed/simple;
	bh=VWDbyl/J8QvScDMcD1o+7RrVqUR+/wMcwsEdGAT9pkI=;
	h=To:Subject:From:Message-Id:Date; b=OQrVrFcpEYA28n+60eFQg5odJKO6e9Mz8Fh4tapT0lZhbhxRFebYKZ1cKV7riccLvE1d/hm6+O8qC+K8oLtzUiX6hGX3C+bIOaoZg0Y6scjpQhuFUvEfZd8IvDtw4DL+SUC1LTYQ3lnVT3S1AbQ7JZnkn4i8LdDvtg8484DH+WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g14eOCEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g14eOCEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF3C1C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717961843;
	bh=VWDbyl/J8QvScDMcD1o+7RrVqUR+/wMcwsEdGAT9pkI=;
	h=To:Subject:From:Date:From;
	b=g14eOCEIxVBziYVslIyLnYrVe4cvy4fXHXXkItBb94Xa+KCTExOnAN7HAcIt4kqpk
	 uVL1WJ8q6onTCWGgcjiMkGyyQtsYtpWVCcffmUwgx33tLA93CnS4p6/yrgYW/6vk5X
	 1NwfyVYK877nN5NddLbovnjjqGHcyjjoPLUUbGHPyQrKFO5BZPK5HNTd88cQERhYkX
	 1NLxLbO4vvZzJpxlZqihry6vuI8tQt6uSJ3iAbUkMrtxY2wxnqbh8W/th+sq5seU4V
	 KAs+8Dz5gXLJREXS63e+QxFiQPWSzK/q77Z8x3rSLp2JxibT+Ag6zsSqnyzBGM6SAg
	 LOQZC7E0SIVEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4782C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796184286.19930.2392706745447881064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efed055ca9c2c8946af45e45e280332d6e4db8b044072e5834e997fb51db3bc
Date: Sun, 09 Jun 2024 19:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717961842
