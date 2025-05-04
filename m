Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DC31863E
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746333594; cv=none; b=Is6Bj+NWDgS0k6peWH6p+wSDhuykxRX9H23WlVUVQLxc5D1zcNXJdxuhZ5EQuiSLrTFk+PJqjECowyxHid6yoBjjLXCBwQp7GZITZHGjb+QGFuXp/gjeFqTnd6wW043ZsVHYgHsvTABL8Uqv2rf8WcEWWpt03z3nNRI8Lsq2Rh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746333594; c=relaxed/simple;
	bh=+OvO/8/b4z+wDrmNimahIjctfR4p4IeD5PTzzsDktQw=;
	h=To:Subject:From:Message-Id:Date; b=n6750kVbQf5fxI58IVMDIRR+Rm6I8ZzQsFbOXzoUm1lsvP1MHFX7ahmJ+ewKpn6l3e+v4xf75Z+yIRcc4EGXfW2WDXp8BmvMvvMyRRKOQTkQOErNOyb6N4R3QUI0BrQBQogC4IZshhN9u2CEdceArun2Q13EUxuKqBUx14rqwZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYPOujcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYPOujcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76B6C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746333593;
	bh=+OvO/8/b4z+wDrmNimahIjctfR4p4IeD5PTzzsDktQw=;
	h=To:Subject:From:Date:From;
	b=MYPOujcS1KccNbITV8FrSmVJGTYi2rVKcVnVU8gNY9/2HmAngH4GGHGB4q39aF797
	 7UsByrortB6Ti/41vcTYVmTJ3McOXG+ceNza9C75lpSRPQ1Akj6mNG2hubeAsdMZVi
	 zJLKUugEoX8AFd3RqzKLuF4dWb6U+w6fANKzgwGeqsgrZek1/d5PW9lDX3BZ5XpGdJ
	 k5GffrCJsC6ZcfkUjd3BXAftaeqJSbnc0afNGcJBzpg8U+oK+Qy3pq0oFl9fnCOKCR
	 gf3hnAH8bdJ+uMJoqyIyEorBHgfThHDWhXZcjaKKMEghD0u/lNZ/wNR1daFvIZOAzg
	 wHr7NV/cZ5gGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93819C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633359357.28065.10082434753752496125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd59bf83ce541173e56dd40b5772569f18921c6619705716e72f2728ec2bce5
Date: Sun, 04 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746333593
