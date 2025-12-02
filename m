Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182E02FE059
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764661374; cv=none; b=nGgbFmTfUq2ym3SRl96JpsgBNTE2GdnTNvxXZk7wJv/o8f0WNQeY4ErKx+dv3tsZQiGlLKhqGzwns84pjJAG8TVfayw3tu+SUII7LF9gHOP0V6uWScqndwluqhqQXR8/viFALJUPe7+WcHEgWI1nRoQAFgejriPeIotFJgCPsdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764661374; c=relaxed/simple;
	bh=oCgWWTCUHczk1C2X8EINJUPWTK5scIX7qdtuxDbWwvw=;
	h=To:Subject:From:Message-Id:Date; b=JoO6uxO9XkqKq7fPACmgauFHWOJtBZca8vRMYUIYgDW5DWr9l7Egqo/bwag+SXPid98f4OIR1bPOrxaOAndXYGj4MzxlgUz+XHJdD3Y5BaLG8vVnhcjGaJzX3/MUJR79JAYQfWELbSH/qvfYk+kGt0KeczTs52tAnoupEi0+mhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZ46pKMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZ46pKMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2960C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764661373;
	bh=oCgWWTCUHczk1C2X8EINJUPWTK5scIX7qdtuxDbWwvw=;
	h=To:Subject:From:Date:From;
	b=MZ46pKMRdEsIFZ7+Cn/t5/i7Ik2DasxOzsZJeds9ij9WH4/eZSeCYzPolNhrL3COj
	 MtHlJETVoNnxybBIW6uW7YX0bHACF2cK/n3pgi8+WRTHcYoOUjJGoHin4wfXnj2RMG
	 KaMs5/8+pJPZechz9y0Cse77glL8DscZDlG6xEUX4h/lnrna9GKtyAJvR71zt3Soum
	 F1YSPXvDBe3wv2/gHNJgycjy1OSnFqkMbhB3wBhQWKcKEDXQ9aAe67WxBQEvYeKnxV
	 cVsjeCT5iyPcmlekAC4gPqe3+uskvNHA9E+qc/Ki9CE1byEFRadBcx7wXzMmZNwbxp
	 y6SYfkW4HId3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D52CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466137358.7983.1632068502063052584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf0a76062ce01b2883cdf83b96db99a614fae612bb463ae19d78c10d3596c87
Date: Tue, 02 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764661373
