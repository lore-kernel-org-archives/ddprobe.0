Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7839638D40E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783372114; cv=none; b=ffG1b+oWw/dGgzLcCGmfkCINPfj9rL6ccsix91I8nQoQrZLFLJkfzCDuBmLvjlysLCE3qDFkHKw6u+AEqI4V+mj3IeQF+pJE/vA0jTSCqUyNugMWVXK7d4DE0qKyYN3WqCBgXMwq3aBO07Okjh5I+oHLr8DeLi/ABpk2w1gVxps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783372114; c=relaxed/simple;
	bh=188qh4ljj/usL+uF94FHqrkSdnL1zW6HnM0mqnlYW9I=;
	h=To:Subject:From:Message-Id:Date; b=HWHrgd8gd7BG6PUkg9UGU6IcIvEk+0v7ul8grNBEam0i/2HdkXybeNO8Yz0ofVbA48hgcIHmjapkNUCPoY4dnGlimh0nSiYHtJr4ah42L9OTARv75WT/+OVDSSkMf7lpADNH4CWw9BhBgz3OlPeBHNfFQzW9/w8F+QvvWIi9pE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vwz8n7Q3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vwz8n7Q3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC81C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783372113;
	bh=188qh4ljj/usL+uF94FHqrkSdnL1zW6HnM0mqnlYW9I=;
	h=To:Subject:From:Date:From;
	b=Vwz8n7Q3oM97L5quyDJUO+iLYGx2EdzjrK0U/olxSH1ZjEfHfxs/Kl6T89Wb1GV/a
	 TlidKk/Zht/bs7frXtKw2l4Xz470Iyk5BeIM8ODVzg3vyrdlJflhG2fv/3xuHD/jOC
	 DI++b2Gyg3tNE70ey16DVHGgPkO9N0fb0cIbp6cZEFXmbsuk1QC3QXAcgoLwzW1UAn
	 1qwepaSLcneOVYBBJ910iRAiillXkX6SMRsbTstAZVDsKc/jhNTXPJ39b8+DurMquN
	 0EDEEAYIvQdBDrOMbaMH4uzCosFB0duahRdsD64L3+MN4vTUf0KENTZ06gsMeKrCzt
	 J/yQ5P9tuL4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE2BC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337211369.2157.15647115868415149091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90d1194e08f98515539bc710c3868bac6f58e91fa26d4e02426a5e7bce39e47
Date: Mon, 06 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783372113
