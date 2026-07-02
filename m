Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2496063B9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783007914; cv=none; b=aA4Gl/N0L5QrDQ3bR9M80OUQmbbpRaIuY0s0pvYsvv9s65UPBv0ZcDfy9jnGpAcsB5ga5Dvq3EQDGwUX6J/1ktyUKzFW2A7se4z33U+hVjZnKY+Dph9lVzayv0DDxAHBIaNkwdxrdVew0jxfg0yRZnWQv2WjjODKiw/Uai3yEJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783007914; c=relaxed/simple;
	bh=tg2EB9tnXh3OL1Wuy57aDuVBTCaFTkkH1rorfulqh7I=;
	h=To:Subject:From:Message-Id:Date; b=PvKe7nMKHdYtclZxUDfB97RBkEkXNPGYUCwCSQUvsrHKBDvPnhKSJAonxI8lZoaTfI3P4Jho9RYADzgpYWW+KZkfJ0/wU3+UZD9vvSmMSl06v2qbNZa1FFwEilsE7nqo9PbH7tQwfL6aTiBnOFJgt3bzhx6w4jehSxubWlvB/Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCQs0y4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCQs0y4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEE3C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783007913;
	bh=tg2EB9tnXh3OL1Wuy57aDuVBTCaFTkkH1rorfulqh7I=;
	h=To:Subject:From:Date:From;
	b=VCQs0y4QKZMn4E50/u6fM4P7/+211v5ZuXCuD82kmXCNgbIgdM3nHRehmjCh4unJb
	 ZmRKzCPShLw1wjSt/0PZ1t605zDTVyjHDQ07ak4ZZVl3D1TmezBHb23g9iCuVYTdIL
	 w69h3TI2RFCOc/hrAXXdJuS8txDWkq9CSVYK29GAE9Uxuuc2d6dz8Zvt6241v75O8R
	 ishICc+8sTx34/jAjMCkBC3SyM4bB7VM7LbSAtxRlxLcVAooCahAAOnYGo9wAqElHk
	 Qx5QJ+Gb3VIQvcLPEOHeOYsOyVDEMZJQhOPc8Y8/HUSPhT1luHr1Z4j/ihp8LI1x28
	 OmbRgzwziFA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A961FC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300791368.2280.4399272636153562918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ce4b7d27f90151b5733b9ef91abdf52815d8c92ccc8a230aa229529f0e7cfc
Date: Thu, 02 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783007913
