Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0804178F3E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767936834; cv=none; b=sYUsaljfSm+xImf+gl7U7igGKGftfqXeT84PFr7VPq2frV14/PAEAWmOqv4N2pbKr3RV+k+QJ8y/1XEC28NGAkihMX7yP/kJ/fjBUQB677cZfy3YdkPE/8tQNa+EueuAL1MQ+6a2Ez6KfNyRDbV3FI06Ndc/uR7eKcucCwNYqh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767936834; c=relaxed/simple;
	bh=TarnwV4G6Oc8BFDM7KLY6YFC6ZjnolQm740p0TwaGAo=;
	h=To:Subject:From:Message-Id:Date; b=m82/j46N/Hen9Q6u2b2JH+71128FtQ2DYhMeEK41lKTadSXQQ7QhFIVYNmiGUszbbhs2drqyMvJn7m/DdwSIJ0j/PC8/zaF0K0vl3BXJ0Ren5xQWrjvXkaTW0RgSoeefv8XZVCNnELLtahVIPA3uX/7SnUn2Eq4LMnMl08msrpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUyx1bch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUyx1bch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF0DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767936833;
	bh=TarnwV4G6Oc8BFDM7KLY6YFC6ZjnolQm740p0TwaGAo=;
	h=To:Subject:From:Date:From;
	b=TUyx1bch6WbUZW7IYSJWEzFLw/LIY83YBhOvowbiHvoOyTcxiWJthk1OtZrCUyTy4
	 hqiDWfENusvWLt7Dy40uez2uTnmlT+i3o2O551TvFPz1Si9rr8KL8lBmGqQhhVC9ZD
	 iEiGn6BzQaZeyWpsPhNS3zcRU/wffOI2akxj5MsfNKdAoA35U5bCSArYACh7ScRRIg
	 J6AzHpSXhdrRvathnCni7gCa35BuIA5Jp0QHZdW1DymWEBsYiUFDizfGCdNgI8ht2V
	 +XFL0yH+cQcCItZl6d+5o+7vYBpPLsb2A8nZ9ks9Ic1QWlD8kHtOg6jNhuaRxdR0Ti
	 36jV4CP0uHBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91AD232DF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793683357.16193.11672382465024377610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2529a6bdfd44ee1f7eab278fe92e4ed6f4a67a282b5f06d7783c9c44ce134626
Date: Fri, 09 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767936833
