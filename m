Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD593168EE
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784324914; cv=none; b=RL9sX/etKwWLjSHR4rRU1xGuValsbknsSCvPpRHzTbndP/RZLVgD2CwDsAqQufAR5Rf9OfGzpnA0zIKWaGh4AT+BNBS7VkQ/wSPMeldfHzPMnxKZUHcz3ZTIRTQCL4p4+ZEOUGnvlz4IBZv6XLpEkgJJoZfqXkWvIbvfIWTj3X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784324914; c=relaxed/simple;
	bh=tNWvs20JHRHI7Rl5ZxN2hHPcW6T1VRcaKyMVvewTBOQ=;
	h=To:Subject:From:Message-Id:Date; b=f4wWTED1YZiYmhEK7WOvg/rDBciezTjXuCrnMl3m8fpIJ25mbWo+heZQtHd9lD0FgOYj71dE5EAw+hOG3udQ77j3rK/XzVOhJ0+bsAz+ISgD8wAfthViaSa+j8UryGc9ywwG8cfTH6NbBz8sVfXVRE4Wjf1VUtrEINJ696NkV88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VehrABaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VehrABaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12CEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784324913;
	bh=tNWvs20JHRHI7Rl5ZxN2hHPcW6T1VRcaKyMVvewTBOQ=;
	h=To:Subject:From:Date:From;
	b=VehrABawRtBQ1QzpFdNmX2sBn8cJoF1J1gNq44+4XrQH8/h2rBitf85hcuoG+5OS5
	 39SEw/9MmtQoD4OuX5/ctgG4PnsinbCILLQ0Wf2dj8QBn/sJ3t5blTwYf+gyoHXZot
	 tf3AIKPiY/Y4IWjwdLaHk2vAz7b5JMB4BLGtjCpXDTiOjQqFEyW8BVxo4w1/tz7X//
	 aCnCecZuorpEIdUgcYk/oDflPRnfQPvhLVlCeSdH1iIRuPqvvzybg3g1n2/wIdafjh
	 OXZTvTaz4tlgBNTpNtC0hJVzJWcwJqKUE7tMhaPO2p+2HGImeQgkNLlDFXbZkgXn9L
	 wPLFzzNluvSvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCA4C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432491369.31209.14469427252636189600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9496d3850045c82e0ca64be6e233e29efdb0845d3b7e6a26d84f97bff998f880
Date: Fri, 17 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784324913
