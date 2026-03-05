Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF881862
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700294; cv=none; b=C6aaoisjxfF5y1RjLUln7CFYf9Wp+75F9QGGNlta+wLQ2mWcOguZuSz53puujzqnWf2fdHxOQpiLBOrquPzLU/eV8H4Q1v7hH9EaRSmDXRZiT6cXnKMjc5UKg7giVKjntDjf5aWQmWpiAhuL6IQj5i32icD52we67lUnu0VP7cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700294; c=relaxed/simple;
	bh=4Mfry1wN9TNiB+T4pdzqYllWZ5ATbCO0yCtqBwm49ww=;
	h=To:Subject:From:Message-Id:Date; b=hxvjQuAA7++rB94MaH3Cw6TP25X7el2idsL61sLUVbWNJeweZNc6vL+aeFT8Z/1Jn5KchJqND3RSo81BHsmOvB5OAmCD68dHdqcbwWlarFOQD8gmOvwHrylXSyqCxL30ZnIYYl213NjvKv2OvHBJmVhe9YF/93ordDHD+Fp9lZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vjvk1h3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vjvk1h3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E67AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772700293;
	bh=4Mfry1wN9TNiB+T4pdzqYllWZ5ATbCO0yCtqBwm49ww=;
	h=To:Subject:From:Date:From;
	b=Vjvk1h3lOxvqDt+ccjUvybJ/OVYejocRTcSXaeTENSPT/c2QAwwA37qn0YFwrLQgE
	 0uRW49CmUuM8G6ulrHA5Rvc5gW4tZUToLfAQiYi9BzLKcW9d0KFQoTbapMYrbwzSah
	 4vt1fJ+5w+LQggwtY2Z1NHziIOIqDCzLhuCQ+ngkDjxnX1NOS6T77Wy14VjZf2NlXZ
	 2NGVlq2GaS/MFClPPIx7F04BDQlGeDmRP0r+Y1TI/UHH2743jqBqk235ouoRPqh5pa
	 em8z5z1x5ngKLwouY412QWvCsDGO06SKE9rVpJSizLhAfF4hjmMLqlxh1QBRSxsnYL
	 dpcrzqpOIslHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22FEEF327
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270029357.17778.14369927975697440383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce0a20f543e18d4cca777211997e8d1c64239fb5707d76a584bf1e39acb7434
Date: Thu, 05 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772700293
