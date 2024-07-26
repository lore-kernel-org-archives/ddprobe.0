Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2DE38DEE
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722021954; cv=none; b=KvhHeYCyiBUO+q8x2OusK0+MXXjfdwmA5Hnco0clpN0lfwD/mRGT0sSJNV0zbuxhSEXzyIXM0GSKY2VEktPwNPcvM3fLPCEOlofOBuGwud1V8pK27WLHkPpKQpJ4KBhknhFpT94dZKHGqQMxL+JlUq+ZF4CJPHk4Ujsqi4CzMxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722021954; c=relaxed/simple;
	bh=wHK5NcQA5kwoe0JezbpaLyqfw8zjzvG4QDXbewRxjjg=;
	h=To:Subject:From:Message-Id:Date; b=NixLlXIurzNfPwAEkAreEo9hqX7G484dZSk5+SoLmiIHyj4dDjHGpcCBwxnuXGrYlCtPrrrRwCYdOyFQJgFOE1z75nOHYTsbknPspwmb+sq5/p5vMpwDn1m73K3QvX6A5UYCbRIqtJdQdfvpkC0tE2IQUK1Ettz0ScjMKOieilM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucZXxYXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucZXxYXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47BFC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722021953;
	bh=wHK5NcQA5kwoe0JezbpaLyqfw8zjzvG4QDXbewRxjjg=;
	h=To:Subject:From:Date:From;
	b=ucZXxYXFF1VyaTjIIRkf7H3H5k3drlaR+0BpaZhV73iYHV8NxYsv2l5dXCUFiGK3R
	 prE84bxM6+bP/mNkRIz4GSvst4uLKbtYZK/KGyh7zq40KcxxoVdn13judRWicXST2y
	 a4kOIOpx/rkqfdzW5/5It6yTGBXE4Cls6WbCXc6sB08GR/mzK9gC+1AGvfAFhPcn+q
	 fEJyudJD7pvStmByBD63BTd+KmRe1wkYAnBldMpx2AX3gwCuh++9zHIA7PXqgqQ9Jg
	 vHd2xy94rmmNAZvu8zB2IgMdKSfvj/8XkXGf+0/JMT5fdm50ABLNoJQj+Rb5n2YviD
	 upg7UujBu/YYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13FBC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202195362.30551.16169621693684267679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad23bca853b3df872206fe1bfeb8b72fe5a2509877f5fef986fc301213f108e
Date: Fri, 26 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722021953
