Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B9C2741BC
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752170993; cv=none; b=JX367w3o4mdXE/CdJZoL2JmNtKQjpXzXPVUbn419NyQJCHun/ifd0juBxCoW6r3eSF/Lt2ZGUypRJzJpKrD5Zrpf3Ix1rF/QpAo5pVSHv/2linh9iyUSNcNqbLtCsvWi0b9dlRlzCW3g35M+S6NqIFOnicD/vUd9VNJF+9jHnOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752170993; c=relaxed/simple;
	bh=Oa2f7vp1u0R9DNHPhvYapQUsL/3Lz6UB2H9LMD/0nOQ=;
	h=To:Subject:From:Message-Id:Date; b=Q7RO+LLUQyzri8uDRoQhSpsoYTYJCDBQGwF0P0XqTeN90tkBxv7d83hXRqWU7agqbX/TQqP+6+zkx9YrZKSBW7W9G2J1/IROJRK6tQAZrQ35KRFl1iQwlvCZ0oBJDpTLQNNVihYagBqrUMgcSvGJJvESh+Qf0X95iSqDz9h+2P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDKUk+vG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDKUk+vG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5EFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752170993;
	bh=Oa2f7vp1u0R9DNHPhvYapQUsL/3Lz6UB2H9LMD/0nOQ=;
	h=To:Subject:From:Date:From;
	b=JDKUk+vG34sudVfCssVC5CrXdzqE/9t2PMie9CeKZDOHi/a2zi9AE7VqD53IMjpoM
	 t7PxDQ+jVil14xZ7uQWh7Y//4H4i/LVqXx9BULcg/lkYavaH+aE46Brpjo/5WzejBP
	 bwq63tXFgWQVNMUofIJfquWZWS1zAZSKwNDgAh6oOIg/xt1pCTBRwQiEN3fA1tcBcv
	 1WN7/HbfbNESet8Ea0puREVAhKbQprj25K7iUukcapK84VnHzM1+LCrtPm6V9iTV/0
	 3I3hZw5KMrbMZ4OV1RxpxmCcffMeS8posp8NhTTen9lOQL+2eSUzl/ZbWj5YkpsBNX
	 V2CK1blOrUxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFCC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217099358.2840.11195021398667545346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae87bdcbb4e4d4a0530f88300d0a6e6936bb63df357f28d8f96068ad393b8cf
Date: Thu, 10 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752170993
