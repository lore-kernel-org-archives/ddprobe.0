Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A192041440E
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789634434; cv=none; b=CtHYwHdv8DDQ5qwa85YtwOAfXAEIDqgCTUba42cY29ctXIQZhfSdC2Ds5iB1o7wBUPAuM8ZLrIho31iCmZGSa12o9IF/Qv5BwgKipwBQi1HeQXKfj5a8a6Vw9g+bbBzwJlaW0W/UplD9wyLfOzFcDDBrRQQy/GsjiJzhrEiN35w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789634434; c=relaxed/simple;
	bh=qpe0to2rU5OapFjfj3CtRDD867aFKBIrS3y5FxY4Fz8=;
	h=To:Subject:From:Message-Id:Date; b=FWB8LrR+lZtsa6CaDjOC3VtSbqckLhLnfDQqz+Vf0g/q/6X8W1MTozm62GpJMcS5gOQcFYN2ROp3uwVmxT2pNOakpLirQ0iQFgYu14MsBReStQVwp7FcKBk3KivDJ1bLW7QNGGr+sDVAQ/AcYXaGUZNx7Bn8LFmk6XhrwHYWw9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiSmdCzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiSmdCzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCDDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789634433;
	bh=qpe0to2rU5OapFjfj3CtRDD867aFKBIrS3y5FxY4Fz8=;
	h=To:Subject:From:Date:From;
	b=HiSmdCzrxY8lM4URvAh3o9GAdVGBEYPKTZilGEKFCGu/d3V+W9+eAtGu50URh9xf6
	 5qw+2+ca8T5zrkWhuCiO48Hfmr3Fs/BxVjGSRo/NpK6yWP2IKpAbVCL9ssqoCNskVL
	 ywF34B9ziC18cCFPXhD5g5i/WxmPIotfRwZxBkqhAp12A1otZaCXougbOdqWDXPyIz
	 Te0U5C0HiESSvbQil9fyFD0SggMQLz2zN8CLLpQkfbS+Bvt0+tJ6/J/zwrW+q7iCeO
	 W+GJjkvvF+6fvbuaNyKMGObrYOQzxeDsrq380gT/ub9wqjj3V2Ek0Ht+cq07NA6VY1
	 M2NDASde9JhNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87A8C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963443374.30326.9716260603151876418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a017c1d214dd497d91e00f9eab82a7f1b8aab1e022234fe68936a75b9331497
Date: Thu, 17 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789634433
