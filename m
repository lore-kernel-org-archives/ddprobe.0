Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4D216E24
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750957794; cv=none; b=UrtMIEGkWGFcI6WYO931gIFlLyCRPh+Hq9q8T9xrjoswR6r/TenuMTtDZTH+2SG68g8dVaPGhOKquN9IZh4/WJppUJsuXIWMXDPw3gFzSyxdNdL/ovdmH14oRJTPZ7snp6ahj9RDfSxtEVAPZVAGznArZFG7deVpB3G3zP8CUuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750957794; c=relaxed/simple;
	bh=ZHreF37Eac3qv+5BxzTWH9mvdYK0/TPiM8EBWNsPvaY=;
	h=To:Subject:From:Message-Id:Date; b=FDyVGgB7IpU0MczRJ0nW8+AZW6J98f2npncCXYLPCgFz6XEClCAQd0E7+wtqeTLYPMSspduOvEqIYsWgh02qzmSQ6TXYbogp/s/66ET+uS8Ov5t1wcQjvvunVFN1kT0JsL8rC84jlJoub19rzQLjkjVs/Ncgd0cbW90fcLxtY2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTNwaxvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTNwaxvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A0AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750957793;
	bh=ZHreF37Eac3qv+5BxzTWH9mvdYK0/TPiM8EBWNsPvaY=;
	h=To:Subject:From:Date:From;
	b=qTNwaxvnU1tOFoW6EKCq6eQZzbH9Qk9nlnGq9RwGTmP39BW1TQ0pW5M/PjU0dSQO4
	 ybF8TEnlYzPrxjPpsbfBeO8nL1Envyx3cbtxtqwYWg3WvAYUjERBiv8xwdvocIhaM2
	 O83waFMcLJLgeLkIcTWV1KNOOmVLvFTjNPV+txiIjrzxzMkOGsSbbr9WZttgX+Nqaa
	 u5e5VUhOKy+bjQuNprRsYOWS5GOgSd3LYYK5y75CBavxM+Wlvz7GBFUbLXA0USZz9J
	 rw/5OJ08gFonOS1yeQRXc03lSsKqzryHcGjuLghw5GDb5eo1j3sjC8f+aluHPi4JIV
	 3yWuw1cgfxYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005CC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095779358.7847.10974509884572121257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36ac25ff804227c238ac8f503d744b641d448601811c746278bf61728dc701a
Date: Thu, 26 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750957793
