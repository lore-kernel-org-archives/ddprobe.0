Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5852E338F
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741156134; cv=none; b=ILDjddl053e3jLQd6/Xd7DoCWZ7xiHQGXbgleQkepEIrKbtJpHF96lGCMfCTG8f4ky/yu53Jop//ECA4mu6cQoVDEXqlKwN3Yx3INVVqAjpvKMfqVTAGcqNRXWpWnG6RAdR1Y1lNji9CaH1QvZThWC8RwI1knsd0SJvEBf8VvKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741156134; c=relaxed/simple;
	bh=4j+BCULTHnobGhdoHrHDgu/fQ0s8SX2IPRKKlIFX0oE=;
	h=To:Subject:From:Message-Id:Date; b=DQ2dU+CC9y6uaXWarnH0FW6QdImgO7/QBrxXUUi76xOiiu7xCA5JTlwBl+/O4w+4OHWw7T/Sjf64TUrOX7NXbZjW2Hm8btldeGbpZln/GiibgJsqQWJYl8mTuM3dMQRFPjcj0NqRWJ0MoBbD+DdCskZKk/htMbksBFEVqVxVEoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDpn/c09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDpn/c09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBB3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741156133;
	bh=4j+BCULTHnobGhdoHrHDgu/fQ0s8SX2IPRKKlIFX0oE=;
	h=To:Subject:From:Date:From;
	b=GDpn/c09gJaRrXbFkfKTRijtfaXH7wXQgKV57Y6xBxaj0qSalQcdt3BRe4iognWX+
	 s94pSwOPSTKWeulgzCC6OTbJh6NNO7FxF+KglOqclUnFD1MklcaY1Bx1ITP1M2E1xk
	 ooga94Xd/EQu9JuGyTUCvst9X5MxO0wrrKycXdTdG192jv347eiNBgNW4c6r5lJeig
	 C6txWbnVNWDN88pnP1HDHRzbyRykb958S0p1JFIZFxfhpD4+3Cud+MzpGCzk9CGAyz
	 mWC6WCWavLLP/oRS7/qlTZme8L2ZqdWoL2ZdJBf2+QvIziHJBiPMUyzSr2pBn/0Vr4
	 FHpsoJlSbKgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF4C282D3
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174115613361.12673.3388375078824858021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10465f5154db4867d2df066122539135daae759ca180f7b0daacf194c6c64ba
Date: Wed, 05 Mar 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741156133
