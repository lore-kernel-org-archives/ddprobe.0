Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BAD155C8D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716832463; cv=none; b=HmHycfpR413GgqSfNhtk13uncoARodHtGeVKOw+kRiYFKd1ixlbXXCTj0Vz5aCFPNkxg/8z6rGyFXGtpkTa4cH0tXz9OphKXcc+DeNJ/YyYeYYalSlyM/6RQwLMK+WjbrHv080UoHMxPfoK39GVEBDrosZFeFHMb4kXXK8McFrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716832463; c=relaxed/simple;
	bh=PzD888cQyjqn2UGnpcmqX7XZayAUWVvF9U8f8nbOm6M=;
	h=To:Subject:From:Message-Id:Date; b=BvOUEUR4eAvj4OSIzkf+S4wlnE8hqYYEfm8JPpdMlAJdcA3QZHv+J5AXv5vxYv7W8DbTvowBbRL5dJbBg3ynAw6oIoCjBMDtIv4lHqmcUqs06M5AYpNJiLT29RjjYgy4m64H/hUrMK+hXxgfXbjIUofupr2OMescLe8G5l2uAXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWfkWivK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWfkWivK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9D6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716832462;
	bh=PzD888cQyjqn2UGnpcmqX7XZayAUWVvF9U8f8nbOm6M=;
	h=To:Subject:From:Date:From;
	b=JWfkWivK5ZAOLUWNJZYcEu/4tJK33JRIyEz+Z02jdcradPkQb0xd72eBANRpTaYOL
	 GhxS5E5WpmiLufl0Il4O9AX2NBYy0jRn6KR4fEQSUIz0us1Q7g3wJe8VICAWIOEJMM
	 RlONGl35OcF3hIuRtC3aHxEkf7AyYZcvD66GXYod+SxrV7cgpDZQU+zc722Pcd9KNM
	 niFsqGCBQk5FL5Ikhgrm5FMtfmapnKr13wZpI5d45b6IHSI8K9aIVgd5E68d5K9ylU
	 XYCeSBAkxwkIwZC+7paguRkBsAS2GBCsH4w9JVLP+w3FgRO+XY09yt+2cnvC47Uj+x
	 HhsvLlZhgV46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9678C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683246278.11865.9686918121656868160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d3a333e5510d23fb45ce2c83b0d0ef4c58c5ea9a23f923e4f0c085addf7974
Date: Mon, 27 May 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716832462
