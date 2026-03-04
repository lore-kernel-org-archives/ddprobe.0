Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2194E23C4FF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772634294; cv=none; b=NLvxEJp7AichbbQMdimhRzgxilYmqXvkgXxLAcPimxDmyXHEU0Brp7UXNZl3eYYVKAtx7mTyeFrG/njNP9sYvS6HCGDFutb6xhiM5sPEEtmaaVdc45pDIlAWdC8UcADJMYZvlTr6t0QC+bgQzcMl5SrvfOCAWKbXJDEY6e6TcF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772634294; c=relaxed/simple;
	bh=1DLDXPAOlsqngDRnO8miskK4SVhuzcNbkG7cFqrBBbM=;
	h=To:Subject:From:Message-Id:Date; b=BTZd/xZ5b+FYjYWDuqZrYjcv0uH29RvCZ9JrpUOxqPKRsX24ClElUHk0owPrl/FmimMD/IrP1dVf4VkBGKryROP0cKS4Sd8AskFqn8wbN5RNPyikxtFAeA/jx+6ayAGe1meiHx0OtLzHHE0+B9qjFEq/Bg6lyOHb1PMGAFCquLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEATIZv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEATIZv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEF0C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772634293;
	bh=1DLDXPAOlsqngDRnO8miskK4SVhuzcNbkG7cFqrBBbM=;
	h=To:Subject:From:Date:From;
	b=pEATIZv/7VaVTpOvrDf6xKqSRhsQv/tIoMTyxHsIMZqqJM7DTiGH03mFJTZfPPTGL
	 ORH6J3Okuy31hXdHh0y7gefL3lEqoCzBZgLPxxtMvQT3CKnBXiRg+BrkdyNIqJCzk6
	 z5vpTihebU+T/VD1ityZTI2Bt/WzqtqRhFM/3Pt37T9MPmFjd6+fX5AJzDactQPGOJ
	 OFbI82G9FulhSWEIpd2TOyxabBngk4qKBRAfGztZCFvmTg22t2HqFx8OnffHHXqqJO
	 XgigvE9NF06M5RB1mCyWmlDJBJ4xhi4OladcOIBKh2Xb3Dv3agbz6AKnB/uiy8VGER
	 P2/esaqR1hGLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9664EEF8FEA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263429360.16893.4978393454242797398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c9fc0156c884f543c51e9e49359d8cf191c0546702da2867d95140b91a369f
Date: Wed, 04 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772634293
