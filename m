Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506E82D7817
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785555634; cv=none; b=pCsOnrzDZcurUZSpW4tpfaAWvrVQVtNtvKEbwgj7sunPiBpV4hWt+6+pQ6Lot+Zpoi18xmErRYjW60uLKgZgJmhm+fcSWbQ5+Ul+CvOgKrNq1ERw/I+u6LK1z3YpjsJZ+5YagbVJL+HFYDDIOIc0M4HR9J7FlisiFzGoLt+sDbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785555634; c=relaxed/simple;
	bh=zjkb7MnqUM5CD70enWyGAzFpz+VSxEZKDPs+BHIGseg=;
	h=To:Subject:From:Message-Id:Date; b=R7kgDKGXK0VPD5it4p37wGQwYDWxiIE/1f+Q5K38VWEnq0gkTY+h3di1oa8eN28q7VpI/WBSrA6+SsputHOzm1ax/SiBUezge+1NuU9T9hY/HaFWvCkzwA1E4pFw+qMg3xPkqzTdhO5RY42L1tdRB9BKfounUCwpUGaU+MslnMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg0w8DE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg0w8DE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC7EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785555633;
	bh=zjkb7MnqUM5CD70enWyGAzFpz+VSxEZKDPs+BHIGseg=;
	h=To:Subject:From:Date:From;
	b=jg0w8DE/Low6NdyyujlAyRbJxhjLNLxBkBxFT+QCvwLrQpW3czu4iWgiS28kAfjn/
	 bUgfR3s4DwtrhzOhQCT4EX7PxkOUDYY7TVlhuY9s5cVcUhYp8rXw1bC2hXxzt4XGgO
	 RjykdZudvCkPQuhgl5irKP3lWOS22q2ktMyvGAxd3uKe0a4oiKHLmcd3KuwjvN5txS
	 XWyYc7xLvpLfXWK8QCZzIK50Lg6WbfCm16+UMNg4BJb959zHLdUENo/Hq2Uh2NSeH/
	 TuXGIh0nrtxTjbG1K6D+hVY9zR8AhSRp4qpgGT2OYrKeoRk5bUNoesq2TH9nYkveFx
	 OUTkTjnTYer+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAECC55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555563368.31307.1552365417519804324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1756b13c402053aba9b46f63e265bdfb5c01b4ba0c9b2d1986d843630e583705
Date: Sat, 01 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785555633
