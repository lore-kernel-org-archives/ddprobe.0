Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2566C15DBA3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727420754; cv=none; b=QgERI8B0CuBmZ+Izvbo9MvdGy2zl8UNE/XEukvDM5VJSfuTRYFEit0aNBVeyrmRbRW61FJDhMj5IAHfHPtQCV2ssB9/FuyZ3UN/ArX7SXTj6PfiM+VJTGcET7Saoe4qR9Vu302qlKWidZBT14JV7nMgg+h7Dmh/BgXwl6jdUqXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727420754; c=relaxed/simple;
	bh=xBzqo/kVU0qs+BFwvhbErDN97pYSDT91M7reCbEPyeI=;
	h=To:Subject:From:Message-Id:Date; b=pGuPGMhGXwIWlaQKcmtkieZEX4Enf5xNLQNL0W58YJJxEo54jHRE6vBZCLK+FFcjrkQda8KbSbPegtpqVrh6etpn0rndRliPQj245d3zmyOvwkv844GCubJNo3IvKlGkpqUZFCOriddU6hk37vC+oXJdy/KripzaTivo5ttpleM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKeUkcej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKeUkcej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECBCC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727420753;
	bh=xBzqo/kVU0qs+BFwvhbErDN97pYSDT91M7reCbEPyeI=;
	h=To:Subject:From:Date:From;
	b=BKeUkcejZFI9IGR94hr7eKB3/IhUSqDAlusyRFdHYbKJxBocgtt7zTJgrvI42rOyO
	 znGs6hZPjWZWuxwQqqSGnGb8K+chAT38QcE6ZdObJl0fpTwE4DuD4OF+Hj34o9vLYG
	 8QWlNxSZreU0mdB5TpBWPR95psLC2uUkwHEvRZKAs9tGKt2fg2UBUL695ia9t2TUSw
	 Gav+E4vHoXcl1cUOuopxYYMGkqdtpm2KdSPpNarMMFKNDo/Ey9DKJqLehyA7GlQTt7
	 gi9gpUNFYXhb+FghtNJP78SIEe27GRKLid1Z1/iXJBfwYwnSOhVKWdqbTxUbYDkBPs
	 SyCfVLk6NGzpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F96CEBF65
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742075362.12059.6648195422538485624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5a14f1243741fda1d3793ada6b9b22caa082b220e15a63cc34b94a700df3ea
Date: Fri, 27 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727420753
