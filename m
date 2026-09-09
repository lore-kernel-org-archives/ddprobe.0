Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B5947C10C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788946834; cv=none; b=IxsU56us1HR9uKPPlev+sOtXaS1pphUmIws7U0/ZrzvlAWyWjcKjgLzDkmCI5KqEOfOXVi5p3ct5aYI0cCvgSvAsRHUBYsNZM4MPET0ve0CM6NNBW58ozB++5ZYmTZigUf3QeJzkJ26svJ2NGs2LgiPlIeVhkdCsFDOh14CH2/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788946834; c=relaxed/simple;
	bh=Rox3XUoUu1cHuRWsddBrrxOIuFevhR2sslfDUEf62Nk=;
	h=To:Subject:From:Message-Id:Date; b=eY7rTOjovXX+pd4vFZQQc87EfbpYtSprSDBXYoFzeVbL+8A/sUK+ly0RaQuTgnoZt1QEpkqs+h/vSYLObWt8WEPdCbFKMGILcwyCQyot+66rmlq4iTMTfhx7pg6x0y9PUIqg3W8FZ7V18uprqAqbDUm1uk2Qws2S5eIk5BA/FBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa/pIqT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa/pIqT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19D5C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788946833;
	bh=Rox3XUoUu1cHuRWsddBrrxOIuFevhR2sslfDUEf62Nk=;
	h=To:Subject:From:Date:From;
	b=Fa/pIqT/vvH4JUWdPRIiJEQS8TRgjqtMVNkgmevuVrte8gpS3NZ2AGUsqj3Ef+t09
	 VwCSNow77RoogGeQFnFeVvB2wKcksu7INWuh0ax6roToxLU7P9eTJid2E24uIY+q4S
	 zOMzTNSqQEyxPsouKgtxItG+LpSRnLASfDw0tclLsBDQVN207/JS5rw/6DsLj4dgdD
	 fP4zSk7CAZotszHLmBFXEbMAaDGFdWH/xVFoU/uh+rQDl/3slE/iRrX92uEKI/ZswO
	 kI7krEmmz5IbARwnYEUiIHxt07gNiP47auxQCnNnjeNpPcelBEBZkXsWHlUmcCBe77
	 EeQRuQjIMGlXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4DC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894683370.12690.10331161839296015777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621319e5a06012b02e5ec77dbef760312e002255dd9da10106ee19f9dedad8ae
Date: Wed, 09 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788946833
