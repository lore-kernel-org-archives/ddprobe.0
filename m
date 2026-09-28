Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683C53B388C
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790623234; cv=none; b=Xkee4tbARpYfvEbfIiUn66iIvNES74PEj1hqiasKagCmsnK49ZGPi4lFC6VziwD4Rl9WzYHh/Rk9AWhd247m9NLXWOeQxLcOMCK7ZoI5Sx+FshlfNIEkoFlS62ul9X/2T1sHUkSKAwVwGumZMT2dWBXDCb3vTXC4K2NU4DpWuis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790623234; c=relaxed/simple;
	bh=9rBu1ZP1xBZRVj5PV9vRWErQgF2B2yvogOArZLoplIs=;
	h=To:Subject:From:Message-Id:Date; b=ilE8DFSRsyHT/3SC2dIQmNTe8PlIfwMRnhEGiI6nN0KlM4WbYeFe7YGfhtvkrxJQpJKxFfJxMYnlrTzXW3qvwXVghgUps99Y4lJ7DAJ8FtS/ZlW6KKyPfvwtusmddElJpyAIlPG1H34y48Ct7q6EWQr5LmnaFZveABXuWFiMOzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzmMz7Jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzmMz7Jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD194C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790623233;
	bh=9rBu1ZP1xBZRVj5PV9vRWErQgF2B2yvogOArZLoplIs=;
	h=To:Subject:From:Date:From;
	b=LzmMz7Jj4QmHsDyQjRjB3zN9u81HjaLjtm6F32cycSbKXa6YuQZtYngRwxOO2B/r+
	 UXD5IszXYNgWz3xcxyfQJ75wnoWG/bYoZaCY3a86D8G7mgwR3M4IJkrYySAbltmOE1
	 K/usCWqJDDJNLf8VSmwK49U2sPgHe5+AkUntQvO1Vc+AkR0ccFHRYNNT0AzMdhXjzo
	 hAg9zuD6LeZ+LQVrt/bvuTOgyr7NNYPxz4/gW7AP4pYF4csP2Y3SzOzR1Sp6xODCjb
	 VjYtgRFD7PlDh/p0Em9+XM9ywTOl+bPzD4V2FTUkTRy6ktxTeVRo2yfC4TgxfWtBgW
	 BlH7HOKsm+2EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58DCA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062323369.4557.167743193315080109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5b22ec495dacca538a7949cb78a4516c139a023b4e07a6058b4cbd8bcfa2b8
Date: Mon, 28 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790623233
