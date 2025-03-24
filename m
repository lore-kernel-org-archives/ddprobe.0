Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D92A2E3376
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742819394; cv=none; b=KvYPDj/6SlP27cvMehoH8cTEe37yyzZWhykNmfTljqoOPGqqW6fV9DRTOUyV2BYMv3beok78lO8VPEcnMxY8EN94d53jDX/x7FRy8HE+jANPNbZNUhwD3TDbNz7DHMkh08lvl1wlAytQWHOokeUK6bkhHieIsjqHArz3J4pPDBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742819394; c=relaxed/simple;
	bh=RVYRQZiC0B96REsz5HwwyP00XEasRgGj8+ZjOJmYAb0=;
	h=To:Subject:From:Message-Id:Date; b=TrkSoXwbOUgQbv+KywUtNmE8iWmow9n1YQMNgZcKHNJDuP1U5I4FAfx7lHpdYRc7laZJkRzX+PHv2MBWVyO2yi3Z6tHnSmnMavSnH52zdpOrFULWMnAyw+gpfSZL6BIS+YrmRIwTUShD1lzkZeaFPWatsUxN4IzG1Sl1exi/1MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAIrKib0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAIrKib0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA380C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742819393;
	bh=RVYRQZiC0B96REsz5HwwyP00XEasRgGj8+ZjOJmYAb0=;
	h=To:Subject:From:Date:From;
	b=aAIrKib0YH9GcEsmJ56wP+6c+dAM7/nZRULkaPH9z90+20/U4MiSrlUPmJz5uyEOx
	 6gZ3NocIeCB0Ty4kw+jRat+pGz0sCpwlU2eegmxkFc49JUsT4xDzdFoO3zdHAPin7z
	 gNfEVs74ObV9yo4HsP4Mqc2FCYhssIM6tmtHIior+bAvLG6hg2HMKo5LCD4k3OnmRi
	 nFQxJIdkjOuOsEKZ3afFtaPDiaOItRkbtzOx+XS1b3RraGGKTPq7mygPonCTPM/nsh
	 xm96l0AxGgbFUChsvzLViWQmuBFT7Yh4964aSt0zFWcZRuTSJPExT3GfgBAMW8kAKF
	 E4KW7QBRqC9Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E32C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281939359.1137.17175893491214652041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f3cd3358931fc049056df718059ad4b913d45e89ff2b67e240e97cff729102
Date: Mon, 24 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742819393
