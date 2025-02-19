Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657E4286289
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739938134; cv=none; b=IPHMQJLhi+YCmTSpNUZFhDSeGRc6u9qCVetRGoWwZue7302Wx7Pu6q3u+DAgyAftkfhkYyIf4lZKdcdTklUtkMqv6yyVkEEOjRtFxtctkxWR7wNN0WHvcxVHLh2rSgP+CsGl9uPjjYgM0g/+axeHWUFd73EHI3cuKBEhbuqQ93M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739938134; c=relaxed/simple;
	bh=R43j2xzcF/+Ilc4TmZvab67pcldQxAgHfVstQjv+i28=;
	h=To:Subject:From:Message-Id:Date; b=ukrPFsSrn4ctIvd84xHi8ZtYLs+KSIhwUoWuR+ZSZC7VamdazfrYYMoMT+GZ8hzXUi4lwzU5FmLG+VktwOtvF9tp7bvasEPXTbl+9gk98pt1BCHvTb/c9qTQRA1INLYLmpm8pjZFgMGnDaSFI6FHFMbkq159Q54dBZiPXsTLDPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH9PaArW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH9PaArW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8FAC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739938133;
	bh=R43j2xzcF/+Ilc4TmZvab67pcldQxAgHfVstQjv+i28=;
	h=To:Subject:From:Date:From;
	b=AH9PaArWMyzsBmQf/4OF/lQPvIzpKnM8+PUPESNfOxs28M1beS0J/bwv63Hsb0SsZ
	 qVJiLs9CiAGp7HupW94lC+V6+gP5jfG7sSPFOJZXVLHM4CeAoa28KZuABcQgkFgJso
	 x2k6o8cBV5EUiVKXKKNddvmHrOcE6EybflE83qwHLbIXyIzaOCZ+xslERWeMekEhnx
	 GWQ1fo57CzrNSUwAbaUm8ewo0frHgPPxt7pWeO3ad02OeQZGI2VRhG82e/rRR8uOvt
	 Tl1LR2ei6uai0bJgQdCB6I58wxaGeE4Ls5RnzCKLAveJpB/tdXwNbMboIcmuNRSe7D
	 oNW0l4KAUclhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C4FC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173993813363.21432.12252290206188677882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4863a90e68035e5598a657edebf5865d64aaff3390896776574d86f2864f3ded
Date: Wed, 19 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739938133
