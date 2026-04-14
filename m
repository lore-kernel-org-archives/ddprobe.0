Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A983D6CDC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776163054; cv=none; b=MXAIlM5a97+5zBb+I3tsDcc+1dHTDE2+Tk9WqM7hnIle+QFCETtoXWrwdSHBurN8qUULZ57D/MGjotY8hNU6W2s2kPhte4iSqcOHO/ynVoYZ/PiZHsIkKGaTrdTjB5Uvcr5IcAT/sUtIUobCuexJ1U14blBCFSTNYT6T7BTtMAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776163054; c=relaxed/simple;
	bh=a34PNKvVqSV3eZ7rADcNKmnaYW5hTxXMlnlw40pHdag=;
	h=To:Subject:From:Message-Id:Date; b=ciOVUQFCtcw8brbzNxQEIKHUlBiJ0sVqMn3mEc0IT17zbv1Yi9aUmiPVU/b6keJleQ9wcgR5zCS7S+mcj1jZ+bHlOjEBEQBY7FE1+TQs69twpMgVUSYc0B560NRLoy25RmnDyF9567u+D8/5t+nTYsAN4QHR2epurMqUV3zRKZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPVf8LM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPVf8LM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF4EC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776163053;
	bh=a34PNKvVqSV3eZ7rADcNKmnaYW5hTxXMlnlw40pHdag=;
	h=To:Subject:From:Date:From;
	b=YPVf8LM4g+5Rwq8SeC+ejnwKT8xfn1BXDk5owZSAKla/4CUit/vs9E0s8O9N7mVvi
	 0bSebJGU9tC3PUFrB1i2rlM6NaJ+eQJ6l0AcBl7cV8zIUBSzlHmGjiZeav9lf5Z5yz
	 A+BZnFbbdt9xRklTUuGtyl8wqA7TwNyN95+RFGFJkQDB1B9QOompq9jMpD22DSSrdP
	 yvwjCkw0krHyi4IGTyfPVGH86kVZxLJciBIxcZ+r0s7NBMq9KZNFdRCjzVjpES5zfJ
	 fSFC1dNEFbiga1CFn4xf4oNs4C+BhDjuKNd3egO4i+QEsRlMQAOjpQLolMl6jKfPsk
	 /vzxKkf74sbSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C7BED7B9A
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616305368.9425.3055972365855534539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35ba2a32f88368ff52d0274f2ffb740bc9bb4ff15fc04a55e11eff36d0a5256
Date: Tue, 14 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776163053
