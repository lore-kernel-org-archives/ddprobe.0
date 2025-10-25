Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A9C946C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761362994; cv=none; b=bWkefAQa0KCK6lw0XFNjvEl3k7ZOJJDW3BhlZuRUSCNZek8qD0TsmATdbo5LOG17lb7ctO1JwMfexY/f12lbwuwKLGiAv3FQXr4bnKeBeq6JVux5jqdQ6tYgionACvaQHSoAB2IqCPfr+/gVtyCpbNujOjswzEHJMqXbQMcpI+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761362994; c=relaxed/simple;
	bh=2CL7zYHOb6R5Rlph38wjFIsl+l1n7je+68nfvB2ONbQ=;
	h=To:Subject:From:Message-Id:Date; b=pCzl47hxJqpy0QM9Mxa9ALvgKHU4mSK03YBaUm/hG+BwHKtbyaK+gOFVMzed0095BwwSv0rHL/A2rIJxsDXQXsyk+y+NLlAGe6JQF2WvOmXgLDWJcUXgY0uaZ1uEElEsmSNCLQuxMvuPmgKOmCcT+DWIO6oqevaIEMN9XjG6x1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSyJW8LQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSyJW8LQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9803C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761362993;
	bh=2CL7zYHOb6R5Rlph38wjFIsl+l1n7je+68nfvB2ONbQ=;
	h=To:Subject:From:Date:From;
	b=QSyJW8LQUi9CHi4UHZ5ScdVYDTM+vwDWwGxSgMbmk4ez3Ade/HKhSOVQPdbhVQFfF
	 agF4U6izudWiu/mvNdLU1dlvCC4b0JDf3BXIPU3KfSrw6nDCbDDmWWNfldEWmF6DHe
	 PcsMPLJ9NRCv1YK1IVcqoZNhC0BtEZw6TeDUTC2Q5/rj6GOnQvlo1MGU6QKgpRzcIf
	 KKq3X1OqQ9gnieq1uL83EQ/oIxmQwxoUaH4zAITs0bJG5An+YGaxqCorMbJ1hyvImH
	 86wYRw3i57sd41gs86+ug/wd1w6UhMMeIkrozTU40gSsJ8C8uOy9jNr9czqIQcjg21
	 NHX03yeGKh4sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659ECCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136299358.6225.8627992091463347168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9731b6a53f7e492f06f689fb072dd1fa9013a8765854b61aa8a3532a788df5e
Date: Sat, 25 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761362993
