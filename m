Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44631DDA8
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739585334; cv=none; b=HZoDtUqd+4kUiCUjYIqhTNCaMdqoVrkmNaCwhUvwjK7RiVYqnNK/Rcgc5C0p9Ibx6pPg5/5L9R47vFITW7Bqn50yDgmznoAqimLMyvl1ysdnFbjEaNdUidqkmFzO7PSeEqXmqmedCLXmIEzRgMWuGPPa7PTNqBUsdChvGAPMGgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739585334; c=relaxed/simple;
	bh=iIxHApGmd5Pp8+DWIDCzRPaSk4Au1DmcsC+5fIKY3JM=;
	h=To:Subject:From:Message-Id:Date; b=i/l8q33RBVe1dX/nv3dU22JYhlv5mKvjo4lt/NOy2eymOkBskHMwfwo17zKUxXNQL0+nw6bF/hNf1ZETT5MSGXHRQ5SgWlVvCezoaJx4pO6IDv95s2ZtIpBPad4UKoxB5riym7I7l+3eO13iqExj21UuLyH84mJUjU4X/mQsqps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi8Y1xfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi8Y1xfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26B9C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739585333;
	bh=iIxHApGmd5Pp8+DWIDCzRPaSk4Au1DmcsC+5fIKY3JM=;
	h=To:Subject:From:Date:From;
	b=Wi8Y1xfoExW1SX+W1MpC54FIAa/Wg6csGLDQnsS/dQxADL4uccKSZOvbP47dkfv23
	 TY9SneXp7JdgT6lyp5l9RAMsIlaMcyXjzquq1KyTLxAACnvrhZKHCGE3w6V8kwDwBZ
	 Hocwe/00LZnasvSMnRpQWaI7FRlhWMPv60S2geymqFDavw0ysUn2TRY5pHahkCZyI/
	 q+odMBxoZwUK7OSyMNeTI4hTBsoN91Nw6ettRxXrsPIHJkl3v95qq6ZAY/8YXvjrbV
	 dbDfSCklbUe4o/k+goPY4U97Mm6Cc0FAR6fPnVLpgJZUUzP4ytNzrpoOBVp3Lub9Qf
	 z56mL9lO58rPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFD1C02198
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173958533362.6249.10775884772349082455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d625a97cc5fdac381b444526f1ea5749f63974f244eea4561acde19e6d3344
Date: Sat, 15 Feb 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739585333
