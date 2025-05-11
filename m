Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4876F847B
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746928195; cv=none; b=XakU8wpZNmF1wVdShbC+j+4Qm91EKXiNQFVMXIy7ylVa56mNcb0h8WCtt8sMzcgxfUfiv9wIgSjjvDGyOOjJ5hRB944qiYAWmeRwqLxehFYiNDaxo6IMWK97jmmlxfgOz5wDGf3ilT2n9TaTtuF5LLT37+tiPNfkgGuQBT/xLI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746928195; c=relaxed/simple;
	bh=2UXoP0OyNuyfvLGiZOl2wT8mcED7zziRTmKeJyKv7kA=;
	h=To:Subject:From:Message-Id:Date; b=fxV44nZ5F+cTca/omsnR3jeDMenv1mibQQ7UyjN239wYbPnCHIMcx8KuAiNr2QyN6/P++QTLXfxV93xVfYFm3pz9CGscSDBTrHhkx2slOxjVEmXhHWGw8ZB/+LD0gvGkwgzRF4PC2AiUUMFISrTwtAdj+jS+7G/bJMOKwzB+hZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz3zB9Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz3zB9Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A7C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746928193;
	bh=2UXoP0OyNuyfvLGiZOl2wT8mcED7zziRTmKeJyKv7kA=;
	h=To:Subject:From:Date:From;
	b=gz3zB9VlvsrplwWPsWp+9qdeAz2zt44ny2AGQyOY35ncHnHr/EASjdjt45FbSivIn
	 NvVT0pjUR9D1ZLFLQjWjqydZcgAG+LetYVJrMQ8dgntq4NBR82uP8Q5uVzy+pCJiZP
	 +tnlSJ0C2QMrxi7W+8Msn6SVKmatgXlbvD8ObMQ1Lhyyl2EwAYrztwvCyfbrIQbvYz
	 Jw7t4iVe1KZkd+FpWQKMTpXZgnU01CCBcR5Am7j2l437IWcBQsQk/Pe0S8XBcX/bQt
	 GlkKtmXDMNjBrVOJyA2ugj9U8Mx/FVhYNVSLAuOOOBRjNdSfCuhvjaNvwaxP8DmCTu
	 qYDOlGrZFHvTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479BC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692819358.26494.16913947605234049749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454329b266e76bd94fea6e01133ce7a4c7f1a5aed8c1caaf09ddcd163ecee96c
Date: Sun, 11 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746928193
