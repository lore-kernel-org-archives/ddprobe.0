Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409C2801
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746412794; cv=none; b=EXR5WNGFJbjWab6QuTgrtg9SkXDllLDH4RYJLvkvLP5sVb3PhM4KZZ5ZtoMXzWoZx4oJQtBvJDxxeC4cqYwuJASZz1qYE8tPgclyQDt4zqIqZIus0n5VXTOkdo+wK+yqHgKm9yy9lYA9FKahux7mYojP6Qsa3k781zupRArnwQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746412794; c=relaxed/simple;
	bh=a4aryeANG9jW7ih7zFzc5zR1c7PRM9OV5fq+0k0oHN0=;
	h=To:Subject:From:Message-Id:Date; b=W3CBEuJZDxqwtYx22l7YR+mx5g2qdrmlpg0E+Np2lLSgTdlpD4tTfBVFY9JGWkOUP747FpB6pabM12Yivp/WA6KB1VEImIfBkZ+504bsr1F3Z+h5Ru2eGy27pOabYBh3AtS76CUrap5LgrX04E3isXfsqkoAWv6nvX/36wZ+kYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXsJSV56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXsJSV56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746412793;
	bh=a4aryeANG9jW7ih7zFzc5zR1c7PRM9OV5fq+0k0oHN0=;
	h=To:Subject:From:Date:From;
	b=iXsJSV56WBHmkuIoj8AcqzBPcVNwOugKqU9mzDNqcTGf4h7Ac7HKcj6ei177JZHAM
	 GTFh3ZdwRk/h0/ggSc96Nh9J4bZ/viens0JL6cgGmhoh3j0QurlgVreahXUsNvZWw6
	 PGeu9b+Ivx9fKX4GyuAEySyCa2eTNkfYef8QfmJ3JirlrqTVIdEEshO0l8CzAlXycS
	 cAkzlQINjooJpITPTToH/FBEinxUpx8XP/RvqG+QkDYLBAPlBPxYMI7lsoXRyhSmy3
	 HhwaaEQcFZtwAfNmYX7aSiC2VxyY2HYvJMZLpvZ8fVNrsU9u2haGIHh5XoX17Adl1u
	 PhIpxcGTYRl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E47FC3ABAC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641279357.9442.11330181798370454412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3125ddf0a0e480b1f14f3901b7b4d95f4f8f2b61f4e02887d0f4fdb6513171ad
Date: Mon, 05 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746412793
