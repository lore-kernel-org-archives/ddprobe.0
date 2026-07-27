Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402C33E1692
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785140434; cv=none; b=JsJNgoJN3AqJCmx8/6rtvfE/XlPDzjYf5HqtmulLbedLrP+Z7lWYgVS+pHMRCUbyjQNEfBVZpCyZpcj1w0o/Vxsxw77ZBdUDYNGiMr5K2VI9sIzjq09+bKadgURwNWtKdhl0Y5uEqNwONFJeod/fn4jG3yeMfKFiPREjWk36yl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785140434; c=relaxed/simple;
	bh=8nhz+BJOdBBVvCOYtlsAvUTjJTE4y9pI/VyT3x94QNU=;
	h=To:Subject:From:Message-Id:Date; b=EU06J2Tb6SdzKds2ZTbtVIPD6jn4KQDYQw1r2YTEnpTwyBvz7pdSlXHKDhwEm/qcMVVjP4ApIO61vxmt/ATMKQv+aQhfDc/Zu/qHTyLC9jD+15EHPwtqwQH160yCQ3l6O6xpDcVKrOidKFdvzPSJU4T0xAeYXCo3imN2u5bAdVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEszflGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEszflGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5CEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785140433;
	bh=8nhz+BJOdBBVvCOYtlsAvUTjJTE4y9pI/VyT3x94QNU=;
	h=To:Subject:From:Date:From;
	b=rEszflGb7dPXo4TVAgb8P8Nqii/4Lsn1sa7CXepRs6UCIhVq3oPxRwAI9vFs5TW4l
	 xMK4IQvFaFAGduch0KIoIh7f2nRYa++YkWdt9GzcDlQTKpKD9QLYRHgVr6TRshkEe0
	 2kTgV6Ae9lMXqlqDeT2nWgujBFc/dW7eqVTFrY8QE3PIL1TyvVaNiMFbm1k9pG6uXp
	 9F1vDQHRa6m+fd0+8x8rTEoGMTKmnFX+7/G3CQ94yxEyuv6GFaTb4riJx7NJxUXAQR
	 AhiKILLpgYcxuSfofeoGrsYRJ4kQMbKFoaSCCGrhCM8wiTLkL0XynUlMVa3652HnEp
	 JEUKe9ApJisJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC8C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514043369.19429.9434339470432685894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114d635ada2c3866c30070f52ee9b36caed2ef7c36d798ce41412d3c1e2cdf93
Date: Mon, 27 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785140433
