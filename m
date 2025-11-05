Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED7823EABD
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762338594; cv=none; b=MobBwgaWfSUFCqAXbl7Bywn+EMVxCGxkSHha+f1jg5DnvP+heDl5WZ0jQTuPmCGlco4Eb6yX4YXqrhkLOpH/NKlSovUi/aeEPRA5hgpNCSQoddqb6pVmuPD7OxQMaglVvkpp+Z9ZHwcjWRWsUNl0u/IE0Dab6yghg69qjewh0nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762338594; c=relaxed/simple;
	bh=OFNsSyzejB8oXmV9zbY0B889dBB3qt7dRn9eNFwO9ZQ=;
	h=To:Subject:From:Message-Id:Date; b=n5RlTNfHGmP8/GEC7PTMr4+Xi9ms52x72lRW1d3+Tztk+1XW5p6u893ieSOzJh9lpcopQjqYJl7iaXyDStk2D6y7/O4Zz4Gqylo2hHKmRht9in1e9whzpduzrkaVywadwWEAAIhx/Zh+yi9HzFIJ/WDMg4kK9NG5Tk4ly+dMNTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7v2EWP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7v2EWP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4988C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762338593;
	bh=OFNsSyzejB8oXmV9zbY0B889dBB3qt7dRn9eNFwO9ZQ=;
	h=To:Subject:From:Date:From;
	b=e7v2EWP5QXHiCevxyjSmuxJflVSgHu5in9CVmVByXiJB91Qc4s5WCRCx5qOY2HD3z
	 GRtuj52ZUwNyJTxEQlmPR0jpUsGgXL9V7vqWGD/DNggvAG9D2ICCosmavl7vkOplO9
	 avmulxsWIPZqWJG5w0EGYKdIK0LbbTtQMRdvwyx8Wsu9aANZVzGYPjmXv8u1vDtqoE
	 7n6dvNAg6O09DuQWnhaEfehl1UTdWr4JLeUt+rITsYSqK5IbQeosxMt+diD58ZhUjP
	 szNbtECC12pvRwRWvRUFwwsIE5fwkGyrR85Ur9ctGMgxAbPEBHupoRHX6mppAmQNJi
	 0B2ONZPdce55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95426CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233859360.11438.11415710884382604502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe3792ddd29f7a23ac226591e148d099edcc34ff1918da68ddd5e6d5b11d61c
Date: Wed, 05 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762338593
