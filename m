Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A3733ADA4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768809834; cv=none; b=okeBILK9lsG6M2HH4T7eXkTeLchI6JqsU63cKr5zZqCqt+7vE9Q7sLeeS7KaHISfgzFeFzF8q2osIMVW4pi28rwyI2f/4FJA85z1OZusGY1FymBipEds2619ASfePbneKKhkFfec5ySXB9NjxeGcuJ2WGBPvzgee3VGRM6wqwVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768809834; c=relaxed/simple;
	bh=b8PIoMs1D+q2cK4Bnpg07vr/e8GUkpAgmOHiwPejWLs=;
	h=To:Subject:From:Message-Id:Date; b=ZGIYmQ7rG4Eve/QR9eO09f8Mab2bj5KKETv3BRfIZnCKrfLaZetB2UzqZ6sgm+cBdvoaJoY5bRmmy7mEKZs3oVf19F6tF6iWrf/HHds0o4/mZjOAOhq/cCB/7zC7RpuvEx0kP2gajMMfWpiWvSriTWUHCY+H8k8stHpNQ3oogIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX4n0VqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX4n0VqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1387C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768809833;
	bh=b8PIoMs1D+q2cK4Bnpg07vr/e8GUkpAgmOHiwPejWLs=;
	h=To:Subject:From:Date:From;
	b=FX4n0VqMswTWzFOKBQmt9OsvxEVADS1wXO5MAr2UEJG7d+roH3mIVI0jQlEfU/Vxk
	 XSRX/swLpSVARpa5/wRLeYyGSNo4LKgnNGooYxbrM2IEh8UWKPc0bqmeLnTB43M4iA
	 K+gxm6BQXTlppGVDiFPVjIC7w9X9mrPnG/eZg00e/0r1p0ZoqezVJ7r9OhRDTsll84
	 /U0y49fYd+JpVIYyt0nX8M9gz3+N+4mHiPDafVKVQt7RHPrWi4D7CkVfz0touNvJ1N
	 UtAbNQId86GfJcLN8q6S/PieWgZ0YHNsKXyV8wesaEvxWv8RrDHtZsbKnEUGpx/2Ou
	 gppnCoeJBJjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB2CA5FFB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880983358.24987.1144457327050693178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aef7b4ce2dcd8b8c8e3133df83f02f480a3290ea7a17a2aa07ee0415c6d1036
Date: Mon, 19 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768809833
