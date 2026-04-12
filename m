Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF80311597
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776002854; cv=none; b=Uzqejm6bvtca9vexmv93YGgnPnoD8jFBCop44iH5XWi7UTydloVkUPGKfnBXeWOuYX9qQ/nSy/FvFI7UcRuQ7djIKGxZN/C2/WVtBCegfHd7JNXPvX8A7rsY2X3DcRsJ/2ZR/arkiQXNX29u1Sb9gt0q3P/yaGr4E1LNX0XJA0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776002854; c=relaxed/simple;
	bh=BCELttJ1FXlNp1bRlGCBo1ByU71K+skvUJmNk34/9Vg=;
	h=To:Subject:From:Message-Id:Date; b=uos/zL/p0wKoblxWAi4xwzwu6Nhjr0x3YQZhnHBvqWTEJpRM5+iPNjbjU92eoSTmnOkhPyEf2YIzwjHfZFdLIRyj1Oa5i5kJCftemnEX+pmzkm3N67o8R3ymYuQZNAgvHvXNvZOXO5nkrHWUyg8A8IQa+QvuHRfiE46KBWyPZ9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmRVRexE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmRVRexE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E448EC2BCB5
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776002853;
	bh=BCELttJ1FXlNp1bRlGCBo1ByU71K+skvUJmNk34/9Vg=;
	h=To:Subject:From:Date:From;
	b=BmRVRexEIrbpyUTHE4H5sET6APnY5rlSS8BEMajQbRYKltqZNfPTmhAF4p+7qH0rd
	 Sug8DSleeV/nVz4zHZQYGQMDZRHiICL6uvR5uv8Bxkxa7qYVsUQsyl7zBo91FYOC22
	 ElWoTgIlfqHrhY2SKh52oGZIWkP/5mqwF0CutvBhbGQzf5ZKoW2Ze/ZstHCmwDcUJJ
	 fykrdyTb2yQYpOeaGgdT1iAbeYlFFMG05I1votB3VsBiGlbU76PQXEHwxw2xIXGYNz
	 NrF72XfYEJpm9rhuPKEdgkM24JdZorhlHGO7heVQHTRzhDtikB0SyFMgzMtDJ/3dMV
	 wLLTILpwpPvrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC323E937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600285368.18577.6392629240753089975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c273ed376235644828b703be46ffc876722029bf8311d4fd803e95f59ead0ab4
Date: Sun, 12 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776002853
