Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219111F948
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755950994; cv=none; b=mDCkpJtKH7P+L3zRO4ZEmu0VunMtgDwS/7HlFdkryYMIyh8c60vzGuZgY/t/igv/ejW2ed44lrjpbIoNQqxHEbeGUQWe+/gFRS9wBoSFqRDSJz5dDZrEX/WcVfXTTTf0Lf6FQ4kAv4b1s1pcJdc5W9MUVR2tactpQf1qCd9RLYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755950994; c=relaxed/simple;
	bh=y35ZqiOgNHOfPEyVUyyH6RxWB9P99Wo/qiNPCjQhKss=;
	h=To:Subject:From:Message-Id:Date; b=BX6X2Aa72on23/hhCAaz3BPly2lzcHSEtXfT8L2lBxsmH6nTVcUZ+yHaPg/f7sqAFc7CUlmTTUx32lC3mexvYF7h4981T0tYblfFE1RKpvFvNi80HDYbVSncecey5LgfyHe9nQspEsELXePLCwMnNaqGnVAVYwb7ts8igIYgF9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCjW5NwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCjW5NwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F403C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755950993;
	bh=y35ZqiOgNHOfPEyVUyyH6RxWB9P99Wo/qiNPCjQhKss=;
	h=To:Subject:From:Date:From;
	b=pCjW5NwJJNNptccr9kEx7NCkIH4ihwTTlBBKX0GQhVMn/Eu/3eObpyZQxgQvOPcIH
	 6AUn/3DbnIz6GQImG0imEPgcWTP1m38UBkNoRee+8alesi3x+VAApZD8L++dFFAJrM
	 FCFAf4dyoB4nXzNv6sFuogzZt6a4iLTDf9N+wZlZEKfCtEfRvWJTlULqORNpYRgRGF
	 WUOBkTbapFXiqtqqp7otOsqBSSQuJmWld2moRiuUhMEoNF4qRjN4UYBJayyIT+Y98f
	 E6TR03UeBRP70HU77G0vjR0YFEc/LIxJueFb2v77Fpz6Ce/IO+OHwoGi/6RCCfWMkP
	 hGW4QyMTXgfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E544CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595099357.12640.10172175259248765688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4868e8d0b25cfc9fe6b3b70b0a714785d7114fde7fbbc05d6c40612e248e02
Date: Sat, 23 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755950993
