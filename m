Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131751F462D
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753341594; cv=none; b=HaKMgWLGaD8q2yWYP7ELcNIWugh/fAVlpvdS9iIEQOP3XE2Es02EdRap1R9GMFiAhCUe64U2MHVJIar0+7miTpmIqnh2I0vpyPx79hqY5Rv4CfaxASaX/WRTFrEfJ6dQ0Prv6dRPMhDzvXsJ+4XDV6ayTb1Ei0JHWz7tHJ1QvSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753341594; c=relaxed/simple;
	bh=SudncmL2g02yhRhFBmVgiOra1zZUDmkPAoOJtWmX/Q4=;
	h=To:Subject:From:Message-Id:Date; b=YNT/waH60HB1W/FxWp0Y+Vl1I71wn2oujQ6IhGkFPxJFW8aVcYhVV8Ep9r1hdKiIwt2ZQLhPOHo1sC2nJrOLzhB0my5+s/D/3U6l94KY7O+Qfx0MS0kP7NTlqWynAzMZfcdERdz5wylx4BGfjg823ZAeFPl8/kNBAMZ5XHBv5K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaU/tU8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaU/tU8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3D7C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753341593;
	bh=SudncmL2g02yhRhFBmVgiOra1zZUDmkPAoOJtWmX/Q4=;
	h=To:Subject:From:Date:From;
	b=NaU/tU8zWrL379TCt2L4dbsfPTjMFgDsIVQ9emGgjVu8F7XRlomzIzk4EzPlf//xe
	 jk+lxyDCpCwrLIMyANOvI1VGv3owmDMucIDfibc5yTtOLxQJYVA/s1hsLNARJFAOPW
	 msbIksceDEF946dw5yW8qc9uvy8xCnGVNFezvyGgo77D5mDzmf4r5CrXyAnYwvvniR
	 85zYD/C/v4K7tZdIAT/m9C/8+bm3arLKc1V1KXWzycQ7D+efc0DhTgYKK7VYD9cfJ1
	 q+UHTNl9BLhz69yJovI7C1DM4Y0JEmBPAjvB7fiFZP46v8i8Axhkec83HTPgGqHhFl
	 8TrUQF7cm7dew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F853C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334159357.29563.17951495685697978009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcd62d7a2cb2c50ededfc2f4e90c22aa7c3f0a4e7c47dbc2e0510aa2053e397
Date: Thu, 24 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753341593
