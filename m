Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48254A93D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737419754; cv=none; b=mShN8yivNTSfrpaTE6EVNUT7Sdu5MlmUOj12IEqViaAgL0xQm0oDKn8cuH06RX4ODV/Rw1qHBnoON2AFpCSUnRYg1gPGKc/7t+aubQxA5+CsmL3pePM8lDNLRaBQDrecgez4CP31ApDj9WGqkvUEqld3vksshHzDppX/dr07y5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737419754; c=relaxed/simple;
	bh=jwmFV3XUrUEJTLz4dSJn1MqGNVQR1RPV3BoDBnG7QxU=;
	h=To:Subject:From:Message-Id:Date; b=WESgQM0ZHAUEBziriDav32vldyDzkDVlFASBeMsaAnVivxo6uW6IzFIQp2rEatAfc0dYa3/rTs3CT2gLJBjzUZBIVGg2OWdtU3XLTzPZefp7epgDBhy5Bmx5QdnFxCI8O2k5QJ35WuQar/zDgEuG0hX1vTEDLBz8juuQoKL6T2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6znX6HP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6znX6HP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8F2C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737419753;
	bh=jwmFV3XUrUEJTLz4dSJn1MqGNVQR1RPV3BoDBnG7QxU=;
	h=To:Subject:From:Date:From;
	b=b6znX6HPL/wxSzcnVqlSNNR1I2ZhpFbJtcxh5cw3q9k0TnHTMLGYHkoPZP+hOHd2C
	 1xa9haeRbkxailjy73657vc+D+gpAXKX7UzvWr3h6e2ssgA2sQqHEt/eT266hnGwg1
	 tJWV7/cZZnyKMLmqlvzqOBuNK5LST29Dzf4yQibb1bAcrHYU9Ks0YuaWo8B41+S0N3
	 XOUILo+iwvt4uJWvH36+U9/jiBVfhYkE+lqenX8nTLYycDm1oDDXJr3Iy8tN0DY3F7
	 bKNbxjjuqKgkwSl/w180/po59ZxQ3vraQdaNBGQpE1V5qQv9ohRN+myV4Wm4KvhUdM
	 ClbDF3Lej5O4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991E8C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741975359.6360.9551261105584986835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4a8f1287f3df038639f010f73f4727791d6f0582b909df25db8c1b4528fb1d
Date: Tue, 21 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737419753
