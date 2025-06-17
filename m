Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347FE2E265D
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750169994; cv=none; b=I0Kx7HC4XgAQyeazPIDxzrO13s0oURuiTPprCKTh4NNEm3sT6xZv80R9HTO98yBnj03QhfO701BdIw7OmSN9+H6B/fJ6+attuLeE90DtpxfJ0yt4O7o48ey++fPylrX6a+TmUi/PQ8Q652gcwXvhFRQ095eYSUvERw0bRSJuHOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750169994; c=relaxed/simple;
	bh=CyF2dC+ayiPAoIXAZXT9krq+Hx0z7CuYU/YpEv0nPlQ=;
	h=To:Subject:From:Message-Id:Date; b=lV4I6MmOGDQLBNsGo/AcTMBuVbJEvO85ZXmpw4J286uoC9nkNgFmi9oqlg3OFG4aceeDxG5dQaO+8Qsw+BBfcpSHV1W+bfwp0QwYKe/35ojG+lFadjZynmkLVZEByKotWzYx1g4SpKDrBVNxsWd2A85+KJUuTIEz3PXh+1GL8po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndn3hwwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndn3hwwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC2C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750169993;
	bh=CyF2dC+ayiPAoIXAZXT9krq+Hx0z7CuYU/YpEv0nPlQ=;
	h=To:Subject:From:Date:From;
	b=ndn3hwwG6TIcvpMnXT4UzcZlRIl6j2sW2B2/eTeeIfm7NCe2rrllbZn95OXd5yPM4
	 EGMxotymNxjexGywTmnvDGUsePlWnE0JPs4MY6yXafyUKI5IaPmfCBXgflQ9bvlDpq
	 NL9JiunPgl2Rr5ZG+ytzb2I9lwao3MIEq07pSfsEGhyPSIoDMdnSqHCo1USc/KPEij
	 17C4CCCGlPe4t3BXlwqHS7CEe7mrR/uR4VEePjjcJGCkL2f7nPvF/U3x/yS5MxxluC
	 sBh17eWvl3TU51CiGnG5pzvImA5uaeBeznbpRjCTcwZIpYqXuf8xYd57tT9R7EhP3C
	 trc4ZGrDv4JpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF7C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016999358.8893.12757384369094728152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbcd199c6569f18c47a673859247eb9d62660a1794ef858f80794794de10adf
Date: Tue, 17 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750169993
