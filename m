Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C5C168BE
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729961754; cv=none; b=Jr2yYviULuHfYQrdTSA9AjIAsQz8FH8ANSH0f4yevPat4ZkX4XwgBziZvnF3NMG6k9FPWBtogtJGkKp9QOpbPNqnEtQ5A+KBkiD3UgTUSjQiwqACcNJdQcEa+qHrZKoNMtUZBo7MuZLGwiSu/htEz67Pk/HVT5NFmr62lkoXk74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729961754; c=relaxed/simple;
	bh=OHNqBg6PqAZ3aJszfd9ZnsiLyngKojNC97RGJ1r78SY=;
	h=To:Subject:From:Message-Id:Date; b=cnwjsBRsYa0J0I8josLcQERzZK/bqZjEDQ8sDFHLQ7vkBbmDOXMRDidd0jMnH+1y4tiJRX/jDIZu0O7qdDcrZOWAlsJ5N4xyN0D1vqj94PSRznbWaiYc531EX9T2pqrWX5pBtBBMQhXpq6RKdFIIcRdpuXP9ZWcAXH03Zn4LBek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO/ET4XC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO/ET4XC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA251C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729961753;
	bh=OHNqBg6PqAZ3aJszfd9ZnsiLyngKojNC97RGJ1r78SY=;
	h=To:Subject:From:Date:From;
	b=IO/ET4XCAsECBFkR2siEXEI40V+LWLpCxAUD+JkrK7QouNG7I1+vLalYGkHlMQdJr
	 79sQleTX7qqDUIO0/ZdN4Nu/8YKTEgAYKzgKL8D/eRtZi0Ropw2AOPr+Vj6HXUavF+
	 7iIoPjsJlsgxXnL6Xx5tKj+uWgx8FVw/319TG6QSPJ858ZnOP0IZ0qmbswNYCb0bwN
	 L0tw7Qw9GQddzegzqK9IH6W6JGXrzNECT1lUBEgDo7MF8ryPB2hTQGYnVdZ/v00VC7
	 SEUOdrqzvcA7pMZowYxLBiL9eBbNx8nT7CKnLsKJq7foGZVZiV7xjrJ7KCxXrRpkJH
	 +MHh+9JdzTUWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A0D10BFF
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172996175359.18416.2656352109099983667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9879d4513f8ffa434f3ee192ed5c48b143d92c15f9994e477b32caf4f4eb0248
Date: Sat, 26 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729961753
