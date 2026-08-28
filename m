Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E033E0083
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787950834; cv=none; b=IOmIRkXSg2H+UuhF3SsECZken1flXYJI9WbipCNKePhU1Wkg1Dx/xPxepUamtQgOS41x3QrmhxVQN4Cl4bPCACf3rjBcmqmePSUNW2gcoRkP+ArI2qdFCaH1GQMe/C//4XGxGE58Y73kON2mVEDJI4KCgQndwvFfqS70MBFA2BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787950834; c=relaxed/simple;
	bh=93OdKT0oXKQJk+L8K+eKxtyd2vQ4Y114iLDm8aoQjLY=;
	h=To:Subject:From:Message-Id:Date; b=oMbEfiPnIWFoUkhCj6Ht2Aigss0qm7kHVZXjyxkBKFSkZNZKG87xvjm7GzWzp0wQdeC9d7yu78E32hz8B0LDXa4ET1EYh1VJGy80Lvxu80D1WuycLHzyTtux5OGWom4V6UQCNM+o5fwhLbaGf85ppW142PwZmjKFfEm5gORTd2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL83IrXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL83IrXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF244C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787950833;
	bh=93OdKT0oXKQJk+L8K+eKxtyd2vQ4Y114iLDm8aoQjLY=;
	h=To:Subject:From:Date:From;
	b=tL83IrXiZJaEbE16Rn0TLeC/m3aTDNVO2UZ22QD6xoPK+5eZzSeB8MDcpHR8dX2nK
	 PJm4nFcU/cRmuukVBoWC1XZ00MrCqSOhfYl5FSJzNQfc+qTVqgc1PhXz45zGtQqWpa
	 uR1SpdRu5k7r+AIVZfu+DhpEqOvRDSAgiJj43ut7w14Kqy7rGtsmGgbTrEdIX3Bv7N
	 iPgOBIZpD/6x365BZhsw4rA/NvWk4kjtBNBA/v75GzB3ZiM4RoryD7wORUbxgQFI8n
	 Ch1CPjqwDM8Na5qvYXI4URJyhxDksOhTJIYgnxSrlNS6bfnc27Bac2T2bUKv1SJNZl
	 2bXfy+XcFeUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA24C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795083369.14585.7552066254745034655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607d56865f64241498f1ebea13c7a38555ef22884835781faff25306e1d9dc68
Date: Fri, 28 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787950833
