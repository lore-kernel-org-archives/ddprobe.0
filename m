Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736126FC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770077034; cv=none; b=dZUE46S+1xJQJIFDgbNINttqBO1/rs21mKjKKTersYBQDY066GgkA2nBi4b5o7N5BsQe19p8aOCyAAXFWLIYXCmFBfB70FHJ5mFZ/4yAadRBwLx5eobyhAN90omkQdmjUBYeAvp46SXcWU9NqfUk8j4cH3aMHOZ2WG7j0s2W8kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770077034; c=relaxed/simple;
	bh=3uNWGtUcvjaOO0hlzvHHKzo6Ze6lYAfk6ZBbB6j3xI8=;
	h=To:Subject:From:Message-Id:Date; b=rOJwFR0b/+pjMNaLFqAoRRTZkFVFYSCwcFFk/fRfPhlQjrOfQuSlQvAEP0BwsAe28MdeCf2Q9YxGVr4cuX0oJ1BmEL1s93GlF16TlDx5Lz8vkIYqxhQlU3m1CwgYUqrzB2WnjFYehfe+QgSOySgC/DIn0FNnP3QZjBFYLdPtGKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKISTCau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKISTCau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F77C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770077034;
	bh=3uNWGtUcvjaOO0hlzvHHKzo6Ze6lYAfk6ZBbB6j3xI8=;
	h=To:Subject:From:Date:From;
	b=RKISTCauWSsp9Ue19btdxDBUJrQYFXjjAWfeNx/2/v33HOeRxJ+RXmxuFx6Snqx5d
	 a7OLW90W5H71Q1Qq0VO6i3aZy+vC8lMneoBynZcRZD3UoUOzB1w3awfw4p41eL02JI
	 ZZTcVOTn2/MNKB1KMukaAGQMjUH6UyndgMZppWEN86QL6nf+jMkahFmRU2F7Sw0Ekp
	 subVydTb5+x0I9ARr42Pd6HAhg+ARbg2pHt4JOjKKa8EZEcoETsyjCnZUBqu0K0jsT
	 2pNAqD1G+zlvnf0YaEoatOsmjYorfaL2/vQ2NGpr10mANr8IICYQBpfqrOSbgLAsis
	 anheX3x/MqLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC66E7FDE0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007703367.32236.13923334453023361136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abad820809cc00020d7a76bb3cdcb8a71dbb3373271d253614214a6dac4cc15
Date: Tue, 03 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770077033
