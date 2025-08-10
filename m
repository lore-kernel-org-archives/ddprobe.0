Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294D817333F
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754827194; cv=none; b=aglAaAxof6K7FuqmpjwMWdx+HTxfNh/6cThVLPoBB8GDNIFRkrKo5OEvo0nrfCqv8410w2FCNItl4TDlNNGpSXxZ/KJMtq5BQearN5VWo6gkkb+xrVY+9B3TZIInP7bn/DOQwh3I6BvrG3g+X81/8PBiP61m5cUvWxK+5/ITyEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754827194; c=relaxed/simple;
	bh=93PUkEG1gjscdA5f+ECYVUfx4bSMqhjCtKr5WZR2YdE=;
	h=To:Subject:From:Message-Id:Date; b=nySHN5wFw99bmSExLZvZ8aVuxCZwyx5NSL1SnkONbmsOts+Dxb913PMN05vzSM1AH93TSi5fBsmTl5YYJ0th604Iwhu9wBCH7gVTfARQPay2v911y6Bogn2eH/yYUor1GdbLICRPfsF+QQgea8q+6Q5F8qfVHVAtbo/WSNtdr0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INsmjqAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INsmjqAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16AFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754827193;
	bh=93PUkEG1gjscdA5f+ECYVUfx4bSMqhjCtKr5WZR2YdE=;
	h=To:Subject:From:Date:From;
	b=INsmjqAeRJ/bcxwggIUKVN6C8cGBaLwryDH/vezTL71Le/9HyKAoNu9YBzfj2GYns
	 gmGJn6UTDfBqfSfCYChOYFv7mukXqGzZ+Kxa4+khuOVAJG571el00gVpa0M7EqLmPG
	 yVDrx08wXWmWrWVFnx8WKaQoNDn9vkmrHE3lY8TCB/58IkOZ5+jgZHUCjX2OHlt0nH
	 GHQV5uEXSZOMOmOBuibnLrkzXgW8br69OKmSxnDfo17fBBcpkJpq8IS4uyvvxYbMJk
	 kMVNWUr4txzHZseLXcHwrt02ObeGk0G5YcCVuaRQDUhUVvPj01ROumZQMmoFyomKdS
	 qZDC6tkEtUq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315BC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482719357.21447.18114194191611119904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bced6523a9b8ed234d20dd1aa2a0d31c54d1fadeb2aaa53e97b5751648cfaf77
Date: Sun, 10 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754827193
