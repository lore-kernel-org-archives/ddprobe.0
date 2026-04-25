Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC852E541F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777156654; cv=none; b=p5fmxzSVLMkpTaVjIrNfZC+JgelwJzgWyHkPGer/syN+cfrNSN5RKWqB2NZp2z9H2a8+I4NQ3KbcCAcWxLhHKviOyZM8f2RuwbfgrhlgnlsC7CNDm1vkWg5Oe31DqI0u3E5o+Clgdo+nkGeMnHxPnKc1/xbX1k+5C3KOvy9OwTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777156654; c=relaxed/simple;
	bh=91mkzB6GVnXXe6DxUSs9B90l/y9wvpaFKv9DdBMmBbY=;
	h=To:Subject:From:Message-Id:Date; b=ox8OmA+YGsS392vX23HZyCHq6Ya1F65nfbhcO8ctP4SiEvvQ8o3k4A7135Lr5LSGKojZ+DxllfGSvCN61TrUyHQyuTHrJWTeo0vzKShzySBp6FBk7bqHKYg8FDvWCuj+qm7tF15ehabz7Tq4Fy8hOMxBdkkzaGSzmiETLowvLTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJoF/e/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJoF/e/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C069BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777156653;
	bh=91mkzB6GVnXXe6DxUSs9B90l/y9wvpaFKv9DdBMmBbY=;
	h=To:Subject:From:Date:From;
	b=gJoF/e/4U4yXgXVqSgLTY7ZHx/y7MIY3G5sb4WFpC6wABFuAWfJCpmcDrqofKUrQf
	 FCLEkb2avdzNtVohQBtBFNmtujrAAOR1IA3LeL+FAcx25Tm3gmQyBD772vrMclRqQp
	 9PqvD+yJKvZZ92X6lYVdCfKuqHreRZhK6PJwYpmL9zcoH7d69MadKOiLgDt+WHcAFi
	 xWqqgirc+VCecfWxvHrDncFuenBtS+49uvZd9yb+Aj5XfCrlhv6MXWUqPnZxvzMrzL
	 fGjt8HhoQoU1Hp9Lo5YKsVTtYfXpgpdxByirMZJureaWRZKboCJPJWnlD/11aekgn2
	 WaTeiK59xxw5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5F5FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715665368.684.5373480429541500805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7928da64bd86c1c989d943622df8a8abc06fe323b97ea107d03a27bb58eb868b
Date: Sat, 25 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777156653
