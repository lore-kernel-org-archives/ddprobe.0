Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1923C261581
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760360394; cv=none; b=F8o0j2m6thNZHGZwlL1RIlTM9sUkXwaIEGlxmUTl9o0gTwNMR06CFg3HlnYnSx+KouONnIjjnDvQ3q1ybhe88KWG3OHCeTcbVSPgPKG16IL/kg4XSIpAs5IZm1uMp9IzR0wqH719PcrNS8hQUiP2a/n4k5x1lStNx1+FvDn3mf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760360394; c=relaxed/simple;
	bh=HKTlPj+DEt/WvQpuXpE+ZM/UvexDQF8m6u7d7APrVFE=;
	h=To:Subject:From:Message-Id:Date; b=Q9OTHaqMLXGsDf5JX5Vj3MMK+bBX3BShWkvf5cospL+hXU820MYo3M8n2WfvMNxcyiklhr2fJFi2iOQzSIpMRA8p1IYDmhSsc1HIpAg2CEL3b17R13Q+quUWq4GzHizYDgdSDgV2md1vEwkod/xTi8KU9NKV+q++MXIjo8rxq3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3lCbMu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3lCbMu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E7C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760360393;
	bh=HKTlPj+DEt/WvQpuXpE+ZM/UvexDQF8m6u7d7APrVFE=;
	h=To:Subject:From:Date:From;
	b=R3lCbMu1o2eelsfNrh0RBqDmeV8D74WSTqipNeTGR3iAj+pGWi8au66dXVzIbJSIk
	 EDoKece87CZvMHF+QM+nYG70AzlLdq0NIY3EAP2fiFRimqlM5oSNblboosd73Fffoe
	 ynIaNMzXMzQClpspDProPyxF6JDdyHbzDcdd+UmEksgvhd5YQIU8NzFQHXMCR2taQp
	 7VYV6yM3rlP0z6Qyk856DQjQ6OS8Fqeu8ig13iISZLZzajc2ho8sZl/rB+2LbLZyPH
	 4KbnHMNxfkUIOLUjjv1ir96ecK2lUSOPY6ayivLedyNheSVgIODpm7+11N1x/fuDEg
	 FJ1G1FMDK2c/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F515CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036039357.30521.6428109387091732781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aff6ad75ebda8bc2967d0bcb949cddcaa8e906c361b1cc578a15a8fe0051abd
Date: Mon, 13 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760360393
