Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B21E0DE8
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792013434; cv=none; b=QGnXaPTbPrhFyxTLl/pXj/FPuNJfVpIaqPaocQVlHcZQnBww0hSXmDwI7tDWaeXQdkgX/hTYhkP8/L1oUZ36UP3x50mmnQWevqMxuvUVWp+B4RZJ5PGNbbpwealHxUoiPdUZOiY8C4H2ZTU3pA5sanhHgkTCfrKYx3RwouYijo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792013434; c=relaxed/simple;
	bh=SbafcLxOlHUB7H5QLr9AbIBY4PhXawRrGwbtEAQdYSY=;
	h=To:Subject:From:Message-Id:Date; b=CXEfKMZDVz54Pk3zrWf//lF9VZonCKJ5md3kQx0w0gwwDk5Mx69tClsD9HSZLJbmnQU54lyEinrETFhh2jBXQ3CMd4siYDqySRywlRPwAz8QgRofBLVHlZ6ZjDJHHyJPdvl6pAfI1aOQShMTQUgYcVZexNIIu8ANIQoBEVe8acc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUbEPTRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUbEPTRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9627C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792013433;
	bh=SbafcLxOlHUB7H5QLr9AbIBY4PhXawRrGwbtEAQdYSY=;
	h=To:Subject:From:Date:From;
	b=oUbEPTRJ3xJ7qagxXAGoGdx5tA3E0Fv2t236gtQGxLJncqjwDLA20/nn8gb2HwpWF
	 hww0ZwaAJ4OVXVkWFmo8SAMmvv8w2gmvz85Kh91mD+T4FUA5VUHVltpJX06elWXGH9
	 Xt/Y791gvMf9oVVEgcvZ/4rjHej0slvPVwidLxCYf/sNLrd26GrQgpDDHkoRPIowAT
	 KiR4xpxKfPca7aMC0nG9pE0QjgljoGeqDI+75bGV0fB0KQx1i0r9eU/ePlFQ1fAk9k
	 8IIwb3nqPAkHvwzqSeq/7473S50AM/rL3ida0siUTEzLsRK5IcHRsH8LZAUKidc9Di
	 Vui7sEEHW9kcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D17CC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201343370.16293.3819048004229132988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7784f7d8ca03b5c1f60e14fbc03eac8e591f1f350e8aa852957914364637cfa
Date: Wed, 14 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792013433
