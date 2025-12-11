Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBEC1A9F9B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765428774; cv=none; b=okBkOs+C5EfZX7Z6wDzk7OaadzjI4F+dnnBSnMC25vDyoMYrzBtOuH6uXmnE5h+jSG/weHl50N+BGB6toFUk/YLCZhrG9BkzhzBl48ErBWe1Y4NpXEb0e7FlSNjhe2n3Loq5POzPCt8JgdQXpq/p5xsaUnIdR4O2Q+TUygOKQPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765428774; c=relaxed/simple;
	bh=YmkHup4it0GUExEDjN1jRAPetAUL0zRLlxJwSFlrWE0=;
	h=To:Subject:From:Message-Id:Date; b=sv5fODLPQj6HV1bP+f2HqJc3lvjsw2KY1zmhOoigd5hccqAYbmrXMmWVfU47LnP3Ap/aG7mq7PQNyrmLEcSqhG2PBk/7Lu+ZXehB4jrVyIRtzaFeO4YJhAseJ94ffep3jaeXqrWG2j1GP6F+pMYnVW9eGtirc1bJt0OCC3tTaww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkflT9kO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkflT9kO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C613BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765428773;
	bh=YmkHup4it0GUExEDjN1jRAPetAUL0zRLlxJwSFlrWE0=;
	h=To:Subject:From:Date:From;
	b=jkflT9kOWwCDFLeOY/1JBdPxa6uOGtrbPlQ9bq/odqNBK1xCDOY6M56VgV0+FZpL0
	 punkoPhPUzCiyFXIHTGMY2TJgvwfKVRN0TxmPND+HY3nqVPS4ZoACcc+vou2x+ddFF
	 UCEPTHoNYWCfQBCxgzHvrSnN6yk8K4QjnPj36b5EZE16KqAZ6vixvLDiocuO/pGFoD
	 IfbLFlYClCeH74A9kUfyRVNXrZhoTjYHazVUqk8Qe+4bzVLHBMHQhYXISWEXMe3RC6
	 kfBqz5HUtNu2tX9xLshKn4FByxJMhlvOFuxT2bZzKD5ss5rsyAGur2fnDA92QjqHc1
	 gcD7kOxJFLIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD0D3E791
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542877364.6818.3129688700214316129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aea404755a1f9ef51901e245da6e4cef6dad92c98ce1063e4d41e33b9b1f15b
Date: Thu, 11 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765428773
