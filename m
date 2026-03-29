Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DF21F63D9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774761294; cv=none; b=d2YIHFXUerR3oa27xtDJ9TU499kY4PFBpTFwW8RGCltYAB0DAA4CBqnTG8phe+dDJfVjgEGg9wi3wgriE4wzzHNQsl2m6EwyV97deIL23L7Rpf9vAWsHhi9tHdeUCen9J1bCxqVvIfyytd13jkKX5kb5OHaJ5zhQqVb32qnS4TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774761294; c=relaxed/simple;
	bh=Beo1uMBR2fBL4wRl+kOW3VtkaF5TNX7xWCGmrbJiFJY=;
	h=To:Subject:From:Message-Id:Date; b=aDxe6Wf8qF9dJlSxvKzOntH07l3thVsbZROzGqQ9qEPlHqYpmO2ZioBIotaMkx+Dy7dhAGF4Mfu0EwIfFOjHPZfnEBUIwRlLv9tfzvddf9jLN8NWrYQ/kEoU17t5nwsTNFH/oRMvwEYsW3x/wbnWuLNkVeh0fuB7Y430dL7iEfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B982GQlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B982GQlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5DC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774761293;
	bh=Beo1uMBR2fBL4wRl+kOW3VtkaF5TNX7xWCGmrbJiFJY=;
	h=To:Subject:From:Date:From;
	b=B982GQluib++Vw2NoEbslNoqsPvNOwTseWvtjQK5XU6S4QQ7vMl4JugpqlW0gcHyv
	 tPgAD1dp4OKkueIgfsEHbuZlQsE5kFiJ05e3wUPywgEAl5VblWXUIw23Bd0voDthyl
	 paE+LL8MEH7vXUyptPozf5/iMby6rwAOQGCgsiJZiFFjkJbSKGzZovZDSyEFleDr8p
	 axNwEQeqRy/vE5SXWT0UWKMwsnHv+KDy++6FITwZ/ZtqsPiLrr6VkNCfYKYBplZb1O
	 j7tNe6CE/YNOjbL9LfF5C4ppuS/X/+vYtzV65788pFuN8QERZFmX4ZbRUkh55SpWdo
	 Uuh7ZUc4Y7BIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DDFF3D5E9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177476129358.13878.8806648552422052983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da19ef9ddcbe3112f3845243f2fc04442aee60922319b91167e0bb130b5b7a86
Date: Sun, 29 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774761293
