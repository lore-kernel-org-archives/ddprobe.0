Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239A0212B31
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761378594; cv=none; b=dmgTDZmxfMw/vF2CRoFkZk1xfoiDabCwZNAaY1KlnL+WAgDs3ER/3/rfgzqgKtYfMl1A67CTPVXLWT86DoVk9b6U0epgvZo55huvPTNXtIsd8rc0l6jQIGlhAuDaA1smvbf0QnmFm6+px1nlS+39n5uct87qQnA+SwDP7BR1lk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761378594; c=relaxed/simple;
	bh=bliC0h1SJZD5o5fN58paYw9z22DxJOqIlw4XGFusW74=;
	h=To:Subject:From:Message-Id:Date; b=VtQtCF3SexEDxwnlBosGtln3/MDJLEPTmRtB7V0zItBig8ERz/vaqd+JjG1XhPx5de2c+kozC/BSW2O7aYNNMN9CTNCbTh1t4Dolrm5RqcCSLXq3ZjjXS9ybd+zwowo/zAml8srmOIOu68C97UKPUVrsiFmrk9QV/zCYcNfWB6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXvGcuRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXvGcuRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761378593;
	bh=bliC0h1SJZD5o5fN58paYw9z22DxJOqIlw4XGFusW74=;
	h=To:Subject:From:Date:From;
	b=JXvGcuRS6vZj8u/WITmHQw2xEpiUzR1Qjpy+l8Pox6qTLvtldlBZ+o4WiqubtdC+n
	 kM0u706z3GAVtkCU2jYnfukVanZBQvvkpgI5SPL+Ba7Hlq8GuvwOS20wWfL0Je2E6m
	 kmRfpIYxTJy0yb/UL2g0+5EOcmzkisbA8trwvnGFxoUKDIRKVuJEP5Km8XiwG2qG+S
	 z/0OV2pE+x1RqxhCGDRp6GkJcggHvxb35FEP7QfcNgUL1MEMj5ZPi8pEY5RnRGDP1r
	 k3J7OLCz5LSMy9EqYLVKTqqqf1VVdHkw9kA208vhVDwwd9CxuTLV7GhnAU9W8pXhxH
	 9oCY+VpaXw7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED7CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137859359.24695.14811197369125046697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3652658a4c108cd8dc603609d936e17e7df8106226d5438a44baf7203f64a813
Date: Sat, 25 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761378593
