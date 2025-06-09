Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B16280005
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749454794; cv=none; b=IItNAQkiBGdZS+c71voEmtIdk2HIJDqmlHMzwWVQGIW6gIu2dITgmIAuAdcdoMBnVzXqmrgaB3Q38+LeJAUxSNYWEdQ8re6hzSCUDOSouEcaF/2mopsQE3aFvH4nxWKG2kSimDUpBtqs8+4yCwdw0fWVTM+TEzWGSP9YiVlEBng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749454794; c=relaxed/simple;
	bh=FIwUEgqLjgGv5o70oNzrropTvelm7qY2p3/uURZ1/Gw=;
	h=To:Subject:From:Message-Id:Date; b=Gqogmq52tU9aJ6cB7megzC7fzT6WOC/t9RpOVzBRapq6oRth/ALUp8i1UKAbzL6cy+36XTEsG+P54sOPiG78UQDj1RmE/ebPDl6L61gIprjbCoih7/dM4vithYpESTZp2gox1Y2StVejQu1398Qlm0XPnTwI+ctJo8SgHyn4ZvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmX+ZsRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmX+ZsRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D420C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749454793;
	bh=FIwUEgqLjgGv5o70oNzrropTvelm7qY2p3/uURZ1/Gw=;
	h=To:Subject:From:Date:From;
	b=DmX+ZsRqoafTbBkLmK08Ah20HoNRPukfBgzsgifzbbvbc2ItJ9bV1fjKV/txS31AB
	 uUnOGQCGWDrY1TiU0fS3mvccXlH4BOIkfqAaqse9z8q+QNbTfL1yDhu25SR7qE+wSw
	 PkDu4ivuJ58ly3X4xcG69jR5zA0LnzOoq33M42Hrtlf5FN8WDTo5wb2cLXYFbXL0B4
	 BqVXv372qQ0ElVveik8XzF5Yvx/8BqDU6I1Ml1PG3z91SJKZu+L7tleSL1RVTqmQRu
	 6yn+MgnRJL6xFsxiPoHa9As+YBDAA+lxdLkqbtmWrdI7MxHdm+eEdatgfx0seuLSOG
	 8aKHvkf1uEMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E40EC61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945479357.5647.5893871815482055148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2691a27045cc2c57d7be45eb6a152630ae2f6fb5a3573521d05428498c277b
Date: Mon, 09 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749454793
