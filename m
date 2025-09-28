Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B07F33EC
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759022994; cv=none; b=N/is9cvmrWfPuHJMItsToM1BWp+5PZzpmXgoKxLXDafAGcWuq10pwErwqJuq4HRJ78IYl6UxeVBmW9+xbjjMufacMUuix/xHTRlOJsSM5/MDh2bYm8zfSISG7ktHtmbxzt0anOevf+269/ZQm5l554cD2aTkc0jmAhQ6sKJi+S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759022994; c=relaxed/simple;
	bh=FhiRaDA+A8wMgZn2US42mhBDWdtRedRskGI1tIHQhH0=;
	h=To:Subject:From:Message-Id:Date; b=HT5fR6jnuAC83V+uL0yhr00qEe1oRPFGZtxTz1Yr2zm+kKlKAl628LoyZ8ib3bwQ+f3Ith7ko6632RQynjMbgOIJthDa0KnBC7XT+TxYBWDbUNWhHeI0OEVCxkY9UrfPX6tmxgo3Wpit68rwVk1EN8/jqthv+muE4UzawAvVtC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QX7NVC4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QX7NVC4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B5DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759022993;
	bh=FhiRaDA+A8wMgZn2US42mhBDWdtRedRskGI1tIHQhH0=;
	h=To:Subject:From:Date:From;
	b=QX7NVC4a9JEjqwCK47EMq+vd6vRCD7nqLkIdVlnjIwt1m5rp6mSbUQ/ivVO5rH+PH
	 J9i0DqQY6HVlHh31jatqGEo549DVKK0br958HeRt4EzFF+aUGFmaWugFeXUpzBfNnH
	 eVlD2Q6IoI9nFXCI0z54TLM+vMKTxafrCGDHdRXJAMZ0MvN64iW3KStK+2giqy6rio
	 VU5GbMD6KFx6rjMQdkcJF9zmqScZvKUJn1/YAteO/FKHw6MSdajQS8GJzdYO5HYbRK
	 Ube9ei73wksGrby45t1LfSwDy9PlVZmo3G8Dvo4rResn2xy0iGvzc63p5yPLmNrUyq
	 APf50TKojDLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDFCAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902299358.11502.9279252723024784454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ab1bcc6be16da590148bf647cc4c184d453ae90f4c5e5b126be66027b9452b
Date: Sun, 28 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759022993
