Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159618466
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706836697; cv=none; b=VSj0kku0cbzkXdfssLWQLULFQ4rKxcK4BT1ARpmFmIEP0TmfSUXmGlLTRL3thyHs1k/rwDvvoGjbwO+MW4g7OfLMyP4oTz6S1Ytk/5CY/ZN+DnNZpKh3Po015lxVs24wHuTKAHgDYUY6degvyGA551hXy8d3/0YTZiZ0Uk/VW5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706836697; c=relaxed/simple;
	bh=swXcqy6uZ7+0Ig7bFMwX2AttL7aIAsbR9t5TjCrw83g=;
	h=To:Subject:From:Message-Id:Date; b=W3qedthU3wxx78UwufME6WhzoiYx3cQAkSiaelMC5VDiPGKx4IUKuxtUcG9AAzIURMAMVo8zrZqL4ZK15ixA0ilrU8ZEF9nm7SOO4ULSiRRsRtEmoARFENtYOZH7207SOyV4upd23mwSP7oBQwxB0lScov/SuRXtOfLEyH3IF50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7KPrP71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7KPrP71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E67AC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706836696;
	bh=swXcqy6uZ7+0Ig7bFMwX2AttL7aIAsbR9t5TjCrw83g=;
	h=To:Subject:From:Date:From;
	b=L7KPrP71kXxZvdFIaKISMbVGOlKXzDGfJ3kGxD0xp+vYeGq4BI2myh4GLITHM8oaB
	 SUpkD7Zs5xSbR6ftZh6SscpRPaf3WWdUUtkzDEmzRiwtPPvb/IadyTm16CoarvJp6I
	 1wVTTbwoUw/m0oqwAhqcrCJer1Q2P5AobEBt9pSF9qDXSYFFANYPP79AA+hbbDgjwT
	 bQf/jbrFpUdJanFqzU9Dt7BWhR12QjgLKnWAGVGl0ek9Ln2G8pHuKtEZbE+5pvpOG7
	 +5Z3Y7D+hTeQzo9Pt8lXqE6BofUH76gWk22cOiVl7cU7EOoOXrz1kHHQc3mJDzqdcf
	 Z79oJji2EDG7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9E6C48286
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170683669636.25133.3422741367237134094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ea4c8a7cebde7cc58b41e6d3f181308d7d42e0d9cbba5ff7c3e57ea8c68717
Date: Fri, 02 Feb 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706836696
