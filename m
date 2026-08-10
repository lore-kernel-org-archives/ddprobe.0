Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D440145B3F
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786321234; cv=none; b=eMrh2UowmG9QnJr7JtfNnEvr/agnr6EVv9FXdCRzVGUPADrxfixSsqk8ESJgCbIzYuErj8eHkjNT9Z6grt3ArZ0/a0uydfE4BBcOuXsAvstihhfA+ytsyleIiBX9Wv6pZuSdL2pztCyAz2Mu/Dl9LP0TOFUvQK4MsrYoN/0YGu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786321234; c=relaxed/simple;
	bh=TqplSxeOea4Hd9/X2T97rHF+QivXKIN2kH7zFEbr+rM=;
	h=To:Subject:From:Message-Id:Date; b=IUvHS4G4+d/62uAX4IAAqCwXah8+oHUG4QDrWK2fxy/5qgK4EUg8J53qc1JiyzCAAbF7k7W/p1UY9ouN/FfHE2Bs1iMZK9CQwID8XNcggPEubJly02hpcqakq/b3Or7Jr0T2QOZKo5Up2uo7oJ79KcnLOn9xpgxY1NfHBCK1fRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUQ+YTwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUQ+YTwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE185C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786321233;
	bh=TqplSxeOea4Hd9/X2T97rHF+QivXKIN2kH7zFEbr+rM=;
	h=To:Subject:From:Date:From;
	b=aUQ+YTwBkrRXJbp0T0xxJ9g32lMLAM6RBZBwkWN9rzbLHq4/gAR4oLjsA4M+pY9ce
	 CZdHsMW3GEaqe6xmdyqYE37gBxk3v8XcauoBv80SAcg4ADKwLmUpie8vxZi88Mj7fv
	 sZpH1SSPM843F96xeHPdozFxwDfS9HkwEbr0LkheFBOHXqTMBK8czyrL3a81NFcvr2
	 uCX177qOUNpIDZu/6DWMjYVGuyQ5xMhUJWE5sfSX3ahg1oePzg0Vphi+3BdwPf6PGy
	 k/v1QStDdWLgjcHPWky/flUzyhaw8a4CAQA4r12l7iakxb7CTgrNWy9AO4pnGnM6Xt
	 opSzyZlB6gVkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3F0C5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632123370.32426.5555546468069908596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10b40e889a17ac68ea06a2d3e2d0991db23bd7fe8a020bd2258a864ba1e7d61
Date: Mon, 10 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786321233
