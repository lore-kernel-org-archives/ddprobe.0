Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6656E8F58
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720769843; cv=none; b=e1Jqe5SDF98wURHzF6B5i/Hq16Y8dU7mM9fDjTU6XoKtzp6qdSbgWb5MH+C541SK5VKHc5HKrckqV1/0BD+md6oWq0vOTss8cqBWT2yii6NjnxOzNXk9RJU0KAxnsNjzWxZCLCnJ32W1BAAMB/rT9XW054PwapnLUZy7S7P3mks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720769843; c=relaxed/simple;
	bh=loK7APFnXsOADTHCDZVjNd9wIUJU772tIxKJDJz3R/4=;
	h=To:Subject:From:Message-Id:Date; b=TtGYgH4GG/sfnDtxEqdQdkWMa6clnrkxuznqP4AYqVBFOLoISMnohS1RPlhRDEBiP3qdtWNgJlPJ8Q2yN0n/JqC1Lwx1d99e11schrKSd1C9G2JmyCQSDxyToemL5TS1IJiDCwWFV8yKAI1QUqA9Y8VfqRVCX8+F8IVsZ2t8kp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6yySM7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6yySM7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2A6C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720769842;
	bh=loK7APFnXsOADTHCDZVjNd9wIUJU772tIxKJDJz3R/4=;
	h=To:Subject:From:Date:From;
	b=i6yySM7kuQN17BkdN9aV0gPpDSkJ80dmL/K+x81nzHXXc42ftsq4jiaLbuTUcw3qP
	 v38gOIRE57BUnIX8KxYrDJLZ5O19j6QVjkpD4nqtpZO5w9DR5MWPJ3j2HkEACw99A9
	 vY3woYxI9s0p0m5WqeubMWQ1rJSX79yKUwv1YISB8ctDAd5rFSbCJdG72LCaGSdz+S
	 ITvtPkrTCzymRzryvwt/9JLqbUkyuvrdOr6QwUVAs4Z4DU+qXiqmvbAbj009NfJ3jA
	 xLxRw2PEycm3XtEUAsCEIQqKZ7+qlMe/FAGZtpX39OuToJz6neXJx7mPNuAn7524wx
	 KS3b7vqhXGoZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CC0C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076984279.15027.2828109797994343245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a302d007c42bc4c64047702a41e36e5906487563dce1337aabf9221776bec37
Date: Fri, 12 Jul 2024 07:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720769842
