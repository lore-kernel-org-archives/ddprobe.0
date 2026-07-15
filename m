Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5ED4A2E0E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784147314; cv=none; b=h/oIUuU/pcNdcbAIgqWNQcmb69cTpcgploshzysmwQCNMstwCFPBnNoT/NgSUoa8xGPYSfZsLFRorvV8vbTaBNeOjPE2zt73acVhK8S9L+t1inJWr37dWU/qHSbtucdLVF8bgDHv4pNVlS2ZAoylCBz+5RW3OhRzn4STdYkSfRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784147314; c=relaxed/simple;
	bh=mtAuCSlySCYRnLjIY5dIIA/sNRGgQ/959XNUozQc000=;
	h=To:Subject:From:Message-Id:Date; b=tvAoD2WioT+mq7i1BSx7L5+X+gernVTa5xO9uQvKpvuI54mp0ABAMyoq3ZX13HPK4nEaPfs5fcAXveDllcwds5KVYLH86FB3TImIoSqHAvtPJqr2KGXhdDNm9JJdVU0316JeRVGjujDTCRCh1Lvc9zWUW9+5lGWkhxbKfUYaYyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBw2FfQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBw2FfQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C33C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784147313;
	bh=mtAuCSlySCYRnLjIY5dIIA/sNRGgQ/959XNUozQc000=;
	h=To:Subject:From:Date:From;
	b=mBw2FfQXXiIYNJpqMK8SJyp7xikDrrZaL+ztr5cPDGxUrwipaLN8MsWT6Y42XPy3r
	 dQXL+MRyh3oFcumGrFxt2JHA3zDIFpkWh2MEBQZnGBSfgnzxhwwIQkBQc8GAAUoviq
	 f2NLX/f9PVA7wC4VYLGOizfEL4Y31KAxf1uVx6gvwJZkb11XW191MknQSF8IyBzXV2
	 Od/mYMFMd8ntAO1cCeKcUdnHyGXh9nEOQ3iex5KUuoQd37V9T1NQV7Yv8Y5jh81lk1
	 wFywWwz7Ke+bgVASptuMbO0/5I1fXYgN2v7N5a6jE4/h9qQ3Z0+BV2JSR6i49z5TMR
	 DlQCGDK0Q72Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9EEC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414731369.5262.12323459799738848079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165b0d8fab3d878beaa4abc0a95d590f0b52974503e42648b9724a1f0d2c3e1f
Date: Wed, 15 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784147313
