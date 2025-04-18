Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477A22222D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745000395; cv=none; b=QDm52VFtMUqCsh1QiXt82SA0eF7Lj+LSpvms+vTdIWP4TPKGTkMtApqlEMslkkCWDhz7mChcBxpuTko5derbqqEI3eKlCWV7gyTHj5mRDYsd7o7/6MDdZXFKanymP4MApHx/3/z6sy7SQys2f3fGIWVSE5hIa4Jk48Y32oOULos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745000395; c=relaxed/simple;
	bh=BFvAp0GMhKaz4GrxSZEBBKOgOqXHccJQpYpXV2WpJqs=;
	h=To:Subject:From:Message-Id:Date; b=LA1D6wYRRdSlgr4LsGrsbh60ksHPNLzyJHnOZamikQXDOE+Nl7n5noIuhbXuKAJpQHz7jmwxsLHmHFGnUqAc4URNELvtHxKhoN+GEkAQaJWiCTkPqfHg+e1Bko5V9EGoxBmZIuJIA6dQ2L3gVgebXjyiMCyI9OYU+MJmdfUoZ+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VR/gUjdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VR/gUjdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745000393;
	bh=BFvAp0GMhKaz4GrxSZEBBKOgOqXHccJQpYpXV2WpJqs=;
	h=To:Subject:From:Date:From;
	b=VR/gUjdJIuzvIg+fW6WA58xaBq24Tz+9ytoFzUSFpFYYo9PgtqNRNwXI08VPMRk5U
	 eLzHpSYsAbUYcK42YZrXhcPwEVc8x1e/e7woAWpZYBk/ZM896CgB7IXCcofLD8qLiJ
	 OJeFbgTHyGIjMSt6dvKX4PwszkirK2PYkCD9WeifRyXTeJm2YnlLZ1gpfGYkivBhIv
	 +EPRL7h5dJCZ8+QWVcWfcE9JJMNseVqioebFJFPlqZwDS+r4MAy1PVzUn80ygdropZ
	 6r/+XQAPT5K6CAs4q7hhHcTXoU7TG3AuEhQ4ljiyHDwMfyDklc82SAGqtBtXgYV65I
	 2Tqw+9TzORphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646AC369C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500039360.12872.17918851865994177911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25606a5f16f4ae8b5446c8f95e3452947c024d9f784852eba8d61d02ed71e9ce
Date: Fri, 18 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745000393
