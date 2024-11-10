Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441E32914
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731202554; cv=none; b=GL2xyUiOxVDtrEFhtdv3FDXpugso+l97HYhL8+kMyqyNnPN1+mh8jpp8cIChKlzD2aqlt0wMhyznN/y5XHKKCP7XoyCjPIpUhPQpwcRczuSkbYqEw7GCUMugqvSErKClJFOPiGJZSRfEhN1bZqC+tsIbhDwKCj9JdrSPrxueLQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731202554; c=relaxed/simple;
	bh=56bUsxdRpDynFYHg49/deXG4TA2dmzCb+dXiDH80y0w=;
	h=To:Subject:From:Message-Id:Date; b=PhGAcbBlrhOHLGMN7nFtzlLdScOpSwqNyDxrUhQucqVzWDG0fYGNAVIhYzQUzCV6NcVs3RBBY3KzlZ0ze97/de0i49vc5i6Ad/x1lHMFSyi/ZajUPYFVrKifw7O84QKaXnoP+8Yp4OxDYFhelwRzf0r4XFaEHtCQl8dpC35cPV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPvfzbhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPvfzbhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8514C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731202553;
	bh=56bUsxdRpDynFYHg49/deXG4TA2dmzCb+dXiDH80y0w=;
	h=To:Subject:From:Date:From;
	b=TPvfzbhU9cmaQULi1MuLmxtGi67vBdL9DuNloxBJkXS/M6ihUnrJZnY8oQ1KWXcXT
	 ZOSDsd+n0RKqJimqHVEfeL3q4hBCBb7XQNdqAabblgvw3iIOR8omLsljgwOjMI3Plg
	 Xoy55TqHjRwKjw6kzmt7YGAlw4QIjokWOjFBBHmfxgMEr+tHH+62U1bCxGgDo1x7Nf
	 yiXt0QSd2An1wzKCVmcd9PvOorDuBTpI3cKRMH8mbjgA80FEIOiWKO1GToxbmLqzmT
	 ssxwB0fZtWGmneYdNMvx9rbvokNO6Q7F+MWb1rG2OMrgjMQ8zBdfIhLhOtHBuRtriz
	 OA8hSFnltKSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BDD5E36A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173120255358.11757.17168715035107533752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798885b039a682cc00781f98d4d09c2c5340997eef6c254563314c7658863008
Date: Sun, 10 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731202553
