Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176A73770B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767935034; cv=none; b=kK7eIns04T+7yN9ZmkCVe2L9dJh1+XjPD/20K69KGXPOgDCj3lwZYIBbLH3vgyWiOOXmhmpBLziKHCA7YoIV+hACubmhi8/tfEeh9awYEvSLHgbfFFVFT36DwoF+zitIhfAJviFmf9ASyuIkEJv9u5oZhYgy6ORAHeBkfZsEFG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767935034; c=relaxed/simple;
	bh=a4u7bfFkkoOep0mR+7bvqLL656Ydjzr0TkZ/xrOeQNU=;
	h=To:Subject:From:Message-Id:Date; b=DrRqC8gZImsXhq2KUMKagU2+nJNdWj9Ab+GxPK5Gl6BJ5jUxT5jhFmKdCYUtJb2bAz9dYgNvRitKKj09MWI0BJK47kVBz/4hxA+eT8XxPFnkDhDSW6zwGYAqRizluaOR1kktYf43DsXMDCCQlCdvp2b4IlJ21JB1mxp1IUF/XLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJsxoxXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJsxoxXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2751C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767935033;
	bh=a4u7bfFkkoOep0mR+7bvqLL656Ydjzr0TkZ/xrOeQNU=;
	h=To:Subject:From:Date:From;
	b=GJsxoxXx5pXPmoMm7WDOuCLEHb86GlWYuHhc/7F7TvBGoD438DLMQ+jOSep2f3Iy3
	 eQmZlYxh8wNU2wsTMv3AiSOxmrATBF9M9T1hTpvwPbKb5iQwjfOdi4T8T5ar1RZ9Pp
	 G9vvoBsvgc5qAGEAa8UFvp0ABwFMt+l6dbVunYS6kFacmNPfv0tgkzwovFFnAa5xrN
	 aulKZpKYAWsrYqqZxI/+yz24ujZHRkJD2rLfPsYSXiHilPSmqcMpv+5qC5JgHLmjgI
	 KS0A6RAYNradtE1b1qFH/l/5sdTSVF21wFga4Sh/LHQMvKCO2IcbaRl3yiafGeYlRc
	 uYeJ3bpULmZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E64BD232C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793503357.22942.16061839083957550788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b46cb2f443598361e9c8b3169a5357c7bbe2cff191c969dceefd64adf0f3e3
Date: Fri, 09 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767935033
