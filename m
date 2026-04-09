Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1433B31E849
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775776654; cv=none; b=Qse5ZHqPtgVeO0SKXx8srGEsmsKsnwPPiRGA9AylLy37apqi6WF0wkHMonBabi6ZcAj8AdKmRdYw7U3/T30mtCJq966XEoHeo1QnKp5RwSPRzLjiC9GVYTLWlh6grtHpoxY+c8nccSiEr1ASkEwIqGmEaAPC4KGobKH5lyzutEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775776654; c=relaxed/simple;
	bh=FK72J4NkU6m0YlLZOxuqWj3kE6PWsQknmeGnvXGDUA0=;
	h=To:Subject:From:Message-Id:Date; b=NX/NuamXAOG9owS/dH56eq/2uoot3qvd0g10M3kBUF3e5o1HRRmUm1apZ383W1ttw7jC//kxHWJfJNPC5Wv6hLIefjZ9P4fkBmFfEoOhTH2M4qnXlHF11/JnLz9y32OWfH5aSEAjeleGttsvDOhFYSdii9SK13J0ulpZcx/RX98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtfwOyWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtfwOyWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A7AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775776653;
	bh=FK72J4NkU6m0YlLZOxuqWj3kE6PWsQknmeGnvXGDUA0=;
	h=To:Subject:From:Date:From;
	b=VtfwOyWpDqNWMZ2/zGInQnnd5Dx4O1fUbq5QMakjtrz2wp+CfmDNfpIUBjcYNx2Ra
	 FVxHPMQ/m3ay0wWpfdPQae8N0/sxrZic+3IMJQssLa/YQt7GMEdv0N4rLUUhbX8MTk
	 q3H6Z/faS4kuHthzDryLGd1OUIYqc2spCJZNkz+XjNeUZB9Dfh9kG7l5fx+LERLTEW
	 fnSuKslYdQSks+zOp+lmiD6um1du7KpmlFHxZYoRNPPY7I0U/XndqFeW0UtMvVXWlF
	 Vooom/YbmRNHW+/9pmEEBekHcV6+Me20FUQLp5C4/lZCYGJjsP3xcnXq1TCQEkzhe3
	 ZGrIBwCd6DqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92BBF36B95
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577665368.4873.8636745492748878520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6164880b5f9bd90b2c0e8b88480550ae038f37a5ca3a4a148a269c4970cb3769
Date: Thu, 09 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775776653
