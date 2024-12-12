Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A98D20ADD9
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734027954; cv=none; b=n3qEsmVUZ2HSV5mDD1lQjIZBQHKAKxU73U1WAW16/4JFWygVz2R3dKB/kvWGR647YHY46/ie3QzSkB11CVBwQSKHSgsFiZ8EWNlMm2irYZwwClxaTMKcFW18+ucoidZAL8tx34iBbIhoeQ7X8/qt0H96ybfzSKsEbLqV23hnxNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734027954; c=relaxed/simple;
	bh=agNRBQFriRSuC3bLq77GcToLpmqEJL2qlIor2wuUzqM=;
	h=To:Subject:From:Message-Id:Date; b=i8HIYHVtJmnt3NNo0sWZkXDR/IrYE4/IxinrHIepRGGrmDOgnt/ISqmg8P5rYnaqMjcVo3aSc4gmZl9rFYBabzz7IbzdJGgFmGRZOjVtCQsorNttgsAZHkwYyUuPWr3dJeFwmJm7OsN5+MBcHrIBwdE7MmwA2hXYgV1IIGlO+d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDLy5H04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDLy5H04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2706C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734027953;
	bh=agNRBQFriRSuC3bLq77GcToLpmqEJL2qlIor2wuUzqM=;
	h=To:Subject:From:Date:From;
	b=YDLy5H04rJiM+2ZxuxlZMkZ/zu5hZh2NeBhfjvCV3fquTHcBi5GesNS79wxmrkPBi
	 I7VJl3oVagcV3voLhwNUJ9mndLuLyKYjCePoGSNvilQ9UWs9WvRDkC+stDjsFgrSB/
	 aI9y8jNZrexYCxEZ4ApINg6oo43xNeNZabnrZmIE6TFbwM2hZl9hvsxtTp8iALze9n
	 SOynWV7OzsDbbAcaCgNTwxe0QOkmfrkJroiEdqDxFX5Qc2jyoDjz9c7yLCrYyKuHZv
	 3IpAD+K+zWagpQCXSUytRO0unxucE+l+ipy47gL+qLKNV7YlWKkUe7CTcV+Y5qurpP
	 kuMOTZYqLamxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B131E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402795361.20589.6674236436539498199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165b6e6d676cb29492809624f4dbb3a1dac6ef771fe6a525ccdbc7539236739a
Date: Thu, 12 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734027953
