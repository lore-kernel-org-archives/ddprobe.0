Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3947D7081A
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743663594; cv=none; b=bpwJWE5q3veaPNC+dNB3+wVhhNoFvfcVsUViQk52o+2tdZ0pNXN3LbmH+ZPl2MaeqRkKJuFrQiQ7caQDStJBIxCd/P1nKD0127klETsUn9k+GKoeZN6jRY0ZtnUqSXJsvWBw6aP6mJ4bgIxoKJT6LRqPhDoXc8dzIHlC+NBGogA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743663594; c=relaxed/simple;
	bh=iAj6jn6oSWi+Kv7xpN+Cxgw5OJ7Smsd7/kIuGdyPAzU=;
	h=To:Subject:From:Message-Id:Date; b=BUOVu/bnAgyH3VstzZHxyzk9wtY01cNhg+A+zc1SbmTtfeTyOKbYNrfnl67RSbVRhhA+zehY6HgiFvadfZ/2e7MtsFnfRv2Jj7n/HHa+VkqmIbToIPkIep4JD72KlDrErxrf6qL+7sGQS/IxxB/JnXvJ1wbdrkPNWjCvkFuL5sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQveCjMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQveCjMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443DC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743663593;
	bh=iAj6jn6oSWi+Kv7xpN+Cxgw5OJ7Smsd7/kIuGdyPAzU=;
	h=To:Subject:From:Date:From;
	b=iQveCjMX1gMlhkigwoARkTRAQgTUNwHpvV0bopbTaSRuFpLPtBU81omayfCmc/cg0
	 D6BjgvSElReQJR1IZpceC2N4jgsHF76DI6FYa06X3iSKhfkWxTGLZDogrwrw2XcV9q
	 UuE4jnwNO08o+9ZCecm5/mFfN1tituGlJUywVsCjyFqPP6YNkAc9sagt8JCY1u7MDp
	 cRgi4QximxFBJcjaleNaJ//FYq8nzr3TDI675xAhoCD8yu/g4CPA4MviXSBAAhhfoQ
	 65iWz7TimpRvQGJMsGuYewz7dHkzvax+p0fsQDfwyu+qHzxpZSe5eY1jQr8keVvzRh
	 EBMyEG5AgnwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E1C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366359358.16188.9500752654131588291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf894f90d646ca496e0d096663bcbf7ff52e5dfe349118225ef9cacbe3750c74
Date: Thu, 03 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743663593
