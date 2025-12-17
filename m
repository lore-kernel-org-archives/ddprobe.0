Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFDD363C64
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765978434; cv=none; b=PBQKpxrQxNKhbdDz7ZsDyizYbk9ZGJcJ+2Qfwl2KnRSPzYzAfEPbLFsg1mPHKvQVwjCPZXmyCHSFDhdLYFaySkRw47ripIixmOy7Ku35wpaE/DMsFI9XwoNiIOwzhOnjWTvG1ieQNF4potL5049UJYsq9CT7DTL1ZnKTuCPTZGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765978434; c=relaxed/simple;
	bh=XWrw3xWGdhjWVSxndcki5lIo/y9hqNFekZSnPeGgSmk=;
	h=To:Subject:From:Message-Id:Date; b=kQjNbgk4A1ptwTR8dAbv0AAQ18AsPzjVax32I0kthkH/rCvw7GIyf3ukZyJXueYwzTWwjkbZ7Wi4xVeo25am0bKNcinirBZRlFTwXEJHLNbg081Pw6WtZN8/Eq8Y3s7g58H0ntsWFirh8AR9wFcNxccT8WPj/H/akCbiktWNdbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ3OLd1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ3OLd1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3423C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765978433;
	bh=XWrw3xWGdhjWVSxndcki5lIo/y9hqNFekZSnPeGgSmk=;
	h=To:Subject:From:Date:From;
	b=ZZ3OLd1Ak8NWGccjI5mwKBrUy9BhExxBUd8eFYLMMDZuKGicQgMMgs2yEgA4qGEfx
	 1LtVgT1yGsiCTb7HumpC8v1SvXoSxrey+7bp61MJfOuGnu8ihmQDNQrRn3gr74nqSt
	 4igjCVK5z3clETS4AeexPM9QZNMB5HB0aK5qXWMBiN51ZfifJWXO7QXplzAPTAC1L6
	 aIXZVU1lXJtFg8EJoW3HF9jvyP5sF8nP7v+t0qwB9w36XIkQo3AMNPRc57WQahqpM7
	 QBJGL4BrdDpaSW8qb3AdASWtAzGBT+E8g5oAWR8xQFuGZzwxzqWtDRltvVAfYUVHw8
	 TSUIo8ME1+Oig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B03D65C47
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597843358.1966.7996325313003433017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e103ee3969212f45c02c6f1b608514b2acaec0fae8ca4a21648b849f5f0318fc
Date: Wed, 17 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765978433
