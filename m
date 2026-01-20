Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8F03E9F6E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768917234; cv=none; b=SuIur5Q9BPIuAa6Ble/dUjMRJgxHXZb3RNorWPMI/+pN23wxizObUg+sP4bNXOijrdnBPJ28+Or1RsQjrb9xgpOhywTzBaPHtDCy6W/i7YEBvbZo1EX9UcobAxIPtoDa06R5WlBRhblf1bt1oK/ACWaU2Xge39Z0Fv+w8ttgSbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768917234; c=relaxed/simple;
	bh=yFImYpZAQqGjBYCoSacor5eGi9E7YbR/L+ETqTm/CtM=;
	h=To:Subject:From:Message-Id:Date; b=aTBS1KJ1dS5naAMxeRcIM81XxEZmLp6IH0huwCDUF6w34vBfr9VHYDWWmTVgnfDb5vlzkgr06cqUl3xsPnJS625CTWTxKqTIiPoZZ4IzLdjjhwdlZ+o7WhpdgeqtPrFCPEzHb7HP5tH5Ob7VW5TnAycJwtnDL5ni8rYtmxOg3ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXyJ1smL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXyJ1smL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A221DC19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768917233;
	bh=yFImYpZAQqGjBYCoSacor5eGi9E7YbR/L+ETqTm/CtM=;
	h=To:Subject:From:Date:From;
	b=gXyJ1smLmNQkJ9YJfiP0VP8c/SMx0IUd3y3CwxtbPgLzNzVutQXWDiapu6A8zGRkQ
	 Qjbx9PEFOa1X3F8gtttpoFW0Yv4SRdZ41bKP7LFZA4k3/MCE4zoer6X9CHge0x+uVZ
	 D3kolKnZL+dW0NrNrC6I5o6kAPij0eefizF1n0cwKknxsnv5z9S+8P9sIzWthKBFCT
	 aSWtpdapqJZunyhzvt+WNSDS2E4J8cYpsmpTh8VVFO6Mt4yVctBfQcZ1eyvODKIort
	 mDGPHYWQ7Gn+ZwoscDzcM264cFap2/pq97ZyyKJRD4GEBhrphbFXeSnqGszbOX+FqT
	 vzOl9xp0R3Zxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CADD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891723359.24180.134253011019989134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b280ca026a9d6827ea589fce56414121be582afbcb6b8bbe62db806720a4f7ea
Date: Tue, 20 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768917233
