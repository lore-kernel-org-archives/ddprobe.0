Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F01B3B27C1
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777345054; cv=none; b=DQjUvcE2cB0A3JoJ1s33TAy2xn74l5R7aM/cB8Su5xUoWdtNUJyp1ENUOkv0XD5jQ0XAbthuiTePOwIG8RaKc6rWeO/txqUDeQIfNgWmA9tyDVyl/ynZRt7cnwWoJEMhALQXMHU8nnE4NqngFUwWvUXP5Ye6n341zHEBQ/ld1FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777345054; c=relaxed/simple;
	bh=saJ5Kw7Ev8xKKivm6L8BP3FcSOTbUNI7xnpJnXs/hm0=;
	h=To:Subject:From:Message-Id:Date; b=VeNsOi15gwwbm5P0y82VLtBt2Nn7ssHmw8hZTyBCSQnchSIum7o6g/EeM2RRdI7LPnbHBMcBSXVl7Xq2HnbAQbz1lrbIk/7pz8ZCpDqbAd6mZbdYb7pJ6TiMJ+tAarKA911h74gq+mJ976RqCeHwuYXbF0q7+EognC4icMJXtCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1jOo1Jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1jOo1Jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD78C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777345053;
	bh=saJ5Kw7Ev8xKKivm6L8BP3FcSOTbUNI7xnpJnXs/hm0=;
	h=To:Subject:From:Date:From;
	b=R1jOo1JnSKwIxKHej5W8fzle0LlLA0i2A/d9LcUTWc2o9Thw/1xE8WjMgYL4rjjIL
	 Ltsv3AJmSkMongbz+T0GlGzTQ7B1NExLj9F291cZAcszUytzxc6tyr8FEy5pvKNpZ9
	 eeoEMBv9S+JQnM3UucMuW9XGg+vHxuh9lmdZ/VeCMgfPafij//5W4crUDZvPqIcPO1
	 aYDnwfRRyghiPWPLvWO59ezkhwekol6MV70OS/S6UT743XjA4NMRlhavmLbD5fi5pa
	 1YWJOjcbV3W+Q4t/bGyV//cKhPLC0VisQlRQ+VrB17UjkOwriJlLJgQToOgQh32LY6
	 KfOWvrPrHY8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE73AFF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734505370.10677.7139148479490129566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16807d0a1e3ff5ffd6e9a33499c4331d8ef9a2d7b0efae1375a5812c39402eb
Date: Tue, 28 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777345053
