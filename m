Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFAC3128D9
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767691434; cv=none; b=oIdm/1UQ+dbEtFM948+TmsTG4IOEJHufwoLs4pUB55VHpV4kJai16RGYHLynRqU0M9UFlzZ9kZnxyZo9GTvtOXzz914UorqfdYc7C/fqrCdKqCLN5+l/3Szc67ULQFqiQUeQqQ8EAKKl2Kg5o2sXQlUSQIPe+uwLu3vYdXszbwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767691434; c=relaxed/simple;
	bh=c7Ca7Ta4KHY2PYN53MjuAuuBQmYj4isH9DdDHFOL0ek=;
	h=To:Subject:From:Message-Id:Date; b=s2rXNVTyc4j5H+n1gxGHgu95GwqOZOwUJvcqvYj2TqECfx4hyDfvlYOJtnLXmEw5HGRWgwnlXkxZ3Zv9EdV4O765/U+fZxDRYcRqACwZazHpbf8sqU0ppUPhTagUJeVWUGEuVxomMTVyLYJQrqgrQnsR178gD9PyHU23mcWwS1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnwJzupT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnwJzupT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A8C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767691433;
	bh=c7Ca7Ta4KHY2PYN53MjuAuuBQmYj4isH9DdDHFOL0ek=;
	h=To:Subject:From:Date:From;
	b=mnwJzupTSWRvUiqXtK63f/swhSWEJS2cBzRbejbGQP+jFExLrmIi9pTqdunsUmdKe
	 4jp63S/mmonSF3DYrZ8bU1JqLn1VbwmpFdVFlCvSGsdccNlW3Y3DyBkPp6xAwPP1kp
	 ZlrdFtYPxtzXSeUHstjU7dKbkD5ZgPUK/9BerIK5Ih7dLsQrkn6uxt4utOx2G72d0J
	 U8edKWDLowPP1PegbvEtXhB9nE1rBFxrdI7Ix80ITFEgVxg2fqACpJPdV4CgbQdw/v
	 kSG1fruUOIym8OkKc5PdD8mUZCTvmAnsbJLtffanOjK9wirxOI9hiM/Ff9T00nGVX4
	 LmUB4K84DV+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9289DC47BD0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769143359.23404.16840920715361397423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070883d2fe30800df78e6b39e9ac3f3d59fab01a85555398d4ca382a18542d46
Date: Tue, 06 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767691433
