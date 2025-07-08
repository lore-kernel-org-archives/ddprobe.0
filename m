Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364FAAD21
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752012594; cv=none; b=JQMr9RnD9X85SML0jzET5ZIaCbB9KtAfd1GoQBb9WQ2+gAXUmpbk/Tzdz5rLSNq2+WS+yVwvnGLSMfX8cLjbVQNaq4Se5sqM8Uh6IlvdYKlaHOH0w4xp3X8VN7KW5sNoG4zkQk3TcdE7sj6E5ZWix4MNjfSS6ItK8NahdYlNNTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752012594; c=relaxed/simple;
	bh=6+zVXYjdqM2EIzFMMp2Rl3uW1i9X2/OaGihQ8wqlzCk=;
	h=To:Subject:From:Message-Id:Date; b=svy4frSgKMdEd7a611JzRd9Fr8+l/rJxzKeRvuzdVgEBrvRiuK2TT8L28wL5+Xmq18gkJLU/JYbBqD+ok5WT/mavky2HrDvFkfTufudsddA6hcuHCWHLdcnJU9SBS1LciORX1MRE0uV2kCNtrhC/aTISuUsitGWoI5gi0nwaxUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1Dm/s8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1Dm/s8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752012593;
	bh=6+zVXYjdqM2EIzFMMp2Rl3uW1i9X2/OaGihQ8wqlzCk=;
	h=To:Subject:From:Date:From;
	b=f1Dm/s8YhAKtBTrY5ZwxriDPN0uQ01cmp8LvnQ0AMbkRnRKwf6sGgn2CQzgYq/twR
	 3lTM2LjH0ossDCEMN46VVaD45jmpW0shsW7jfFgiEzhoWQuwTmg9XI2S2NNBLVqnMe
	 yBv6RnO5quDSo7sLX5vsSJ1nDDO2mHGHTkQkbFgo9iKRxtjENJz8V08XcaSvj8W/vN
	 BmrAQGeDKDtTBZyv3ZYfCCTdzF51m2rlcAwNYX4IH5UyqB7RVrAV1avZ3EL9xo2y88
	 YIK3gx1Llu9Oltp96hFQymo+x/z0TEL8POMumMqbZcJkM+wpu57JtT33TrCJVdC9Rz
	 krsBn0t3ylsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93953C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201259359.13327.15083102026033870605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c447523714fccf8d61ad204dae4b70ed8f2d2b4a0cf67a221af7bb365dc8de91
Date: Tue, 08 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752012593
