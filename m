Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA3E2931EE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785062434; cv=none; b=XpZDWcQpOxduPRpYlfzS3qLzDzwvkYJm8pD6HGHUYfKeizgSpFCwPdBrUGMqIs4CIrRwXsosw9ENOCZMtlG5l1dY9xXhAK5g9yYt8ieQPyd4FcX/n78qLfUFTNEh6J6Th6V7V7SCALh8IYZqhsQ0KUXCCJrfhkF3vwNPBzerkww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785062434; c=relaxed/simple;
	bh=KRmmXlBvDjJQghIGkg+hkSwS9A0VexZAK4gIAjFBD1s=;
	h=To:Subject:From:Message-Id:Date; b=QuW2WPfpVzi13G4YZfkfJwBS3BUpbrCjJCGNM9QCwKrY6MjZcXLiyBmwcLMAY453BiM4Wle06hkMyT6K6Wc+C96xofwuNdzRQ3JpQ7URn2puYz3glegiO5y23muEhUWFYpO2xvCcyN4lkS8cfbYlWVxnb0xyBeiUgUPgaLDNt74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxFMWSX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxFMWSX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3221C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785062433;
	bh=KRmmXlBvDjJQghIGkg+hkSwS9A0VexZAK4gIAjFBD1s=;
	h=To:Subject:From:Date:From;
	b=SxFMWSX2awjas5fla/jMejaw4BQTlY3Z6TX2c3TAk1HbBZdJr+l+rvZwNJ9j++Ygh
	 SO6SKsHnjSgBV92hlEf6Y2Sted5Zq/Z/fWFBxRHTUz4M6Z5e9IVx2utej2e+pLPAIV
	 rgOdIACyoLhutAqPMTy4M9kzF3AqTVwfVz1CO+Stv4HW8iDaFZxlkenXJRmJz35AlG
	 fahTlMuU+0dLYwcgr9UllyWV2F5ud6zxa07ASEhbbAGUqTz+hNaO/VazGyw8kvZkFL
	 8JnybTi/RlrlDGOlJC1RZd92i3FK3kMasItLCGmtknz0IpcP9RIGUPKnLcaHONXdYv
	 3FP8umsWsQxDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDF3C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506243368.30373.10633926506862377190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c671876d1d2810714bd11e7f2f99e6749cb764ad6a38b32acb42fcc6417da50
Date: Sun, 26 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785062433
