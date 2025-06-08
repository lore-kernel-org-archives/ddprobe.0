Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302B21F0992
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749393595; cv=none; b=QK9M6xJSYDMb1x5Agrf5CR3kON82uvxwYKOQxyOvsPFF2InZQ8hjl+bmyCOsKhZzqwKOB4BPnmsLB2cW7JXsi9HDYzhQNneTjkJlWPx/JEIBNM91hOtt4f9RxgvWfmyU8+tgo1DL+FnvhEwz6ng9yGJoexQWOMzmyVspsgZQ+qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749393595; c=relaxed/simple;
	bh=0rr6tf9bVWJHG+wCFaWcI9Qqtl6CPL9f3hYVK8FDgUU=;
	h=To:Subject:From:Message-Id:Date; b=IJhI9Sj18+0Y2uiQbbE3m7UkuLiFiX0Fex2R8ldoCoM8bmC5gvrGLwsxTudn/TQoZurjs37EvfiqPisnSU/pDAqudWbsD6PlQtVtksOiLPF534K0tIxCEfICQ5DkFkIOU8yRU0f6BgsFVZDewv4VPQvgX030T4DeG3Bvag91jOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0WfotCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0WfotCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E9C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749393593;
	bh=0rr6tf9bVWJHG+wCFaWcI9Qqtl6CPL9f3hYVK8FDgUU=;
	h=To:Subject:From:Date:From;
	b=X0WfotCPptS/cYLAYoJariQ9EwPTpWsW9sXMAr+jVFyJb5zaHpjxd2LcrAkXgUmaq
	 qMiW2FgeSi4hG8qMvZDlkzp4pPrB0u3b51ksvRN+OdcxTv/vhwQ1oA5kw1MLCWqSaA
	 72Nh4uE6pBxNpU78c71QKlClr7kSAuKSSYByNed1y8YGLT1C1cmSNpaBF2Eh3+rN4c
	 beBaGeUido3IsJvR2HEDChTgEq2rzFPAWUR2cYxkF9pJKRr4bdAd8VOGxRvi8rISYv
	 GqKmqCCL/sOF6GA9Db4NPBWzCYZNhEBNAoFMBF+M4YSFPYP2WhClLxLMsrS5A65AOs
	 +ovZgP7Hrj44g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA0EC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939359357.2891.15787441492113629902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccd3180a8039f8d7d3ae6d02f28ef489556dbded5faf6ee6ddd8fade346a3db
Date: Sun, 08 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749393593
