Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436CA3CF020
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783793314; cv=none; b=CApDbzmAO+zfq24e4FuZasGA/LvsFLFc1xgTuBwou5xkaFKIVju3TziyKe71gFNbMrwXT1yNw7S/gpa5b2L5U3Pqwf1i9bcMuKgIiHv0h5PVyUUdRCcOVNp4GUQVCUhSuVvbWwoebCXvENcHSotr7/3JZhI17Mnknt7WiBC+Jww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783793314; c=relaxed/simple;
	bh=RmpMd9F5sLGm/2NMBwb6HLYUfifA6mxlLfhokC6V5lg=;
	h=To:Subject:From:Message-Id:Date; b=gfh97sIgKJ0LKg6OBBNz0PFGT1JnZKZG/g6dfMFILaOQFFjrEH3zV7c0zVYy38FXS2t8SOY+b3eWr6VuO1HCTdwEO4exmN0u+cFw/XRvs7J+tO6Y5fOIvQaOcuuIWd+plz3bxWALKfZpDphvldnobJfeegAXwYpYiMXRMCwW4/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJlzFTA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJlzFTA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF002C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783793313;
	bh=RmpMd9F5sLGm/2NMBwb6HLYUfifA6mxlLfhokC6V5lg=;
	h=To:Subject:From:Date:From;
	b=oJlzFTA81rUEOsZkrmSN3vAkOOcMnQgCEmufuzt+Rl0TC+dX7Wj310wZ06ZAMjQ4u
	 Y1wxIUx55J/crtUTXhMbmm0XVazTJNMnipLL8oIkbUi/opp4E/OGL4hWxS8n0KUkw4
	 i5bPaRl+u6goUUpEL1wuyzSc/gHi8TRSWXu1AzznNzjbvJccCnGAZYzX7Hxatoqvx6
	 uaA05Wk/VPtfZPgEYvlOAAsJtRvzvAu+XYRNPRalEuTdSAeU/m/y4Z2xTZITPQMQCY
	 ztsl59q3H97nktn8/PgWMu1/3TXx5od0uM97WVoP2bDeXlRUmg9BWiRrkKpxY2PHuO
	 5kiAmz9dZFdbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C8C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379331368.15849.16680547344828862053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1a763cc3a76878743611e75e4a5c064c0b576865f5b02ea1b60aa4c1df9470
Date: Sat, 11 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783793313
