Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AF0625
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773544494; cv=none; b=QilpLGc9uzBFpCqeLPJRUiRv0+k/Kkg6U7OJaLgTiD1li8IUDOE+aqQ/avH3dnCOUOsXjZ98ZUX/AVAVY5kgvsgFNzhsX6CjNJ7LHKiKNAqDgWWcK3/foHIsaUn4FqFFRUX4MmLIdhLiclnRaDnDPgOBTyXAent8exj/azWQgno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773544494; c=relaxed/simple;
	bh=pjpQssmx5p1PNmmGyYOyC0nEMtrEhbcY7I1xkro4wFo=;
	h=To:Subject:From:Message-Id:Date; b=hQioYsHBuxWEkS3qatywNWSQtMGOy8IWZUiRZfJ69JlgglkimbAo5LPdtbD4xUc5UgFXftp2hiq4yXRuqj2ZCtSJtVXjxzfoiMyFf9G575/pksegCMKWiIWfDVQDdO6ub8iLnBcjphaUoeTmtnmcTupbJpmAvo6nLAJ/0QBvvUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrqLpzac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrqLpzac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B1C19421
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773544493;
	bh=pjpQssmx5p1PNmmGyYOyC0nEMtrEhbcY7I1xkro4wFo=;
	h=To:Subject:From:Date:From;
	b=WrqLpzacomzP7of9UsYCHdLZ8rwgVDYHuj5KzUyyrMWWXtzANYiZ4jwRNCZCGQPcl
	 F899rTuyI6hubK9pERqDn0LsY60vfHPZC6VhRmBj+WC/Vz9CojwyRT6OaLDDQi/PaW
	 rS+tDOdVySYYiezINDQIFrRd/nUjkm3Uh+gCSsHmEJhEu0mWWRSpL9MIxkllroVX5W
	 e8UTc2v1vnOh9G2phkbNDGtBTmPzhXhinaY0TDXAdfQ8dofSdOxyZWBpMRzQRCtc4j
	 L4qQFuIDpJUVFMHcUBtFDhcV71UXNjmSmmrNX9f3RFzLQ0THQNBQzJbd3i+elFN18q
	 AmnCb3M5dLlaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A0410854AA
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354449358.11781.8245383009796227889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7643b31dd2e6eb499e29e1305d960cffdc1645137f77f23deb71ce0403e94b18
Date: Sun, 15 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773544493
