Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285E725B094
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778788834; cv=none; b=A5RtK/q2CQJgiNpwj+Xff/8tq8LjgnYApeu2hs6gKjHXMqVmNqvSP1wiT2gT6Sj37eQeQLYkm0wxEhO8GSM3Zxj0U5NzmPxHtlXYq3ljfQ8UzPS+Lw3CMPM/mSY5dzmtQeNSX6IEMt8u7AHenShUjaVGOdy515mG1t5npMngtPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778788834; c=relaxed/simple;
	bh=b9pZOXx33uTKoVIpNXrlwBFCwTG3tAFmmIA3V0+tHKg=;
	h=To:Subject:From:Message-Id:Date; b=PHUbFTkpaBdwKINIiz690JNhEVp/YWO6xggav7zL0xAkTn3rtY8KZxmWek1MWQ6ogjBtPinJPXahzlHm07bSX5Qxj5mA5L/amQcH2JWafQQs6mQMJkNfP5y//nmw1D4a87klxVNRrS59LVsvA3F7plwddR+a62Q1uB2f5pbHDsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDWFwNEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDWFwNEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B7AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778788833;
	bh=b9pZOXx33uTKoVIpNXrlwBFCwTG3tAFmmIA3V0+tHKg=;
	h=To:Subject:From:Date:From;
	b=DDWFwNEwmxPrGkBRzXdTKkDKPUdHeqZBJuAiEtZ8V7taBayrng2OQUwXTLO5yF17K
	 TljrOgUlfP5ycp8wKWqqtMpSSP7cZmzyDHl5LjI1lPSXP/ojUb6ppg/opTwyLg2VMm
	 hfAMxVCoAnC93Z28qHZa9go4erpd8JVrq9ka/O5z71l5FzZrICzB66JOpOp5Ptk35Z
	 JeDS20mx5s0lYXQoIApQFx0bemXe8mhCN61fI/4rwf/yRp56Ox3oakAhSrQJsS6U26
	 2zZZ4RFQ6SXZXpDNMCyUO67ljdFU50cusyRDQP/0uJel8fxypinDPk0JGGgnrhWX1c
	 UblRGpwEWfEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA49BCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878883368.4367.18003282258961978726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f06266ef4334295bf0e29c524872eaf61da0b88bf3cc5b0a80ecf77390354d0
Date: Thu, 14 May 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778788833
