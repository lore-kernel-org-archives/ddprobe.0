Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ABBBA49
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711953497; cv=none; b=NYIdt2QUy4XDlInHlSoTNUFdBgJxmGC4JGoqtMlyzewH+H/BWIZT96ll2cwvqSASeldKJMyFH4Cg29DiDmW221DAaObiJTenwpk5GqNU7eZ9ohWYbYKeTqfdTd/ns4gQTPoa6FZYsfDjHcEqmysD00xSuL8hWof5TFnX0Tr9d+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711953497; c=relaxed/simple;
	bh=qJ/FeAOFEniYzOs/iV/5R9CDel4nOhFie0zJZxafS30=;
	h=To:Subject:From:Message-Id:Date; b=YqmkEtkLxugMNpPQ2KBasdu6X0WAeeelbDqwE+yVDYCeqI1Fvb37V6qnsd3UrKe/kYVSWbhPNFSK5a0WNoI21WVjCPBwp9yh+MmLj1RrUgz8OtyS67n5D21FHVbuzt4kEsgWWb6g8KIALiYREKS+2cVhQ1yGcDRsNnitAv1k8m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ao5ZKUtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ao5ZKUtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A397C433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711953496;
	bh=qJ/FeAOFEniYzOs/iV/5R9CDel4nOhFie0zJZxafS30=;
	h=To:Subject:From:Date:From;
	b=ao5ZKUtpl4MZfbOILnB/syAlwlI08dh5ltMhfRlrwNlkZUPuScD5DnhyLONYKi0b/
	 EurevgD8RueKYpgoLmma+AZzyYXga/qgPPDEoLXh74NZhUAOU0pxf8fpYSWpH8oECd
	 nLG/qE1LRG6bc7yic7FHjxDa0Sqctq14SeqbHTovsCrKe2PlMVslOU0JgQ1k0/thXm
	 Tvx09XwshZ7XScTO46Pw216vmWGpgoDj3rFzNdIrhWQd5V21uDoNxJTMBecZ+mx3vp
	 GQxX3mDKvDqTkn8aBWMZxe9m2tM2D/993Y06uchaG6dnjISlCVU3vKzmFloDE5heSe
	 E5CGYnMM0hYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632F2CD1283
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171195349638.29534.9657483598642394800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457263d2bdeeef1720df685aaac203501e4ce4378a99d4fd5ce94be3c2656a2e
Date: Mon, 01 Apr 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711953496
