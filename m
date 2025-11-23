Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E1033EC
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763857314; cv=none; b=dWEYc3BY7SDgLSKLKbF3libff6FCg8sxnHZNhfhKAhr7oIlIcGfIPWnZK7jYDWes6nBRGnsG8KRbjubnWfFiP4B1XpPWRr+zTwhzvfIaEonYVmMFEbNA+g9qYx1YWJWIU2cXou4ZHs+C/IPbLuSwBVzzNh10Np12aGrejxslsQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763857314; c=relaxed/simple;
	bh=A65rA9L8PlcchLCTxZHIicThTviuKRFomSXFGtE7A98=;
	h=To:Subject:From:Message-Id:Date; b=YZiYEq69I4LuxPHsP+y7zBJACXmtcFCzMNhzreKy5SXVJMvJhVZBVRU77mdjW4ExZRa9I/lyRq1DRGb1yv4XPiGitKs/sUMOiErPRSgZuYiKEzo1vVRRU0xjxBIA0LqQSENGk0+3vuGUA3zABaVnBtRG5uQC1HEnPEyZqo9CmZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+TPI7Kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+TPI7Kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EFBC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763857313;
	bh=A65rA9L8PlcchLCTxZHIicThTviuKRFomSXFGtE7A98=;
	h=To:Subject:From:Date:From;
	b=k+TPI7KgjdHbL8uKFAK2TVxehhFgFouYuw995pWCh6zXmYHCxPTeXfdFAqIjwFjX/
	 KGtJLTeHqbW/JyayouxbuOPds5ybU6bybr2zbazEKK8Vol4mA0l5Q27ONFkXvrhmI4
	 Q7vl/z1mcjN6/l8A2tqkxUilp3hH2Qj75czZ1n+M7zp4rR24V1zMS/snpfp+s8Eyk/
	 co+awhSiaHb8UoOu2sRnUFqBf0VzhI05rZo6C5r/lI+QOR6+t6hCjUXDqAPQ0Vcth7
	 BsVokAni/GeWn4g10+lINpyC0Q6WfbFrmYhLAdjJZusZYseeCvS0DLRMxV/FEpfFra
	 qlY8JJKRsfeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96017CFD30D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385731359.27120.3493047639786382719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa267da12cee6b1fa4824ced104856c0ef0db3555f3241d86e7d26f18bcfb50
Date: Sun, 23 Nov 2025 00:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763857313
