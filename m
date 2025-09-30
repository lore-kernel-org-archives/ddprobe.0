Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278621C01
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759192195; cv=none; b=jprb9lBO5V39PKJYcQtJpsOeqyST2O0cOoSgt2/wQw6ZmIZBBXSa3kdszgeSAG2h7U8UPAmyIqQBMfmOeHMBmNavcd8xv2HXADQCXx4d2xZmLtfrhmozwTWwTugqMayVsSmISSizIIoyq6KKWBXt6NqGUhIt63On0la3oBBr9E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759192195; c=relaxed/simple;
	bh=cltPNtMF2iLWWTXcydfLrYA+6Ky2KW1KxGZMN+G+PW4=;
	h=To:Subject:From:Message-Id:Date; b=VdNzqbJ+/Ou7wu9nFMjD6UVrjWnuLhMTO17hvcj2tHN7PpF0VISc1yy+70VxEDBAXDu2uB5CNWpYcd6ijo7uHo/9fUKxl8kERxiVNSjFOftoo1bfu2I+zMprEZsWz/9jSUt6UnK19/dc8N3RUBycGEVUD2DpKnfgZks17Mm/kxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/a6iXm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/a6iXm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9209C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759192193;
	bh=cltPNtMF2iLWWTXcydfLrYA+6Ky2KW1KxGZMN+G+PW4=;
	h=To:Subject:From:Date:From;
	b=t/a6iXm+d8lOU0FQuvus3ajnbJ5tyBzSMde95guvyTLy8kNWP5iquSumRVKGYA752
	 8RQNRUVU7gajZ/MUOArcUQeXdzM2lKqq9NZyz8iaH/hbKpyHsT0k8BJenwqZhXQoL6
	 S6yKNDQAS7CsGdWDnhJQI+cgOjmM/B2Ajm5RVuHXnaW0+9X9s0YGkts3JMLUXcZI93
	 KdoPPWKuuzGbtILDd1Zai3BQLXkOVB+Ac8L0Xmr3C05VV+MM3go3JALKJyAftsiqTr
	 J3zT3VUKPfYrKXW76rToav40amc6wWtAiZTaWNPuXoSMtmUD+HFnhN/EUsheWXdevx
	 CdBNj7LTgrFXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F84CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919219358.27021.18046130770220025981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fdc16f841ee8ffc061ba8797129a2187bfdeb5ae60a1366bf36085d731cd36
Date: Tue, 30 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759192193
