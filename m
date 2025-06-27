Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287D82F1FDF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751031594; cv=none; b=jURnxfzjgZYuOLWeGoQ121o7NfhjEswKti2GAWsEevrE06T1JlJ26C9nKtwr3xkP90pX7rATppnHLud3sGwHka1gllYwGTeH3RWIGZ2ER8J/JchEnaYVaiR152xZQKvmZycka0VZbJk6ZyzWuj6QzEnJ/qpBQdm7z/kYSksvW1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751031594; c=relaxed/simple;
	bh=J2fE00WSjqbARn3Wz0PpmOOR20uBr3O6MIpXO467vwQ=;
	h=To:Subject:From:Message-Id:Date; b=KgAJWblegX09iXQgzMYmGVMbmGdlajf4L449gjdomc6dYLUfPTUSh9gvPLfGCThSpfXtgC1+0u6TCWuHTJI8+I6Fs3AGqMa2Mnd0vpmy/OaqPzcHAU2e0DBX5x4BKc4JObv7S5Y3jTSgIevl9HQO03OOrpRl/GvHPXlLy5WG8tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEan2Jhu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEan2Jhu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D14C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751031593;
	bh=J2fE00WSjqbARn3Wz0PpmOOR20uBr3O6MIpXO467vwQ=;
	h=To:Subject:From:Date:From;
	b=HEan2Jhuve0jf8JIeWlDiM5y2B3BZ9XKtumJyQWIVN8ZFsUgw9NL9TIagEl+/PqOL
	 9pnJpfElegNghtTvcyYyfLBCYn8nMYNq0IkpFOZRyHH6h3pYeP9KvEyQfWuhcr/9Qt
	 jm2gr9iyFPUdwRSUZxcsinwLQvbKtXsGPLGXK1miIQl1sqS9Xc5iiwmpgQd3WQi/HO
	 +oCJMMsN6Qa+wXQjupiycWEvG6T8qWRvpCigjhFoeh/tABz3SexhV6H/upUjw3fts4
	 KEBoMRUyFCEE/fX++Gbe9KYPA2Md5VRBx1ZwdbCQBWMB3+WQdDtOHsv6xkUYBcV7QD
	 HFXpF3nXVUj8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94001C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103159359.21085.3775355595415303304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e011e80cb37ce7a76ff6dc8b7a03e831513cae2f80d935ab128dfa018b4b0d
Date: Fri, 27 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751031593
