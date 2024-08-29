Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD26192B7C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724957754; cv=none; b=oqSmEfhev6G0F09BXKXA6R+t/EAFJ5LrZSLDPf5Ig3r01jgNp257YbN/15013uvCCM+wqDdeCqM9I43781Blln2SfB275XeDS4HgvNfB/6e3qeUBct6uW0cUil7ep6SpvGAYpW57BUQmTcJw/n+xy8nlAgu7oBXGOUTXWmBtIdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724957754; c=relaxed/simple;
	bh=SfBHQcnzaKSEwQ/rCjpJSHTBReLy7kZ1aBnjdIoFD9Y=;
	h=To:Subject:From:Message-Id:Date; b=G3Lzb3omDEnjKojqvu5YSR7aHOaeaBUP5ezHdFg5+CL5noiDxjAV6E6qMbKsZb8XmPO5uEClT09FarIVX8KDH0886sRwBrn2NjuM7H2WTZZQ0FTbiForijK9DwcgwGLqoczLd6+X5w9piIoCtXgW/Wsncv1PpP501TqwluCuTd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVwMcPDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVwMcPDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F26C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724957753;
	bh=SfBHQcnzaKSEwQ/rCjpJSHTBReLy7kZ1aBnjdIoFD9Y=;
	h=To:Subject:From:Date:From;
	b=CVwMcPDdzYawiaD0VUBjtNHz39rUmrZk1G2R2ELEuGkKBlNFHc2nwTh0yNFizaceJ
	 BGe5u510F+6b5AK7Xb4XVGSL0bUAIP7EyhcYoCVHj/jGxfUrWJR5u1NZgkbA77VF/v
	 Mobf+rlbjS2mEpjFoYzPEawwmk2Ysu5eN0UVp6famql8Fg1e/kKAi8i2p0iilJL+D/
	 A2WoOQvYNLzTGsUtJr4jKJbNMLHnFb6fhW50PvxMj+1ABSRF3QmUbEjqZ9tYuN31EX
	 7IunmuDTnjGtbw6tORk90wzjN0XQjMMNe/t3UVRAKv6lX9/eK0EroB2d24on7MGXA5
	 3krfzgKX9FvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C004C87FD3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495775359.12278.5847186734859410485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb4ef3c92c35c3797029d1de59a85528726c1912ce604005c4215dad866a35a
Date: Thu, 29 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724957753
