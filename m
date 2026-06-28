Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C05434CDD
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782612514; cv=none; b=QcmfiVwU+FX0qKKxzGbIkelWy7C/pc1fpbJcyQit+60xDEvCrBSeV2HPJG5yR9zKSPi8MlorKHD5GWslhyRfLGsS9tv9Fut1cLD2B4iJ7eqwaq3lo/HS2zClb6q/5wQzV0GW3rQYtenYPrP39ZQdzrcjmAAZLTm8P8/02yQiTvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782612514; c=relaxed/simple;
	bh=2rqzFqKaMf2CjVAjootjnf+yOWzvDet99SRv3tUQ5bI=;
	h=To:Subject:From:Message-Id:Date; b=JpNZ7IsO3S/HonA76cE0UEr2XkgYNUgBG4AjtWSS0mYhHXZavcy5UxkVPKczbjEJvIrIoOiaR/ZfYH1tlIqMdeTY5RozYoyK3MYZ1LkuIuSbay5FGAECfKUWPr0TQkRWndt2Ak8piJNJD9n0LTeDAAXgLFXQrbIWPTN5QLZhAoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlcbVh8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlcbVh8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9956C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782612513;
	bh=2rqzFqKaMf2CjVAjootjnf+yOWzvDet99SRv3tUQ5bI=;
	h=To:Subject:From:Date:From;
	b=qlcbVh8dN16Pxt3A1qcBTFlOlY16ZIabRulp5/upnthUdpVOuNHKndDWNU7lDrkpd
	 C6rYb+0esCaKDhY9FoxttfrirJF5and4+PuLTLEMn6dtglpnIRD4qojsssDNuG4PYa
	 O+cU9Mia135QsocTfhPAXdYrMijT8SXX2p9QJGLRFt7zAHaGhnnD43ZnmLO9tDxzl7
	 PKz0nGK5ImId5ZbAxEbgX3lJ48G9JKKzdXqtufj/Xq/t86IZFqA2h/BSLbFUpEiaMs
	 c3ajBDNVZ/grum7CnqcmFBk7b3pXQsFOIbvjNpilFrIz4GuAo4hnmP/5oI3DDjanWa
	 mWIpZ7EugcRrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B827CC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261251369.14573.2129937209030878879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb0444a02675be02e3c709594893299e28a598f250158427adb308a4e2b2060
Date: Sun, 28 Jun 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782612513
