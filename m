Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D01F101D4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720394783; cv=none; b=tbOE5U/tWGWdIBmVBaFDbCBcD/YozLuq+sstvpYmhzgUYb+X8t/O4Yh50qVaT98GCRDH0CqLoEAjr67mev6JK7cStHzdCM/Es+eUQgmdxy36qWwqwxdYiXkrww9Mj4e/ioYdnIAtQ94eCLh6ZiZGeeblY2cHTtoY9kyBlBiMqeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720394783; c=relaxed/simple;
	bh=u7aP1TagMiLlCE0NgRb+JvM7d3OjMEGqkBZ2qWuA3g8=;
	h=To:Subject:From:Message-Id:Date; b=Z9+kexnGahSOMGPHbwnabg0a1XBp+Y3XYqv9YwNTxElBdsX/1I7LSX9PwyXZqbJcjCtvc17wo+A5eSL3YkO5IYOSkZDDZkNXzhGYdlklvexhiEheYL02f1mGX/eYNYR5oxrjzC/aSwLS3kf4cv1QQ6t7oBDeFB7tHwdyJVvqiH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEajdu+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEajdu+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAB3C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720394782;
	bh=u7aP1TagMiLlCE0NgRb+JvM7d3OjMEGqkBZ2qWuA3g8=;
	h=To:Subject:From:Date:From;
	b=oEajdu+1H0QNdOkVnnDd7vPagcWhzk15yUUfSjT7m6comZTd21bt0ZWw5seGR6+ba
	 QyND9A8ty6YI8Ci0EhQpspzd2InAMJ8ICx7wEWO9DMQlHleE35DckeXIBAJHgHVISH
	 DxQL5S6flrOfX3pE4B5j7R3FBRrFJzvithPPDFhd5qVOxuLYGHIiorFOS+7P2x6UY+
	 rQJeMJ8zJV8vJjeU8KzdqYb8o8QbSROWJDdVs7kvYwoTtj8kw2C/uAN3rKQeJ3kBkO
	 ZCuhdai9PlDGf8jqM2djEvIIjBQWR5VlA+JYtN/rwn71oSsW7f79yMF6tc3VPILVoW
	 1BTq95i4v7I/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C8AC38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 23:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039478276.1863.4531503176868922071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50e01d71faa261b593569366f593d292e58b3d8b46afc7f2ffcdc32bca1f36e
Date: Sun, 07 Jul 2024 23:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720394782
