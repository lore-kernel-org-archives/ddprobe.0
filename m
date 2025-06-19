Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABA0634
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750304394; cv=none; b=AwKsMqN8xBC9PA67Kve/1ltBtZy6VWmRU2RQpZqGEyASvhkDWUfggmmIBvVOOz/q7MQLeY3zo+FYLpFE+DH+ssEsN021ZCd9JUoHpFr8LbsPaJnUCkKDh6DFEufIFevhwklDoIMu35vgmRwoqg5RhzF5sGrh0unrlOtiljf2ye0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750304394; c=relaxed/simple;
	bh=IC461JhWHJtogA10h49gHPL2MqyG2q+3mlV+tNYzfoc=;
	h=To:Subject:From:Message-Id:Date; b=BzE3wXJ557jIeRgIo7Fqn+TOVW5ohK4X3kg50UAB0I5sZqsuDCKSORwmaRDf1OJt34IzOT/ltX7SkyWpG/ub4mvgJAYv54TVZMAHxM0DxKiBFvvjxzMqvwSjgyJ2IKyQasEptPXqhZmhlGkMLnd3CN1LNKwCgI+dBSoiNEsDDj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho4MWLHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho4MWLHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7687C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750304393;
	bh=IC461JhWHJtogA10h49gHPL2MqyG2q+3mlV+tNYzfoc=;
	h=To:Subject:From:Date:From;
	b=Ho4MWLHMhbuUFHdi6ZFS+lty8CfRA8mljCcd8iMJaQwy2zvSzZJHWtjCndnAgJeXh
	 V7wUIqnHLBNhbIAsSN8DCwQsWxKTTq0zdHe07suxVL6naf2lDkPDsYxCpjCl/YnsBO
	 qhrmBaUld1oLOqytIhI3EdmjM5KyzLUOtI4UwtaoZwiISUYsE6uiuo27ciTDMd+NWL
	 oBnMcZSML538MJDJi+teKlsWRye4/jEj34fPLkGxkDvrx4mp0dhATfGgs2Yv5fz/S5
	 s31gYBlC+PkhY6oKV/M8dbVCt5H7tE8V6d+4WlbfgYMryRWSW/BCSMufgAGPNcm+lz
	 79zBBJPGSr4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BBC71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030439358.852.6210045296382509775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ac470f8575d2f4abe39f0c4a12a2d1ef088c90a5bf2bdab9cb7196223eaf11
Date: Thu, 19 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750304393
