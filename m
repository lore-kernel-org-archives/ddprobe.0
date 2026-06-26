Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2D33E5588
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782463054; cv=none; b=Kk2GjwmyWU7Vq1OdxWRH3GI+7EVJECsNMYcYFA1nL5UYPWtZIrA4uOq3fELVGE8iCRk4Ab+RvyIfnpGXYZpqOVKd1598hFRaHDaCWyBG2VM33hXRUXVBDQxFX3At7Ddu42CijKSVJHJIefikYe+SCbtiq2rz3DI0zuuJ0BNhEEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782463054; c=relaxed/simple;
	bh=L8dOx1j5Sv8oBmCvgAK1aM4ukPq0jZQ0Gm4DpFcm7gE=;
	h=To:Subject:From:Message-Id:Date; b=ahRZjjr2CA2RLsWOJugykfY/8YcdAiexdJNGwqkdxyndX48kGzDXdLh7Mze0PcNoUyJCKQvKAy38Udu1huSzEoGQ0AyV48xI0iTqr3jpHDmQrcKMIUpI+JUWujEj44jE62tu1CNnLq+X0C2k/yhEMORRWi/Z/USZDiQDnSJEFO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcCR/vhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcCR/vhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5D2C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782463053;
	bh=L8dOx1j5Sv8oBmCvgAK1aM4ukPq0jZQ0Gm4DpFcm7gE=;
	h=To:Subject:From:Date:From;
	b=XcCR/vhJHE4Abw3MNSaS4BvEuEjiqID2tpZBNfpoF7NrjdQ1vQcegjdowxZ8Y4BP1
	 FArIas4/PQguwH+yj5rSXVptkf9i8HefMhZgIXMUp9hEpTk7CzGAaHGoAJGrquz7QA
	 ObBX/IXJN4dH/qlBL6WnKA7wC/o6sOD+IYyJjOfuBYTWMpqyOfl8PjjSa3ijYGLhWo
	 yM2qDBzywdM8yycSfq6zGADBiCJ3oG7M6WbsXmz8yMzNWcVA5jy4T0ZJ9HzFavx7oI
	 aXP1rdMOYhuJCXsmo/El2iguoX2oCRofUckf+qXixWF3L8ccCnMJa404qkgLxwMPxB
	 ucmeHGjv0A9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD05CCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246305374.2255.5367219676179015917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb7502509fe4ae8a145785d7b5d3badd8dd81fdc92a1cd8cf2c741cb218f4af
Date: Fri, 26 Jun 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782463053
