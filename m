Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B70E233940
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779186634; cv=none; b=A/sJbjbQ7MUpIs6YkkAlSXS1tINZSDnsjrPU/A74KevJxqpVOPv5sg5rwIv6nJuGMAKnwDd5wdXnYWN904GnWf7B4nyY1IFXPhFItOY/7m6Abm6ST3cpUlaSoYYI28Wm4BWy44dSBNckvB3ixlvpwMN3GJoHtqjza5CHglGCoGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779186634; c=relaxed/simple;
	bh=knRlMVKtlgKGZEtLJ4ucIdWKXZAXbcuBYDGIvpPTOPg=;
	h=To:Subject:From:Message-Id:Date; b=RrL9uxTVZ5m/Il+qFPNIbUIX18dDFMbGAEPFdCQWrbe+Y7e4uLvaGMEFg4Z0LVadPy81EbYxP8zez6OKpxtBazLQiEVX1WOs4UhEqrYmyJIKkRboyGbZzambGA9pRfTB4DXTFem+Xujl40ND3tWfYmc+mi+Qa7lt3CwLITP1yKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSgIdJt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSgIdJt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB70EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779186633;
	bh=knRlMVKtlgKGZEtLJ4ucIdWKXZAXbcuBYDGIvpPTOPg=;
	h=To:Subject:From:Date:From;
	b=DSgIdJt6EiCUZ2XZ7eqs3TkZR5xt0wEMBSqtz/fCxtEnsCl/HDtM9ekqVBA5igKaj
	 kiuPOK0GzfcBdrIKqoFoakrQvEXCNEe2HRWh5OUenRorZ2TzEbpsDMCmtZx6vzXiG+
	 RVGaYZRtYNb314y7gr6QRh2HYF/DGLt20uqdA7HwYZVkq8B1PMZJCKrYDFwbsZLuRv
	 B7qNf3m7agnampO/dfTox8vPO+XzoTgeyS9lF51wkyzhUV2acny/XvEdi8cORSK7Ar
	 DcZQ4ISAtR2yrasfOTMSxJCny/gH4qEGdkza2XfxaDcLQuCBwbm4Za5n1jDMXqtrQ7
	 o7fSfYly4ogDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD36ECD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918663370.24199.11860688507747591454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b7ac8ba2f89fb23dc4e5a4aca8a0aedf552b46674eb0e229706e86fea7c81d
Date: Tue, 19 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779186633
