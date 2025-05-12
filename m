Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AD3255E2B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747079394; cv=none; b=owxnLsJE1H01xLKYeSkGTxMOz2VmLm6r101xzxb1/hjJSYLpfQRwrMpTS9BUoiFnfrYOgd8s37Mom7GDJbm6MSimBpusnyccfbbVUlAD18j2edqeSk6iWP9jM9qa18rAzsl8KkDSudmZhAHiGfcdy8fpBGaS9mbR0FmqI3RRNis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747079394; c=relaxed/simple;
	bh=kVXC705sTQJL77yToZNZAQs2zPHOaG0ikPKUHWHzI+s=;
	h=To:Subject:From:Message-Id:Date; b=AE3GawGkWmzf8YZ2qO9ieWXPSll7clc9mfP5fgiSICnVl3yYSVasE3Tl3f1mW/73tqquLlqLCnUAPF7oAzl4J/v8tF8WGvhnRnOg3coBcLnNd6QMXG5YY5j5+aCURGEOp7nmoS/uHGF64U+sdPCJ009edwkL92/3iWTBTQWBqi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emV848Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emV848Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA397C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747079393;
	bh=kVXC705sTQJL77yToZNZAQs2zPHOaG0ikPKUHWHzI+s=;
	h=To:Subject:From:Date:From;
	b=emV848Q1k7lCNmMfjIzeA9evyexgz4faZYLM/pSBsg5ZfjZymNkB/YwA9o2WCP2mU
	 cfPCQZNR7Uy4DOSimNFEhVgaBz7RFXmfth5yRU5s480ARUjH2HC656Tl5LAsSEjQeB
	 5BndxKBHzMHZSIV6iQZKRIfyvs6a03x/pMYjD/YurxeMaCbKwp5cJx6oNQnVF/mO16
	 TB/r9JlrQ++Q9hSB648/SnCNLf1XXKM0ysD3g5I3cuUJHEWND1RNJ+dhAlr/XFr+yP
	 JJjn+aFmSHwbJoB/FhBi3uzPLIJAy1TYvPef3KmYaLzgOzzBjFRBs67kGf4xfXi9aN
	 kWswRzn7KQNPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964CAC3ABCC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707939360.6766.10642094562053672498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed65e3c47065c53be5f07f58b0b44faa1c4792ae94585fb6286e7169d9fa26a6
Date: Mon, 12 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747079393
