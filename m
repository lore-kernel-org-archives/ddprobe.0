Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8104DD6C0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778694634; cv=none; b=gloakm4tgzt2fgeDEb4vejvYjg2/8mOOeyO8JAdqH7Z2oXsBfGl+06O2QjYuoy27l++r5RDDxw5SXQAr2niK98788CWr4i7JtEG6JPZHJnGH68nkc63FWYAJ96btr42bYSBSXSKbabv/31U0CtMQUCPQNmfnVnvXhM1q55wSSSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778694634; c=relaxed/simple;
	bh=Ac1TRln+/TQTuhXcKlntBc0sDFfAV7pV7Py+xD9a4lM=;
	h=To:Subject:From:Message-Id:Date; b=PQ2gscbnDp7D1lG5RmJ3IyC8MnPN5oXPtmODGDxEk6ZCQ3ZhihbHT9HiLqDr0LBWxaSTNWgxLNy3Z0Jw3H/kTgePTBQJY5+5VJQ0krbVUP18Gil2hnZ+YvQqgBFp+L/CjJiPWBGp1I7odKwYTEqiOEtdsWfuXsYQRVtDE0VrKa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okxovyo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okxovyo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFFAC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778694633;
	bh=Ac1TRln+/TQTuhXcKlntBc0sDFfAV7pV7Py+xD9a4lM=;
	h=To:Subject:From:Date:From;
	b=okxovyo+9OqwJlliZB8fMkQok1VUmPaeJwZLryMpo3joFd/nEV+YEjR0Ayf4AFWmj
	 EOi72EAsAmuoeoLy+v0s9/0FVL2KUq1qAg0oHzjPOKrCHn2mp9iAwMsyqyDXS7zKzn
	 vR3t8C8pu223QfdgSxI14UG6Q6SFp8WP1mArAPXthUl4YgTf+R8C8N290PcSfgNUtW
	 mjt8yo+Cts9rjQVafAd+eI5ZGxix0vfzlRkfojnriDpMlVHqfX7/gIWMbCXKpRPlHx
	 a/+NMN5BBvF+1LLZwC49WswkaKoPF24+soLD2tyKNP4cQ6gckcHdsowfCLb3YjSZO0
	 twr1FT7S7KMcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB11CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869463368.23513.3104725464756274856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a67e5c8711a06c7c2e6f06a45e2d2e4f0ff5facb9b59fd979067aedb7ce109
Date: Wed, 13 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778694633
