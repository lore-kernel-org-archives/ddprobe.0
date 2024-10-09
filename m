Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4773939AEB
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728451554; cv=none; b=aKyzmxDaASn4MW1EVNKfsxxDuSNKdwJUyl+MXnd6aXsyIK+riH/70HB2sbtMLHWf1v5DMHq97ErIP8i2Gm1kxnh4EPYk/ZvxGLhRYB97HDXPDMQRGuQBxkFWxP7miYwHxnlB6ctcKjbtZn4Nwx2KwwFjR+g26xlRoWuOgJ62E+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728451554; c=relaxed/simple;
	bh=THTHVOsmLJhyxUOuvjPcH+CTkabdCizENvvraWe1ZyY=;
	h=To:Subject:From:Message-Id:Date; b=NQuA9E00sfrs4gytLlz1e5UA+YedHpWajIxYz9xLbUpc5zSzMjG4zmp4cu+/76LMoFfqxFXWxkkfb8XaYU1oFr0686+XUBujbu7kHPY5jsGTqOeQwz/pRYjoRRmp5Ysl1d1fNqk2l9grL8g0rQbVYKB++/Ya+Saj5bUZl1h0c7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm8++nfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm8++nfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB44CC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728451553;
	bh=THTHVOsmLJhyxUOuvjPcH+CTkabdCizENvvraWe1ZyY=;
	h=To:Subject:From:Date:From;
	b=Zm8++nfT0Xy4qAc3uKC2YG3mePl/zFIugKzU7GjGenJ+JRhKM4XC8g9wARhvAJRP3
	 tdLAdyRya3AlSfXfBACBg7OPANGlJKJn8GLdFZ5PkcEiMJ8FtLrmY+rUPptWGaXVuI
	 Mn40/loNN2LdOEMZsFggpVRcOX3NpqdUBw9h4TFjt0hyH3PXP7ppJaMCwW+Kc1hm66
	 cMFW9X6UozPYnLBP05elvGLJNT1I3QEF4s7A4ZdbnPvF8mGpV9/DLgBxKr1DDfkpgz
	 iosywZPvfv9dzgBOYwieiQaITtuWsgbk5R4Y+MLY8iNog5MWzdhUgKHFdmOGckDemU
	 3H5VqsiuZkaEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A204ACF0444
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845155365.5027.11725610293638519331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a303dac50be68004e0c53d7de38246899c582478044ba5cd008724438333a1
Date: Wed, 09 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728451553
