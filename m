Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4599F386
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721954754; cv=none; b=cMqYKe4/NfBlLLkPpqf7gZFr+w5zR5dpbAjNW0dwfKgr43GZsRH5dDsMbQHKCVFl87Xly/pShgC+9yAsL3HedHuDJOwW1uvWAEuYWfhBcqGVVvcdFtf3esojXg39NGR1msh7q+HRN1fhTRl5+bfVzFR5rJI3x2/X+msi8JQQskY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721954754; c=relaxed/simple;
	bh=gemrYoPcYZzn0otnitv9Z5xXh73p/qnMvSJMHygkBGY=;
	h=To:Subject:From:Message-Id:Date; b=rHA06Y3u0GSBerePs/jDPxc1qK1toJDeKUj8Adq33HBQqEvHAuz7v+9DnLJ1nSXUrGIiWBxFzM3AU/IiDBew+MpyOIpI21Hn0tuOdQG/hDtU90Nuw9t/ucgd1oZc0weYOGaCR4jFYYf/SMjXncfgHQUGSFPv26LGubw0G5bjgiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lX8CXdYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lX8CXdYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB084C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721954753;
	bh=gemrYoPcYZzn0otnitv9Z5xXh73p/qnMvSJMHygkBGY=;
	h=To:Subject:From:Date:From;
	b=lX8CXdYWPbbUdTAnOj0MO1F/1MgZZ4FFGqII4mbEPcBM6c0+kxfObehmP67MvYKTv
	 3/sWLrlMaBZHyoJ9mU1v9pmdbnnDH2T5rXw11CdsZQ0lTDoxgcsO5bEmL+2zMuptNS
	 XkWZ2YfKDj7UytPOJwWgqtdM4Wf7Ba42N/XzZENjZorTA++8IPY87wrSPTCCTUg0fE
	 rbMBshPsWIGko81NmE+qSKv4pVtxMLLe+hKtV2s0BrC3ke46tyCedzGllm+bckWeu/
	 ENGoeqRgOeYGBHCoPtWIiOAazh0C1jIAK0FTzfGF7M+3c8Vfutyd80c6TGyHWSZ450
	 Y6laPHLqkXDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4403C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172195475365.10735.16597700733666624341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901f529fd7b4fb734a3c7ecc8532836487a094d818c6d09111df974e73f6ad0f
Date: Fri, 26 Jul 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721954753
