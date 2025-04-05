Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A31392
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743896395; cv=none; b=kbFdZAr1Yf40rIjkcJzZ6dv4l4zCKlWKacrJmcpFActeal9T6UGBhFLb91ejDgXdUcoKtZtxQOBDzpo6/tymKFou76dpYGlPAQYRPVXyqSRHACEkhbCE/MBmoVc8oVeKFiZs0Lsx44A2fsLW1XTstAO2vCOqbgVCfKDPdtjE/pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743896395; c=relaxed/simple;
	bh=SAue8aEOoz1GYG/XSZutz/E4gmKbHvZxidvdoEXesyw=;
	h=To:Subject:From:Message-Id:Date; b=NCvwVhTdZ24JgjWgxMr2tYopRq2UBrlnWOv9SkcfVVkx2RjwMkSdS6UapQOQ4mmUke/aHfYSOOHFJKli3bZNuxgiHMasdW5JDarQvWQIMUu0cyFdV5EVZgvhkHf0MLrOIIii1yBBnsnarvTUGWbzFjOfZ4n123QExtp/DXA6SWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLtRhgS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLtRhgS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A07C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743896393;
	bh=SAue8aEOoz1GYG/XSZutz/E4gmKbHvZxidvdoEXesyw=;
	h=To:Subject:From:Date:From;
	b=cLtRhgS9rTRJt5VkJNA9aytXznpNVx6EUv1BxrfRVHwAbgrQcyXL23pw9TX8mR94/
	 B4bfx3ZfPY/DFOhOjFboRN6mGxgjTzVV8cc+n31Y6hUQ3ZDC4+VD5zuPG2yRUTZtKt
	 x/ZUdjNqw7f83gPm7DEg32aYI+G+h2OwkWOrNA3vZs6ZZ8SeQIwwtOuZGVDfpJAdrR
	 pBNY9CuZW0Xu2fx/xZ4/khMGS2MynDgA/KP1HbU8cO0dKrsGsHG0OPMy2GMPOzAfpd
	 lr0sw5GI0q0vhNai/UiW3L6QLgdvVSqVNj2oZhdPAm2Tm0mDcd8bp2+kx6W7l7zItc
	 CzfhpRsKE3NBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F89EC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389639364.7415.14091068399707566632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c442328431c6ddda2f71c919c630e0f5d2130f364d85ad998bd0d32e7843f9
Date: Sat, 05 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743896393
