Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8632F78C71
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719609263; cv=none; b=FZMYgeNWuDW0Cm35naezSNuK73HWwI7kDkFaSPdVs7YuSfHGaDZvAQ5X/g/5r1RufxtGmGjzJPgixcbpXaowz1ZI2CBk4Pi1EUxmkZo3YFhplNJ9323dzWdA+ZJ+tcAtM9AksGrE/QN3g9LyPxpsU/JE2bM2Ic0UFUn1R3pAdSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719609263; c=relaxed/simple;
	bh=FHn1Yb/l7lU6utrOA1u7P4JgECLLDDChU/6XIM8KOVg=;
	h=To:Subject:From:Message-Id:Date; b=SVVC0T35199EY9Yxja4Xmp17QSW6n3RQi+wsh1eNX6mGfQ1pGzwbND01OPK4Oyykbe5nOb9QAQKjgiuYg0qJGacb8NI2nYkP862TX1X6uJJWmdGZRzIGoo45qLwAj87S+d/9nt9DXP52+HCg5JAcnIMJ76awHI9+B3Ttp+oNV3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0GO56vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0GO56vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF520C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719609263;
	bh=FHn1Yb/l7lU6utrOA1u7P4JgECLLDDChU/6XIM8KOVg=;
	h=To:Subject:From:Date:From;
	b=a0GO56vcWL757s4CLq3YaIP9H5wUamgDv0kPrw8LvYJtBV0G5vG+fVKuP/KAbk3QL
	 PcxoxZcjxj42NFxYKUunwSqdCWglm6DTo4LRpC1VOx440kh2xHh7rTmA89hNuzDvfD
	 wFLjmQ9vHNgadmiYcNGGOHNFYTD2Fheh95i3Az1ZkWwcIZeM9wBs2x8BziO1/j0Xjk
	 pmK9sz0GfSoLBmT7OwdI97gS8vK5Zs7WdOthR/rvAEaShKZdlW1p4TWYOtC37f6/mk
	 6nlXdwXzxPYfdxUuq97FBON23RC65uKYynpqpbLWhPMHNyLTfNe+Z1JFH7W6ZSQ/zn
	 fmQaezz4rwyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C53C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960926282.20303.1317120761502997578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c209048f9e5ff2f2bf3b3ac42d43d65667c5ca4ee230da5dd39d9af4be94a1
Date: Fri, 28 Jun 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719609262
