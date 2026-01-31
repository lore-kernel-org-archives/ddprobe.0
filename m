Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E5271A71
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769861034; cv=none; b=uqySzUvwPGqg2sbQp9EP2QAnVvbKWEbGGDhDO5CKMproviQ8nNJ3ulRJDXP8Ris5cBsq/OmWOc2tUlfi2KAhWo/UPnreK5vZ7tBUfIgNBFhK3FU4yXKneZlRBvmjThjYlkzqFmTrlKc+3cp/ReFHdphgb6x/hfTJUizZhtBV8QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769861034; c=relaxed/simple;
	bh=78x4M4HvhEQnRzgn0IBNoA1C5fTEM6ocjngKTSs73Pw=;
	h=To:Subject:From:Message-Id:Date; b=sF/RAhEgSOEGUckRSZbipn3cpnlkDLUU0Xo6GGg6v8NoM7MUvDm3iXk0JYeoxSLBGRrwy4XfhfaINtBFFvl5sVlIyynrS6OOhwPogRyJSYtfIAL6qf8curRH+FOl12QxvY29Tjlfsy84qWGvudaH4/80OSWOBcpgBc8uU4MDNjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af5vOsgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af5vOsgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769861033;
	bh=78x4M4HvhEQnRzgn0IBNoA1C5fTEM6ocjngKTSs73Pw=;
	h=To:Subject:From:Date:From;
	b=af5vOsgBDIsYhl0ByZUf4HBhtgzz6ukewgqPyp1RBO4GiRR6qSVjCzdAE15TnbZRU
	 Eu5jhTCYOXhg7jZTxAEfXtA9/51uJq4UAJ9Ys6v1bGx/tDw+D58RS1kh/hUk8Fvs2r
	 o8t9Zz7Oft99Nsyqerzq6DPGIBRkQE2RrYmlhxr3AbIDmxB7XxmZGxhgV+H2C6Sywx
	 DksTG+t41Ro//dZ8W5TkmcAJk36NUWLwW/Vsem/rnf7Drn4SPYCeLNR71efRVTFN9I
	 P3WfMxSKscAZlN5uRuwKpwzCYM7h3bsz37qVv5rQrQrJHIRuP53qY4zIg8qWKqFWfP
	 /ynKcq+nHyJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9587BD79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986103357.13694.16846853007186490447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f526308ab923167951d51c3461dbaa795a30d8d960fb8a8e3f4a529e8063a8
Date: Sat, 31 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769861033
