Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DABC248881
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789415434; cv=none; b=jAcY6twI+yeQ0vosQWSQMpNTl65OGG2tD1R/qh5oLIkW8/2h43A+FRGG9IQjosJ7ZEx8OAuH/qax23zbiwDqqX+J5npHh+Lp9yNq+yApngRQkgSbAirmB+Hjn1dLjvNGR/L7hqWWhaWylLoqHdtoKz1cpVLok4ENuzURnlBs9hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789415434; c=relaxed/simple;
	bh=5rn/LgvzDXtCth+JiGfU35AYxTZ5NjFZrIKGdY77kKc=;
	h=To:Subject:From:Message-Id:Date; b=ACwLI0ajqbiGp9ylAxCKlz4tQxBkRFBs0c65xvN3q1h03ILQmiXSaCOWIEsYyXFeEauSw8XYeWT2K9tgQdw9Tjf3EEHFZl7z8eREP7d/GylJhdTwoqhO+Zfc0gcedz86xKeP3pVrmKxEE5gsrQugjT9EauBbyeWoP0V/uK5q1Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R0JUrNCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R0JUrNCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA78AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789415433;
	bh=5rn/LgvzDXtCth+JiGfU35AYxTZ5NjFZrIKGdY77kKc=;
	h=To:Subject:From:Date:From;
	b=R0JUrNCqckC3samA2CTHznrVDv5wYdEfs47KwiT8T/xTfoeSumZTidEW4GJhefdSQ
	 BeoQaz8M/DqDZ7b1l7ga9dUaKoYgFU4dHyNDC4qDd8a6G52JMIqkLs4PCEvlWHzCyu
	 rwSTYvxDsm12COyOlt/S7hhW0t6iSqcgfjX8kB+8t8z3LhGh8hwEyy5JwKz1gXpdho
	 gkTy5bPHnHVLJfUlF3C8qtCEsf79AbirXICpphgpDXjgaBuiKVbgr3pE2PdOiMT44V
	 5T/Q53pdlN/txgeVwSTfbrodJ+o4lvxbVbsT0tKvi/c+vH5tj+PZoU88CppC8fLKnu
	 1q3YV/nxYEI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34C9C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941543370.27571.12584833241916121382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b56e0dbddf0e9b9b23cd3b6020f0a240762a8360fc8e05cd8460edbc609a14e
Date: Mon, 14 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789415433
