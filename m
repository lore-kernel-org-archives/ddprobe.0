Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B88A2D8798
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773710694; cv=none; b=STmnelY7HspL9Z6Whdip/qXTqhR/Lt2VZ6qIOQk9A9Tp2bPdh9WTsyuSpC0n0UrWfbh9xhw96kKAjrcFqPV6oO1eTanBUEXWy9/tG0qjOGZgsa2jpNbQmaPGlrzTdm2KQWxa3IMiKEJ3D2Qs8ESAoLqwalnzZSmhd6VBqzkBLYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773710694; c=relaxed/simple;
	bh=p3SNerZ1mdfTpdjC7D4/0pwc8PYHnmjWcEflkvA8eWs=;
	h=To:Subject:From:Message-Id:Date; b=pals+uNvVrteu59lIxXasEuTY4AXO/umCqFLBDS2ie1/1n7igYP9Ppe7vkl4KZODxfwnNM4NDh8K8Yt48CHRpEEOAQDcwPjDkjJpJOH7T6Gubm0M31zLmzDP/ABocjww5aWJLWHR3g0vCu1qFUuu0Kp38zxjk+WwhRQJR21ZkrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6zHO+Ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6zHO+Ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF35C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773710693;
	bh=p3SNerZ1mdfTpdjC7D4/0pwc8PYHnmjWcEflkvA8eWs=;
	h=To:Subject:From:Date:From;
	b=X6zHO+NsHQQpENIgl3/rOLgykE4kB46Ows/nuUsiJB/uloa/GXRL2XIrw4kU3fmKD
	 IsVj1l4oQS69WLuWN2iNJGQBmqAOn6hxSAsWiTXCFPs0vuGsfd+fZhCbIkswxWTX7Z
	 eepjxeMTrkt+n9Bub7Q9u79BVLYR7MUrY97sPHNg90vk0jXAtUXaeUzGG2JqVfVglJ
	 obC/2a4e+HgC+TOq6g2SvSt2rvQLQvtqYbYYw/KY0I+al+MBHqyz0qRMur1T7J7GvB
	 e/ehTKNnu90/GQ+RlRcWBItxzU+eB110RoFFKnKE3RPFhrG9fCGUeYUrZBWUFsDpvX
	 t4OGrchMOWZlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F019FB5EA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371069357.12458.7954113850902944268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9190b859408819d61cd74338c0bb4ee36fbb7fe043ae640a6b8edea4de50a7
Date: Tue, 17 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773710693
