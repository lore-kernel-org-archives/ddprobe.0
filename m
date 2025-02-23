Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5086CB674
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740354534; cv=none; b=LNbA2UsBUFT0zP+llNZ2h+cUUI+XASRDDRtbIMtvip8ookzmsTvgn0DjQbPv2QIIQR3O75OrpkF5Qy3hiTDP306flG/hdU9/FG13eK76YBoVKFjAMGcWpt+718XoCWW05jbM8aPXBqes4jYetjMCqrw1jl4v9L4cXVhHjHcoG0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740354534; c=relaxed/simple;
	bh=Bs0lAhr+MRL9/7b0Ur+ySUrhAI24p/Hrf0EoOrFEniw=;
	h=To:Subject:From:Message-Id:Date; b=WQUlZwyG2DmiO384oPRUXKVzKhnde8wuz/h0ynFYzYAysnPtXJDWxY2uhuLdj1yCyQz/Wu5OtBu2fODfKoPdXsM0xw1wz0txBMf3a+ANsvZq1OYAgq3nREwAKe+kX6p7T1skcdYiL0eCv9rIqtAoIoSiUUgsbWYVx3UUsf2hxQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNUjhzzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNUjhzzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54F4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740354533;
	bh=Bs0lAhr+MRL9/7b0Ur+ySUrhAI24p/Hrf0EoOrFEniw=;
	h=To:Subject:From:Date:From;
	b=BNUjhzzf86fa9ZfI0hF53dvdGQvDz580Kaya2M5E730qQ2MxM5ac2XbIURAozCPOV
	 rjG5Juiyq1YiRVJzr0tJlZPezolz7ETV5gXpn6pFnVEk8YxbPvNo0hjFFmI0nSGBFT
	 OLiyktHdi38eNYiou9fEF0ql8VvQ5I2yZSG7KHGdlfX5X90s8TT1EcUg+Oczhk/J1D
	 U7uQUzppe6W20Ux3yGBuDaiiO1ZhOcJRoQZvyTuDTQONf6D4BU+7W9kIvZ1h0oYEmY
	 M9yGBbOR/Nsav2wbs2yIKCW4ncZWkOhJiNH+8iBdvNh90ndVRQtYJfrhDCzsfDbogr
	 WG2Ln6Pgqe5iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD02C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174035453362.7063.14846077315992777917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a849a1b2b0df4390105c862b30bcedfa2d8b11aea2b33205cdf7c22663de3f58
Date: Sun, 23 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740354533
