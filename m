Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FCF3368B7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772670894; cv=none; b=lUEHGNFzsijXrXZ21ej3agMJ58aau+pBuQGGCggmSS9OjQm1uyKSXHXc7WM3GmlzJaPaAlDKAj/N11XH86MA0k+gpi7zE2Ovw9+ilmLK0/Fudrn7xXJLaPlytXWvddbKigYf1Tt5c5qGl31pNW/LQ76Xnyg31de2ZkozipGSe2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772670894; c=relaxed/simple;
	bh=Uy+d3/sOXWpubAq60HP2WcLMt7ceHuocvinHSGDb3ek=;
	h=To:Subject:From:Message-Id:Date; b=szZcEYsY3X3rU+KXJQuGU9C3KJZBxSnEBoeP1/lfgyxmAdW2Shhof2N1JlhGPAADNPAuvYP5pF8gnyG10cgERFTh0BPQLuUaHo2sHWt2DHZGaB+esjWU7M+S1qbwMvLRsV4iQJEqtpHu+JYK394siAmyyojUEH3VDUz95TdUo10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBi0WZ08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBi0WZ08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03E5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772670893;
	bh=Uy+d3/sOXWpubAq60HP2WcLMt7ceHuocvinHSGDb3ek=;
	h=To:Subject:From:Date:From;
	b=uBi0WZ080m3EE5owd03FRVXGtHqdszvOx1IZ0iDJGQOuGkySdJez9dpKsN815dj/0
	 oDdHdPLwWl5GWAaVjapBGIQqqIwXBph1R8JeqY5eVuwFBiXcybR4yhlaBdAAVtdBIb
	 T5BSxqUl19qs4R6iyJkS+nrncIaQOKlSXu2QaanGQJTSVJbVJm5YGJuuSkId+DG01w
	 sZsBlvYc4S1/MH2e2jNfcUVC2kndNi8Zjx0VqT5OWMUnc7eDn7IRjAdgcgEOzCAyz7
	 CTkFL9MkRa+BgvVj9mUUGnobgNxinObJ8w6fqZYMOkl7nKAU2HPWO4GjQ2QBi8WuWF
	 QtHQ18TtZR+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C28FEFCE4D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267089357.23986.1219348322418695274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e427480cef7320a66c7b066a4fef89354e8144dd4c19c0a041d2fb443b0f171
Date: Thu, 05 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772670893
