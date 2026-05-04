Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268913033D6
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777881454; cv=none; b=HaK1kgMrlEm+l6vAzio6kisGCBqIeUBpPNuhqWE4PjGm85lPga1087MUC0uPpdsmdWi1ZOzkPA0xawzshvGYDccO1cTSL5drnCVFk99I4q1QkMB6R2xc5DGecTnNUSJ72KiewUNWXj+XI532Mfe5mGpYOfBtqKLDdJBV5ZY4NOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777881454; c=relaxed/simple;
	bh=R262dQoDjSseTC0xoq7JUwHXNaf3zsDUZ/HAY0AacyI=;
	h=To:Subject:From:Message-Id:Date; b=rBB6xuCD4jd5dAWOW8kebNutbsJ+/IoDX02D277f0czgFHq+edzxNWltJz7LkSTP9UGpFB0OPIuO7rwKE9YQkNR+sM8wkqbyFlRysV0xctVqbleQTGU1J8xfotvDj0ccnGgwserRHZR4G/APk6HAXF7Nn5x7TIwXZXbABPwqaDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8e76elh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8e76elh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDADC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777881453;
	bh=R262dQoDjSseTC0xoq7JUwHXNaf3zsDUZ/HAY0AacyI=;
	h=To:Subject:From:Date:From;
	b=W8e76elhuysV/KroWLCbzAE6JkBDed4xNkW9+TrlXBjKl82ZcPpiCJHYFbPiDif9X
	 61UyzYZyCtps0eGcf8rpRmENv/E66HcZthDbvBEL/I2FHvChseYOTHiNm03cp9lZgM
	 RnXdi4YqsS/kE8+vhN4ctf2SIlc66aHbnH+68XBKCGkBoRHp/0+dAJ5lpQfBRywn6w
	 oHgSRkkmvCQ6+Goae0wewMhF3oSwC4/f92BnQHb8fwexde1gsnw93sn+tiuDLLfRiK
	 e/eMJOw8nhqDgi0J+CF5Lc+EyGrNo+ex2eqIIryzJzqMjsqTypCDO7fGs8S3sURSXb
	 hXhND202Hxd/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58DFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788145368.29953.12916843498625810152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5dc981d1320bb650db0d994a556a25f0353deb1ff52ebdc5a46797d64f81b8
Date: Mon, 04 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777881453
