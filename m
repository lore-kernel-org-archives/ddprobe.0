Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4D631A570
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772987094; cv=none; b=oJqsvo9xLKxHvoIUGx7gnaXvRVR8Lr0JIFmWvpNshdg+MuL4QmZWXnMjsszuiTDkWGcDu2Uz5FtIHbdRr1sXVHgDZSplvaqettvYvbnz1IyWIUIxGr5MG1mj5pM0p2WnHRaaUG2+4TpT/r0Di6UrBKDnoCbhZPLNNNZcRfetK0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772987094; c=relaxed/simple;
	bh=dkKGjA2k7170xkvobWN8vjPW7G82rCioT4qbNOT3Hys=;
	h=To:Subject:From:Message-Id:Date; b=T60Ks/yo/jmhW6QINOq7w8/IIXUb9H0rzPFjkha2XB/i3XsglBBVfMo01RoSafohhDvAVuzL+7dPcobNZ+Hwv2rvd41c6tqVqCc1xtB2kS566eijBciEitYmBq7TCAYXOnXVa7DBvlmrxn9alLhN4NDODPFISOkp0zRZ4JG+6AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAy7Va0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAy7Va0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1081C19423
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772987093;
	bh=dkKGjA2k7170xkvobWN8vjPW7G82rCioT4qbNOT3Hys=;
	h=To:Subject:From:Date:From;
	b=PAy7Va0Nd/LkTQTuyeMDifSsg1R765u73PXNPlMaRfBw7J2bNUJaam0wX+IRHeMtB
	 U+XqNVNY+eR1D+xcVy6LVKjPxbbS5jh9iQVb62Apfgd/1ziz7CGDY6m3ZXqyzCnHbl
	 cpe0wHJEotbgeYlxjFJ00arMGGirOJX44EeLvALC4lciEDb+Qgon0tyJllvYxatmSq
	 jIR4noQtuuglzgdTqLoMxcIEOAO0ddeUVviFRYinmOyWeSLh1HW6ZlFjMpYhG7+UVh
	 M281JLI6i7KoS/qg8ERgq49hF56h1yo3CDb5uB1BGRuJ0WDZ+TpoPx7ior349T0V+P
	 EqWX0ogQgoyRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D38FEA8537
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298709363.23552.10340174145603956578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7393ab327be8cf51a1ca57b3334776a9c9bdbb34c321d53cb8459cde87ef32de
Date: Sun, 08 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772987093
