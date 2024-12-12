Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1DE1D7E5F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734046554; cv=none; b=Uvt9TL7mS27ST+Nfypgugc5mZweCQppwO7egCtVL8H73eSaPQS/0CkkmgQflQ1x02CDk88YOZ7wmQcttcjUf3KiiUKhu5WzfD+dC51Ndp5hvkHKHVMGFPzp4w0lMJzkA2KDVrdVDGWCSWOKBk35hUR4IKX0kIblSMtZh5KxGPCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734046554; c=relaxed/simple;
	bh=DphGAI5CDm79c52OfLHFtQk/0JGjs5DIj80cwgz03ug=;
	h=To:Subject:From:Message-Id:Date; b=qcPx21i9GIwMOpM+7n0xxAcMuPY+ultqIA/yXDNilRR7u3uNG2DEci6f14HiCD2zlOOJADW85y/QfVRF5p+rLifPNE8urgtiPxrQ0nFYcAhKiGAvRFN+vs2jcdfva4TOmxpICxRKYEY1B5cg+fl7fJl9h613J2oiUakPyaCskYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO1i97R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO1i97R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC3EC4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734046553;
	bh=DphGAI5CDm79c52OfLHFtQk/0JGjs5DIj80cwgz03ug=;
	h=To:Subject:From:Date:From;
	b=eO1i97R+LHdLvUmnITyCISvJIjcj0kHmm4Cof0L4FpXZrKw06vjhdlUg2O75fY0LH
	 iyguc9AJJBv8RYLr1CXojfRpwY24sKP476UZpoVpT9NiYIWe/WCALp1Cv7Q0T7pssI
	 RfI+iMRxdcRWoLKrMUHucS/682j471Zb3m9OxypJ4wDvU9WW/iQEgzoI0F3GJQIQOA
	 cMcKmWIAl0iIMa0ZionRLWZtXi86kdTSahGp8rp7CyT9JBF4DY5tYCXYr+vTB1XASo
	 cX5liINB/fWyBYNQLYGbtaU6shBKKq1YOWfX8eojSv7EWsQl9Q9ymVGET/U8/n1oDh
	 eveax/i1jsAdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EDCE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404655360.1137.10500590813776840741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd97036bec571a2d51797499fd4ccdd3c4109dff8a7412fd273cf4f3809716a1
Date: Thu, 12 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734046553
