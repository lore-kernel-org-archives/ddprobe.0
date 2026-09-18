Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B880518122
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789768234; cv=none; b=ZVUmErVJoC7O7mOm6vNV+hvUtRF/UrFqkC367mzxqEU0oLjNfZTI9JAELFFmqq9qHhAiGGovnhhx9Xw+ZHctEM40lYgwKcyLTKBivbbSREasbxJ5F7ThEidEZ8L5Lo5XnLP+1wBwOw0RqtWDnNWX0lQRBkH7PSj0oFnztgJ8KDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789768234; c=relaxed/simple;
	bh=PEz9nIIHRcYF4gt+qlRq5iykb7qIlg9WBrXAdBljbrY=;
	h=To:Subject:From:Message-Id:Date; b=DD8FXZsTcvyOIsQ7OHKyruDX4+kj4PzcULiD/AvvY9INmXKpyXSF3cntREJ44koQZDmCxhUWOtkSFfCF+52qVSXauuB6/rW3gD5C6ATL6/70FniytCyrjQohOcCUZ02/A0+s6NxnqA067U6G4TWaFykAE4Giq7UX0FOwrhWSwIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRqdAq1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRqdAq1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB30C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789768233;
	bh=PEz9nIIHRcYF4gt+qlRq5iykb7qIlg9WBrXAdBljbrY=;
	h=To:Subject:From:Date:From;
	b=ZRqdAq1doSdyjI/gVsrEMGJS9k7U2or9xpROO4i1ArG0aao8OGRY1s6dEGT5sXWmT
	 8CS5HkxWWJDBQYWS1NdeOyZBHV7TcSWB2YLvnuiIQjrp7BVFGplIooIrPbtuklRZUQ
	 k1arwf0Qy0KGfTVhqZx58xAmLSAaOnmQWFhIXFUYJkzuAyp8T0Ib+em0sg7DLQ8Lg1
	 y4aR0uzqvpCQnKsXoJUqPFZOkwypAl+C3fGRe12K3n8TEF3TMsGl4uBxK9+otHgyZp
	 kWgh3BDHPKJ6AjjZUoS3OIVjoqBEz2NYG6sTk9n2Ac51FJmPgTCMSIejZig2Oy0o4r
	 4ylF59SWE86qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB7DC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976823369.28588.2005463855619731980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e107b2041edaa627003e2d02ae7b2573dd15449e0fe605f1de05812da5ee5e42
Date: Fri, 18 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789768233
