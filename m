Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A932E2DF2
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763766714; cv=none; b=Ka/IY8XmQ89IsvWsbTD8UdllmNAjqr93L/ky/F5LHAMUDaEdI5sSNBCYZN1i8Y4+1lkWhUgLGh8/JnjWFH11fp3LGy8PV+B+XK7dZFCv9vM25O8Bvq/5H374E0bFsy6xCl8l/bO1EO2tU6IH0j1vLz5gPB+m0nkubK6GY2VteOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763766714; c=relaxed/simple;
	bh=RuehXEHx2rsYcaBojX137A9+nH6iJDjj6Qfkwz2um4M=;
	h=To:Subject:From:Message-Id:Date; b=Y22xTKYFjIHGRQ9O4LKbDE+TwJdVjziSGORDUE1OthFk5w+4HW1UJsWc+Z783U+S0Abmq/KnADwt8KT3EiI38unpBW5r9jMPFMzZl0ogLeeaSIY2isM0YP0BwZy24XHC9LBeM+OwOSrqZVAEXX6PdQbR9rXVx8r6r9nXY4nMleA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Raw/b9Kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Raw/b9Kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8966C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763766713;
	bh=RuehXEHx2rsYcaBojX137A9+nH6iJDjj6Qfkwz2um4M=;
	h=To:Subject:From:Date:From;
	b=Raw/b9Kwh8i5XfpC0vvEvBpNzu6PWf6i9JTv/b/tiEHOmHKOSt2NgPTi0S4lfW/aJ
	 5X9IBL/K0S3J8bl/c/dyNOvx9qqGWu1ldelGchx5d9x9ve+nWQw2ddBSQPS2YGY+sA
	 gyHr2FRuZ6kZs+z+5/GnPvHGY314I3v9CC1PzP7XyEjl4nqVN6kUFzLIrpn5jE1T3+
	 WACD0TB8AZJjzpBmPLi5BuM8XXYt5rKEjaqfImvkOj1fFyAG8dWDWnNDgiWNx+GfLV
	 kfMXMgAu8R5IfoNSpZIrx1jxkvIsY9At3v2WAO2bJFB5BtBCO1XJ/BHuphe/7mAwDC
	 jjfSF/gqwyfJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C3CFC50F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376671358.9264.13665169326953111860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ceb026f182a22c2b4c11dab7be10e9e61e761f7d85db2d06151f2f11207660
Date: Fri, 21 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763766713
