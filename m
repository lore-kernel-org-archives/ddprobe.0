Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360A938F658
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775857654; cv=none; b=Qz50ch9IOYb41L2+6/cptSylOMCtwyrvShSc8LKdOymUfhOCGC4CUvXpwHEjXAQ30f+azu76936j3WTMMqs6/qaB365M9h28U7illIVqYsUajyMWdpGcMZ/F8Ro92WG/ccEea1p+VIYe2saJFtVHRnJWwhXzo+Y2WtIhoZHY+jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775857654; c=relaxed/simple;
	bh=s1TJHOWWlF+PJj1tRRB+ecxqdi8ZakGBal2rKrwTzp8=;
	h=To:Subject:From:Message-Id:Date; b=jpWBXa1U56yL28izwy9wDY/0lxH/A6CdGP2S24VlKqQyLgA08xiptSfycvDvAHE2H6ft/hfGLrm6mUFV/gu8ahet+JbARmLET1XYZfd4mIVX34grB4ddk0Q/kJuWC3g8iCnT+5sFEncXp7/nKsNYKIzkUFEHb5Eo48/b6KcPW8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnbKOQC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnbKOQC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C592FC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775857653;
	bh=s1TJHOWWlF+PJj1tRRB+ecxqdi8ZakGBal2rKrwTzp8=;
	h=To:Subject:From:Date:From;
	b=cnbKOQC9lmrHSEBb3d3aisxneHPUn6K2z8HbNA6l6ersNONFJw7MXK8lCOPUpZt+z
	 89j4nrmWf/uKhooxrTk3/ioikUaQhCk5AIrPmXdkphPIn4+yoiuzG3nIk9ordCjGPM
	 4Ke9YOHDd0TCvoY+rsq4qVxAToPnRPhkWTc24heyF7V8NkWB/vmKJPmzlIVMCTYRUo
	 0nxulPKe9jVKl05XNvX9nfXY2wcYU7GDRfI8ExMCCCnawlYFDnSlebzBxxlaJnjGVp
	 bGyVsSwlOiXI4i2/izUFMHF3pgLZLOb1PEtCOLl1BtqPyXfCSOO1mH8PGlHvinvVhH
	 ZKfxTnlPYtB5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B134AF45A0F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585765368.19628.314573497789750152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f7f8619eb2b5a53ca482d2037dbe3fef0c927c9df433541ed09da60f374a05
Date: Fri, 10 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775857653
