Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1932619EEC8
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726009554; cv=none; b=g41QvFtVV975ll/N+8d8J6uItjqq6fCWzUyeW8+aHwttKQrgmebNIcDBgdVtdk5CD/n0zkSiJNDFueTRMFT1+sfq7etEegQP1OgP6zBwI714k52ntjZ7y9O+jIJapHtfF9GMQcz34HqHjyFlPY5ZGFMz0AQV80meeRXmBVYohb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726009554; c=relaxed/simple;
	bh=0Hj7ELQxW3w9X5QPvzlt2ngYmcTkv5HrnVa7Sp9fs4s=;
	h=To:Subject:From:Message-Id:Date; b=ODwajW51/oLriQcwsH9Cekurkj4tgODpQlXn35T8bS7wjwxkpfNJo8ZbsX4QNS/7uMsQdA5sHyalmcXJMuV/JIFxd0l1RbfBABumDflBLxFPGep3ioagQjxrbU7dY2W+l5uu+QUAY1t5lJdHHy0Wx/ESZzxyS6H4dPkJu2d1dHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj7+dEfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj7+dEfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC73C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726009553;
	bh=0Hj7ELQxW3w9X5QPvzlt2ngYmcTkv5HrnVa7Sp9fs4s=;
	h=To:Subject:From:Date:From;
	b=uj7+dEfLVH5PjvvJxWUG8gTZlpSRYwXyyEVRQnfNAkPAyDYdPrRr5mfViCFgqPSAU
	 w0Ga4wNMB4/vo1E9nKENmoO5aZb9ASJiwviljGN2U4idFH27tHFxWCzlqs+z7sc9aN
	 4IMp2z99Aemv4Ah61JsPMgosZA4hkQfA2IFg0cGwIIF4Hm3YsZIs5YEMF4/t0aGnOp
	 ptyc3eWjL+xC3rjcIrJrjUj+hZkYsw03Q8A6tXvLfh69hpVzdkH7Lz58MaRtvOHyg7
	 db5zQwAMuy88VQZRxgkAq6qvJYcqaZZ969Qzr5nDoxX2npOPr/hTbAq6+ZVF7i9q7O
	 rZrYtsVXxK91g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D26DEE01F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172600955361.28409.15435070137632653680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b847715ed3b09a75cc2721e4a2395b459c1de7f8af6d2235295ef04e48ff0627
Date: Tue, 10 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726009553
