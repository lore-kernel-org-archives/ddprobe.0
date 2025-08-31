Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1583128F5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756640995; cv=none; b=fzplrUkRcWw0I30VTgw4mYO7615gwcztUg2HctsAGeqvhd9/lhk2WyUoEI0FCusGM1bpr3e1vmnbiIxdl0gm/N3UXN8oLUV2f2uDMHKTMYHyY/W6utw5ROZi+w+2zAhIMJvWwq9qPNp50Mxnx2OFdTm7gd/GcC2S02V7wXb52s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756640995; c=relaxed/simple;
	bh=BQeEGQZss9LoH9Z6olvyglK4P1rsf3g/a6G+LCgU9O0=;
	h=To:Subject:From:Message-Id:Date; b=n5qtGPDMyCNlztNyR92UeA0uNWaeiF9/6qLzwG3URBncPyQiVACbDNJWC+2F6O5iBVPjdbnNvKQHz8esM0s7tR9iCkc+jum2G3aTXMjGnaalw6N0PPEGvXXNjNNMco0dvktD0P/3fJOlb1sRZMSh8J5vOA2HHeZTqYZ+WmzTNY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaWWQj+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaWWQj+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA76C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756640993;
	bh=BQeEGQZss9LoH9Z6olvyglK4P1rsf3g/a6G+LCgU9O0=;
	h=To:Subject:From:Date:From;
	b=AaWWQj+gzI8jbSHsM6irHoPBW9GsFGTZ6tNmfjRWxYbyRSkZEpzfvTLcyJ2AUkQ6R
	 32f+zZZYjnA69KDVv8KKaYz8d2NJwW4M1QwLG+vmQlraoBP70gh0tn47FIP2TbnVNn
	 KoA2EKV2CRm+pCnpm+f2vwZoluNxCqVtc2TZ+Y0C6514VY2CxMrgpRJSHrEYXybng0
	 1DvrKP6LtubKjOaLNVzjeqaKzn/gd+52BUrCmXmDqFyK8cKzvmVm30x8nZbHlRerOi
	 FJYQhT5Ld7x4kjuPDtIXVKLkmaNzyZk4WcMh7i496nmW88QCwIFMthpK+uos4Jr0Vr
	 clZrnaMMuhqSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E477CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664099357.7482.10485188670144842696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c53bf551ac55a4d56ea34d398edb8be58a962ff92c36a844e2e3ce2e2ea009
Date: Sun, 31 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756640993
