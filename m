Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE622701B0
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745375394; cv=none; b=MF+GQjeX8UzQYo3Tuqde6C+eoMPSRpAG8c3PihSPoZ4OhU2XQEqHzcE6/ySqfhP7bNSL1N6fBSIpURUsnFGaukgJ/e/zshnp/kvyRrf2GX9/rBXg0EtS8WtrHPKEeDoJhQgkukF3GJfMbYwsrSes+1u+tfoSOY+cDd3nKHop4e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745375394; c=relaxed/simple;
	bh=mkwQNTKfEWOYGb1lA9xWzwehjkYrJf/IHf+FnfrTNp0=;
	h=To:Subject:From:Message-Id:Date; b=IAaMxlYwVtuKwNtNSi83reER4DsmC7gENGanslFF06ax0yM6QGRnTNdeZr2Bz4Bq23/8ag+mcx8FnGBWT5PJfl4Q+h+D+s2VtwsDcsGvhnR4+ccGPWAO8bti1cBapSr/hLKMO0BKTd2oqT6nL9oaqIUQOjssLXgvGfsRlXTQPqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFrWakYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFrWakYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A987DC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745375393;
	bh=mkwQNTKfEWOYGb1lA9xWzwehjkYrJf/IHf+FnfrTNp0=;
	h=To:Subject:From:Date:From;
	b=dFrWakYygXJ1/dPquWq2hM8nPXZDKzmZSlMpS/lETJQHYO2fUiu2c24tXSQYHpQ8J
	 vdU1hLweC1x5W1vrn+hwhQH/VeKTgVOuINYem6EjdGNmi9mA5PHThf4b5Q/BSBuRWr
	 t2V+Yn4nr3Vkb6N2JfpczRHEdvGSeICQdR6c2zh5EMNK6Morr2iBS+Kw0brXtqnkY+
	 Kwid1OG/u9sCX/IX5+uEe1+XgU7fPoVxTJ9r2QhvzWjRFFI4JdwrPsG1nbvdbsthmU
	 LLC/VQZur1qYwKcAamhzsMA0hXIw6Lo2Fh3uUmZEQ1hN1RHJt1fpvlDacscLXe5pY/
	 +q6O2niY40DQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B50C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537539357.22040.16406233793564561462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd5545ccfbce6171c95e342a9e2f4622d151a53e4fdf71052491bc807bfd7a2
Date: Wed, 23 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745375393
