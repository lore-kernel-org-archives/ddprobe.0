Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D4532ED59
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764882774; cv=none; b=faCw+DejBu8G49tZMfmYXuOfv0ZO5K/rRJosiPZPtCyre7LudCAiuBMsBTcK4paE352X2P1xUJ6rqeYCMSjqFv/YA2oflaA5ErtsNLsfdi7GozXWs5/xly4iZF4G4ZSDA6mJSIEBcUadustuxeL2bYDiFYPTEa4VKPo1Ng/ywsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764882774; c=relaxed/simple;
	bh=Eypj7e9oMRuKhTN2UBz8jeQN0WdxaMlNxMVcsBk/Gdw=;
	h=To:Subject:From:Message-Id:Date; b=rCRQDk4ju5UbojUp6LNA1qQoKo4MRD2HDvD7fyliPoXXtXyA8zfh1wcDYgEO/3v6L/7FsVitFNyoT2wNPiWcV1k6BLTsuZB/EwZp3o45mt1U2WvF4GdB/mEVFaienFNTJTX2A/FGRkRpUoPN1W+Gl8r5r+wXw7yQWPtah4fhTfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZfICufx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZfICufx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FFC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764882773;
	bh=Eypj7e9oMRuKhTN2UBz8jeQN0WdxaMlNxMVcsBk/Gdw=;
	h=To:Subject:From:Date:From;
	b=fZfICufx9mfi4OyjeigpEtdJ3pKlHRhb06+OhTCSd2ifD8mzqwZbQ0kbUyY7780Wg
	 y47YScEuI/n7dSWM0aSSrBQP3MlpbRX3XQ6xWkuCTfW4J4Gq8nrmdNqyrEZm2uAjPU
	 MBy+eLC9q93b1Qvl7MLjTwKXOGh4PBmbjZdCo9J8ifiqVdb/zucylpMdoNVh7sdFgU
	 lp40XcN/iVL7tM2FQ/eyqlGkBFg4mBXpT0idlFazFwdGj5/Jl8YPyHNF3LbfmjJIFg
	 sSpgR0iVsZ7oix5C45MzvFkyFn/vMhgIE9jv+Qc5+rGZ9iEjTjk3/PARyOXFyFOC2Q
	 hMjTSMBAm9JlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92326D21680
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488277359.7451.10200676659321908627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87f58ad2794df4439a97a8f0e5b99861bc57ec81255b744aaa3b1851dff1653
Date: Thu, 04 Dec 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764882773
