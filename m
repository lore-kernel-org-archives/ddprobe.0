Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B9C1A23BD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744667994; cv=none; b=Jt9/VHTHaQlqDelGjNEt25xSvlANoJFb+qER36iiJhM9JRs9QAQvrTbwNgt/LhorIFLsgNPhnhX94E70psIPfqgFyiWoZR5oCbj2HcJ+654xdAs3odPjDe+y0oENqQJbp1KND83ZJ8vyWSZPU49WukRnxGRxMcplMlwCG2EBCSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744667994; c=relaxed/simple;
	bh=wgrnAaWKcezuqqSk7Zt+pLKrXjLMl5EvwgJbAL8Cs0U=;
	h=To:Subject:From:Message-Id:Date; b=e46NzATlh+DM8aboIXzVmS95vAWavrZqOgvEsyMviStOmV3vVj04AaMSn9WO308oxrKAC1ba57are+43zSmbm/EyOLNBtKTn0inxFpx8odnFieQziLe6A3ikToAhjMRWSnKbNMvXsS+Uw6os+y43hlDVfD0at+ttPM6AqLvMuwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqCVqlvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqCVqlvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF737C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744667993;
	bh=wgrnAaWKcezuqqSk7Zt+pLKrXjLMl5EvwgJbAL8Cs0U=;
	h=To:Subject:From:Date:From;
	b=tqCVqlvTy9JQFwQxUOwApEhVhgYLpSkks/2r1agMvMV9iYo8WpUpKyoAVA4qTWBht
	 0/B1pUf72Sf2b5LawwFbWp7LsZRMXaWQE1z9dih9M+/2gRIFlOzqM9B3jrJlnKQlDq
	 X5hqikZ6n+HsBhUFnCA/fwppbrC3F0nwHYLVuFJ05LfHI2fEyRwjt/slz8e8H9CFCI
	 AKfbLJ2JqpNbH+3vEtx+fqm9dOOPhwMbUmsbX6NdKBNBddkYXpdhBeD3ZFQmLeIp3y
	 nugUSeWnBPDqayucedIuv22NoHOf96PA6Ln6nkGqDUQcKhDfmj2r7uHsr3sSQyJInV
	 Alo3TZsvOBtkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D954C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466799363.6932.14995818588241103973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634a40fff238c767090bd3caf1c9c580bc4061de0571a3dfa0a7d847d2a4e8cc
Date: Mon, 14 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744667993
