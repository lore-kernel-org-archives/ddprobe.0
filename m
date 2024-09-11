Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261F23D3B8
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726088154; cv=none; b=o8M38RGBCOg+eFU5do2lQEU4MLKmFY48h0pza9QsFP/E7GxPglHjsQAhikf6wSymLvPXxDB2IE6R11Vha6T2xmAlgTUP+hOV4GcIrRH/J2h7N4E28tC78XbYW9pQK5SlvP7q85YBY7LJj+3LqS85uev44KKRJ4TDWHMOaG1SwTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726088154; c=relaxed/simple;
	bh=FrLp9pFOjTgIZ42hwS46hKVhMr0SvFQhI28G2+6bg54=;
	h=To:Subject:From:Message-Id:Date; b=itE1iMRX8CuZRj1YIxfrJzBfsxdM6qOpNXby5Is/R6yNo8cknG63wcyssWJ5z9ySdbNCLGY0ZNz00Me5HgMofwvao9pSQ6Nv1ljwcoSrL4083iQ/AHA/5OciMajpmSu4N2AybsTlnD8YAT0SUTkbqlO0snF9jEZOTo5RWuQDrps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJxDjIMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJxDjIMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DAFC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726088153;
	bh=FrLp9pFOjTgIZ42hwS46hKVhMr0SvFQhI28G2+6bg54=;
	h=To:Subject:From:Date:From;
	b=dJxDjIMuOojc6MN+KQgoCSBRKDVzdimMD9QSCpT69HftII3g9CwM2B8WyhWCPtz4h
	 z5dHkrTzfgdE0h1FjmOYL7VF5Z17ydCEU/FeBXi/L8eVv7AEuU7CNk2Cb9v9MFTQf4
	 jWrstZ7N3r3IqN0cz9q7MT94YgWuLm6NkjdV+1AEqsvoJgYLvdf51OXkg79oAvlnP9
	 kCNq7VIgcd6lbG1na7GEgvuil2/wG6dB6lr6liz8hrSoMCVqy1GlNRsXphvN/fIZiw
	 gMnMuTdlhYm6XCt66oqfTOPOnrXgQf2xwodzDfYwnD8lX2ZOVTxTORw8F8ohwuR3vn
	 +hL2iFP5UiGeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C0EEE57D7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172608815359.3332.17621381497441664943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b12f89dbcd6a8e8d1ea0c242e151f0f4798a51b4df126cacafdda4f249d680a
Date: Wed, 11 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726088153
