Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C02D543A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758173994; cv=none; b=jAG5EMcMg17FtRqVeVx7qj/4aRVQAzjRNYXqJD9qImq0PLAoZg3n/EUrG1Lc2bV5LPt5BAF2FHo+z+UNfNatlC+5VDCtO45SxnZSVX69sS/NOFHBbBwrO6GZ6Q6qKddS5snVigwTCetN1UnkLnRo1YYLYiHsI7IekRIN+9mxv88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758173994; c=relaxed/simple;
	bh=bcPbcIKtvtW1AoZf0OrkjcfKK6lOhf+oE8K4n2IkBaQ=;
	h=To:Subject:From:Message-Id:Date; b=of9RTS72e4Cm12P4CQerMgJZm6my1knwGwizPtzE17U9WcpozhZzc2Io5+z3cgua3ZN7j5j6hMCRl4mlj2IzwSn/O7+2jOfk4TtaFz2yR8zRnUhmn3UY23snGEEx0PTAgjzUFZSAn47OS7frgF24b+PZjBQEiAXHXeO5FzjYff0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5P1aSs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5P1aSs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A79C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758173993;
	bh=bcPbcIKtvtW1AoZf0OrkjcfKK6lOhf+oE8K4n2IkBaQ=;
	h=To:Subject:From:Date:From;
	b=n5P1aSs+nntIFSkwbedZ8pyoxyblFD0vQlawc0w5mB8uYlzuinTev6uUYB4HdJ0AY
	 UvI5ItpEzaq3LOB1XlnzgqRT7h5x+0vLfkUbuQi6ZLlqM0+BY77rbQfRILjfUQd842
	 8VOSPB1+UgAdpmKCOrmAnedoHdSA4af/CJJNoaTo0/KvpbO7MH20NyABSQz+9z0Qi4
	 pubqOW5joesmpE/nSMo3JXv7coRndUJs+lT2A2o4vpCAnC4n49026hmtkta4lMxgJt
	 0Fi9oKXkXGQljg3e4XVFCtcG242kHZ9snbzQZrCh1csJ3wtY5YvApOJmTMCL6Iz0L+
	 2Dfv4hMbQtPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FECCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817399360.27113.8723598815465771111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c76792489168a32d75a48bf5a8bc5ff2aadd64b4b9b546199c663c400d7b423
Date: Thu, 18 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758173993
