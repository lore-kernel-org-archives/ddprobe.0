Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EE91FF5E3
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765275773; cv=none; b=H0D5fsQHyG74htIve2PQxJ6ai0+OkPQVUy2arrCgAYCLRk4MbxFscoyCGnkgJsn3geb9FsiCECFXU8xxYpTV5H3B9OkfgiBRxuEfKkBpfCZd0K9vm+eD70fypQx7GUbs++ksomvlQ1RfGO5MgzDYTVkX1PsC6sJJ1SE0aDBrVVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765275773; c=relaxed/simple;
	bh=DE/p5eKPHM2h5PLFwk6bXR+Q2KfgUgA/dAti3jdmsrw=;
	h=To:Subject:From:Message-Id:Date; b=l1Nus8rWZqPngmxhvhhaPbzIp+ZL/2bl/2aEZh6GaJbrxPE0P74Tk4HPsto9LzLJim7UNSt047eMDvuXwewL/S+04zCbuuOWDrxjpq6S/TXmuqW4UdzEBgLVFz+214r0D3O3umdrdXezZXLZWrVjtqgXPNrBAy6bg5c9ksRxFRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Be78/WcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Be78/WcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDBEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765275773;
	bh=DE/p5eKPHM2h5PLFwk6bXR+Q2KfgUgA/dAti3jdmsrw=;
	h=To:Subject:From:Date:From;
	b=Be78/WcMJa/pJ1/ZSLYiJMBgnB8gSeuoNzeka2fkGfTSFwmo3AMyC2lYyHtef3GDG
	 huqbDIpOppFCZT71+QfgPWwJlk84D6zgRVQZBOTzUdmdXO4/esbLCYcL2++IV2hpCC
	 Mp9b/VTCseCuTVNGtB4MWGov0v/1Dhls3uYDUUOsDtlKLmk174Apwe8fKfKTBLiWJX
	 Ta+QPV8P+wV0I57aHjEEiwKF+YU76T3drCnnkZbP2QO/cF5lqPx5aYVt9mbT2NItb9
	 G6Lo1jkgKWQrl+2oOjgrIHqSafJu0lzAokgAw4qZm0KioYGqfpSFqVwtRQhjc27Jv6
	 snmtfxF0T32og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90390D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527577358.4592.13805104487482929834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410aacb98d932537fff57add788485d9cc3d386cd8925265c3e6bfae92065a21
Date: Tue, 09 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765275773
