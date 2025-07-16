Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E506244695
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752709194; cv=none; b=Zxoq/Aik2K/0bhCktZgFZKhIxSqvvitvWUw3pDilTy0n1Oh2y6z9tonvdBrcWiXR5YlqkP2vrtKF7VcmSk2/EuFEph0sx1l/8NCsAcMM1GOImr9+8MzqQGVdkL/aXSLXu66n+R8Ln5RSH4fBfH32DNx4idPFqEf5WopTTDXgkZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752709194; c=relaxed/simple;
	bh=gehgWZlTlTVNlpFwmYXyTHY7Gi8mlqkoGOepZtvFBw8=;
	h=To:Subject:From:Message-Id:Date; b=OWIFTZ1PMYEYBLyiWMELqWeNFwr08+G0B15VM487P6jLhugcRgeA509LHXWFYHGAYItQXVjvJ1S1jOjbFcJ0tfyiFAZ2qrAdxHlq+slXobLRMijQMFW0WnB1xckD1uzUiwPWMD/SeoWPTUcNhp7UFY7t3UMONGkkjgFBiVlHcmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOgpK72X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOgpK72X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B61C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752709193;
	bh=gehgWZlTlTVNlpFwmYXyTHY7Gi8mlqkoGOepZtvFBw8=;
	h=To:Subject:From:Date:From;
	b=YOgpK72XooTzGJIqVpJJrCpAV/ND37+IKtzJCZbxy4uNbmrtHBIuYG8lVMVE4kxTt
	 1fqHy9/0l17JwDceIg3nYbB6MUzbPNGdUAmvn4B1smD9hWlwKtuYYuQxH3xNYahwcN
	 Aps1p7vY+PDE1+olm1zG3s9phBN8fXBm2IOdLjXjb+9cMz0zxHD3Y1nSdyZ/ykUbaG
	 t3V/mTE7rhEumk0XHBC8F2aK14gNt29G/2ia+a17PJQOE8bqg2NumyNQYZDqeYhsdv
	 Y9VmN9+wNeXUe5drbw3jQFmIKIoslXce4huylGhZ9SLuUTnwJ3tYGTLu2IGofRU4tr
	 47wDOS+pnH6LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BFC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270919358.11184.9268628821980200086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fa8ee23e39db9c3672b6e3e478790573999d3c9ba43d6b52c58bb8932416ce
Date: Wed, 16 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752709193
