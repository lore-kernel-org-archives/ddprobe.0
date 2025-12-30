Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C83A1DF26B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767123834; cv=none; b=UuaVSaXyXiCoSj/Fu83vb42wgXdHABwFbMitV2dEDLrlM1/4jPLrTbcfGhu3uTnbrlzqiH8nh0DOI/kpQkXHcAFhTIfx1RGssmEU4ij4u8rMNhjiJzXio+zPBFuX0wQ6VV/qXMWT8bo4kyT2mUjjsQTHPrJoUTlIqxEs+G8AGhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767123834; c=relaxed/simple;
	bh=uxcoo9o7uMPTHSx1yRicOa0yv9+IANG/s9ta9P9im1g=;
	h=To:Subject:From:Message-Id:Date; b=nxbU8AbUbr7Z/6v+wyFqG1mLtZg5NH5y511BOqRNZ7e5SoU4C83uGyNKyUZXwRlUrGKZ1iZXl0HUNJ6OTTNxpPJYDwFQaI590JycH5q3oo+FJRnkZ5H5LOb02HPd3jA87dAyw4VipC91uC99mPDpQCy8uHHmeNP1T3jvLu814KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCXf0Nxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCXf0Nxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C6DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767123833;
	bh=uxcoo9o7uMPTHSx1yRicOa0yv9+IANG/s9ta9P9im1g=;
	h=To:Subject:From:Date:From;
	b=vCXf0NxkWhd9NuvUd5qGc1BYfWbiLBXkwRd6OoLHuM1Ix26GE6HxwN4nGbogpWJLg
	 7SZvfHD3jwHEGLfDdt3xD+Nq5709q8lRshAmqO9xcBNcuuPJJ/dHYEj9dC5A5HGG2n
	 pNLFQ9V5/3tnS6iNwvxyzNHczq3kXfoTRgk4jMPDJS2RULuuSKQypKlk+5oA0GV+xV
	 M+92CKPmal7bnT92GJM2a2G/TG6qwoemA0qU2jcC5NBlSeqO4GvgBtG4vdjIXGgHMV
	 Y8XsAZ+lkdc7u7nXwwAHxpw8q1DCgBrx7hOnepmkd0VRH6vEFnmpnFwSMVTDd1rYbK
	 zLbQOl0GqQkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E32EE499B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712383357.22300.10109804938445441914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df2d2883c9e826cc72f30b926fc16c2219aeb91ed1c5e85240439c11043733f
Date: Tue, 30 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767123833
