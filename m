Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F67145A0E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721422554; cv=none; b=LE/JxQLfkpt7nPrh7KVdo+Z4ATZXr84B7pVUrPyQl565q+2nNn8H3uNlTQvEaRZ5Utli38ecupDVRhW9CvSgREXmWu7Ng/ySVQMzG+jP/5DqHTy9TzADRInPcmvXH+sqpA5GdTzH6z0qBtj5Us+ZGz8GFBLrLmb1eSRn/GDyPWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721422554; c=relaxed/simple;
	bh=sdiasQW1J3p/jk8vvhvDwxsdUFh5k7W17kcuoq3rpk8=;
	h=To:Subject:From:Message-Id:Date; b=Zgj7NaZF0TtqXNereEj4BslDZJXjJBahiUVA384R9gTqYVGSTnjapPThqIizo1P/psiRlW7lGSAhmgBXrkRRwr6Tyv4OhAShshDBQRBimIATBf/1NOtxtdIfRwrUPkVmoZgWSLWkp9kKfA/+qeUU1dvuYnKAIZfwxXhPUAs1Irw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC96OCA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC96OCA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B487FC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721422553;
	bh=sdiasQW1J3p/jk8vvhvDwxsdUFh5k7W17kcuoq3rpk8=;
	h=To:Subject:From:Date:From;
	b=oC96OCA4NjPQjNuN0mgsxNogCvRY8RZCyQq+X1iD6AMBKyLneG/osS3FyfLtDADIQ
	 nHUIyap0qdi/6i2CPKm0uVeWCxGzL3bDPrrX4BpeR2il9XM6QwOyElEjfzvxRxmv0b
	 gUwd6SQ3r2b1UCJzeJ0kxcJgQAU++Rdx6fqA1Rtp+iReuZTJAclcvBj7jQ8RRvJ1EB
	 1YjRIF2we/VGvJYGIee2mXYwuLVaPmoh0r0Kjatgvn8nFBuJ8ZHGviCiIhmnCMz9oC
	 waTczyn7vcz390angNZeDYxezcLqHaATEJDZYKncclwss9Mrnad7mXVohZe6XwEgjd
	 WUHxszt1a8t3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFB0C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142255360.9861.12295134486127758950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83f55cee299e4581905c95febd4343735a0dc3eff00c8ac7aabff02556aa734
Date: Fri, 19 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721422553
