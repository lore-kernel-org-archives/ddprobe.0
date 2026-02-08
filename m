Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3470D33FE16
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770588834; cv=none; b=uH1pO1hENiN1V/IqEkSojECeiuAAe+tpm6SPdIg5z4zx2VyqI3yfnAOFdYTNeQivS12jjVcdqZdTcP1iAbOrJ5R5T1T3XLRslNyHrVbrD6efCyvfgutAVWZJMymQ++6ka6Yq6pDz7b3iZ+gUBAiOp+Bbo6WgLD33VDZwBEkPvvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770588834; c=relaxed/simple;
	bh=wfGS7lc4BgU5PFYlTM4H08MExdcbGewRWDUd5UMhAWY=;
	h=To:Subject:From:Message-Id:Date; b=rj39pyHay79VtoDAjkFaX9byuTKtRaOyBDv8calIqpkuzkJn9Nj3ko6n0hfC1TwqwQBiu178omB+ZaSqqr404PA+8qHscwDK9OwLEkA1K0PjczZKbyQArebrzPD3ZQFo8P+Uqn6oCLSJblVwhzVXl/6wIL+LJxY7QB11cTZfYws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGznMoA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGznMoA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC3C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770588833;
	bh=wfGS7lc4BgU5PFYlTM4H08MExdcbGewRWDUd5UMhAWY=;
	h=To:Subject:From:Date:From;
	b=pGznMoA2eYVZ/hk5DB/jk9G5iStAAJC81CRf76bpDIcoNDhVN2ZOa4XwTTLZ8/Syh
	 btLT2Fix8seHBSvGErHx+U2FuNiFzlPbkeeUYRVXz9upx5Y8LXtmUq5VNDrIG6ptny
	 udTx9ZYF6SGL7LFwnYEovCW3QnWSSnncHjwuwWoMGzaBWDZE9OpkD8DTIlEq26dTXs
	 6F/O1eGCwgC70lXHXQCPgszFH0f0z36EF3GRCAdf9wc9KJvS19VeHsZWbJswPGCDco
	 fdEcIR38dGiRFAd2FzmMvb1Jvw6l3SBAhfDnNEcd61i32qyBsASG5+0ON7qrhVOJ+z
	 szaTwQEGjMbgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9637BEF06E8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058883359.27232.15818138980802411406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ea327a5125e3f5b1c2f0b1976aed3dd8984274b3b2bc5ebe54e42dc5ebdd5c
Date: Sun, 08 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770588833
