Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C177FC12
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720762643; cv=none; b=Y06WeQ6cLLkFsSC9yU7ae0WCWXso+wPUB3smjKvimBxYlRVz93jViK1nKaLJpmlatWl6naO5Sbpq8LPLlIfZRxSZkYynLTa5suNe+B5TaV1eAIu/ybTKenpKhIJuJhsNLRt3PhttOxEy6FQF7g84VzA/2Iuwg8f3FlK/ViZs/Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720762643; c=relaxed/simple;
	bh=9a8Canv8Abw6swIbgO5CFDcaBR98b7eQq2CFIL5MCGg=;
	h=To:Subject:From:Message-Id:Date; b=TLqH6OfAKFRCzL4tICAT1xULNj+oLL11Ma3Ml+rQhP8nJktM+vVcqTZB6UWnmW6ZhpCg7x6tFu5Jd5g8wRUL4RSxFH0pTqBqbEDqtmTkMqS+cqAu5AVjOceOVnGvHpIPLKA0uZ8mGQQwmmpD128aWIVS3XsIuIVNqlm9jfgAQ3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uny3YouQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uny3YouQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA52C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720762642;
	bh=9a8Canv8Abw6swIbgO5CFDcaBR98b7eQq2CFIL5MCGg=;
	h=To:Subject:From:Date:From;
	b=uny3YouQbACnYuCpfTOO12LmvguFO83isAGD0kmfax805dJcc/KpBs/kowoP/ny7E
	 wqEQR0NshAGIsi4C4FNlt361RYnGd9sy4nIWvrWvuIcgKOITOI6Iecb8hvPNLaqIj2
	 r+InCEds/JdbNXKki3A41TTJzaEU2Q2bonew0QjbZyf6hRy0Ji1b+jEjuigVDGPQ87
	 +prxaODqFILRpGFhZFungqCDLJT2NBCtMIay+cwWoG/Gbvs005Is8J3nxOO+pYiOwO
	 aQJ+M+/vKZ1rVg6i1FgN/EVvycMkl2zWYMvsp5Ax1+N8UTi58GAeD8Oy98jFXIfoEQ
	 rFmi85Q853HTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66A4C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076264280.22882.17617166548798948072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99f9cef3bfcbe511f06d478433ef6c2dec44fd74e480a9c7962cc31fcc74de7
Date: Fri, 12 Jul 2024 05:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720762642
