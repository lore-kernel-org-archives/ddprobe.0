Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BDB3F2113
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815914; cv=none; b=sPFdllOYOYN1URqHMfEiQjjcNhH75UTiTdJ2ECz+IN8MIIdqB8lpsnvDNEN9F+kD509w+lmqGurZOG0vlWhNYP/pn1oCpMju8gUgFDXEv3GOaLtR6zSGXJwEHkmLnKQ0lr93CnxhHSj0foHv7TyvGXo8z4IdzLgeauv0Ao/2dNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815914; c=relaxed/simple;
	bh=jgIUCbRd1q/mwNduGgWFXRgIHqNfElTbQ9rqEJEPCYE=;
	h=To:Subject:From:Message-Id:Date; b=kVnWtbPucpLHcCKEbmGrYu4M/YDyf6rFrkIc/WugnB4nrQIA/BVwymhi5l8W3Qid9fgr5MvqFiBPMJeRFE/a7ew6Fb83NhL5Tioz2i8bwqiwCuXuh5ZsF8zmlXgMaIOhZg9NMErLNFlRodKxUQ8dGUuKc7t9REsNcUdY7GECg8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8pZjWIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8pZjWIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB43C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782815913;
	bh=jgIUCbRd1q/mwNduGgWFXRgIHqNfElTbQ9rqEJEPCYE=;
	h=To:Subject:From:Date:From;
	b=u8pZjWICaQ7o0Z4Q+qx0s5LSrY7QYLS/rolW2MpDFKpB95E+YbQ0auuhQAeokb+1Y
	 isDzbAOo/zi6gIMkqAXiMbeePgxM3Qedqqi+o1q9kwUCBi0pJmbU57w7eMZQxbqvF2
	 BiRQv7TZUXRHvKxGBXo0zsys9K9VCnFWu3noIOsi5rFNGSEV95IVkSpftgimCXnMNo
	 ei3p5tBxqZyUtJ1onS7mDyOYMxQBztYlBD5EZbByY44oqYZ7bfP5GCdbu1n2DUUhvf
	 PihDWVfxgHGVGm3WnTheQLPaDgeS02hXUoBJFu98q8HO7/sxbdA2sQl4qaRv8mG5qY
	 0Ok3iGACf1Yhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83B1C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281591368.18361.10748895039755450418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c1267f43784b21104f249526d4b29617fb52b150d0542a860b51521a776783
Date: Tue, 30 Jun 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782815913
