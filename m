Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4648A2556E
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731229554; cv=none; b=RLwY2yl4B2CCwTWyRoaDWLeekHV6w9G+bFOU0FvEMEP5RumA6XG0fix1kHq2VOwzUcp2RT7g9lAAOGdvxrYNLG/Ihy7MLb8JFgxbehpCRSKduQC7SAlstcUS4GbzA+LxCFgBtQRhF8i+uKAoR9F1+UiLmnm7TFxEX+/qeKG0fSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731229554; c=relaxed/simple;
	bh=Ioor7WCfl7em8daIQ7glPKao9hbptztYWxAMIxLoc1Q=;
	h=To:Subject:From:Message-Id:Date; b=uKlIM8MC3OuvIldcurqqRjAzA6GK4EelJWaTCDTfZavWD+ViQoyXCE5yBHskrteexMCWFX35kOq+pvg+7rLsnU+wxod0pXa4eqWEnjyULE1u3SBuTF7khLK8I2PRmr8JQ2y8YJw61ABgR1+V62EDXKbbv3r1WpkCSK9JJkgH4ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opFxDL+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opFxDL+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00DCC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731229553;
	bh=Ioor7WCfl7em8daIQ7glPKao9hbptztYWxAMIxLoc1Q=;
	h=To:Subject:From:Date:From;
	b=opFxDL+ib+28/ae3MlzwTcLM5cTgXpd4WFVkm/yjxc/el9gv72HDbXMnZ0dw1VwSk
	 Ahc7MChK/VHY7dVmGsQ2CpMSe8bnVSsv/W+RyuSAHNMaO64o9Jz8EfERr1PXbS3kYs
	 n32uP3jN/HHSRPs3QrrDGsirnP/PODKwuHv3uA3m76NEkbTFeyevZdwDLp7jJeuvLF
	 gYrShUHLCxP/PToI0qY/6RZ++kTJbbwiFzCd2e9gcpxN8SaBy/5mSFN0nK7QQxHEtg
	 FV72dkQdUrA0YXH/momgCS7nQF1dxz66Roq/MaefiFHUDRtsQQFNyzxQFugZv8AKaa
	 L416X1/QW+dFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEDFD5E380
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173122955365.20861.15275524723104991826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce805a80df1a7c638ae86a5b994f72dec03a0c8c5a368a36a793af450e5a818
Date: Sun, 10 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731229553
