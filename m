Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEF211CAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781840794; cv=none; b=nhMEHriVS5trSFTNpdG8SaHwNSM3FIyAgPaJttR0ktubVQVHE5xClPp5ZxC9H67q457kLG4RcBTcazmNvulrNvK/4Gu85fcQ8xNpL9Zw2PVYbnrxXc6jy8dMf0P90xi5w0JuDuCKxtLUY4tZKTTtDbRRXi9cVGtb3bCZKAEs9NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781840794; c=relaxed/simple;
	bh=Sauxc+qQEnMt00AdB83jhH0agZEwXXKauODzoCQxRtM=;
	h=To:Subject:From:Message-Id:Date; b=VRibAswvfkOkpdF/2lbCwnsL1tYtigCNDvP7oAILHy3YWv5KZkK9EcQXnBkAI76MW6GuRQxH7hrrumBtftyMsq3wG2+VU+tQzMF9/dXxFuZ1uhCl3WKqoEVq8ghlfIk+gISYUV5y3Oh6QKWk3ZB7ndi1tO+4xAsqTgd4Rcs85pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM6IgoPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM6IgoPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42C9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781840793;
	bh=Sauxc+qQEnMt00AdB83jhH0agZEwXXKauODzoCQxRtM=;
	h=To:Subject:From:Date:From;
	b=iM6IgoPWc4QnFFUv0JRLIsugcsYC8oNGt56HhqXmszZ+g+3pm3uM+dArw0TruiRbr
	 H/2fucPJ6OqaLTAuOQ1qgHxX57dK28iwzN5sw/TQdM9J1itKbG+ONGrYz6/sz9CKHT
	 eEr/Swe962OzlP1xDEGp7eE6Qofk3azG0uzxTsMripFK/+sFfokItZpFFUBzCk64h2
	 WwgSmBWzrFZfMVF/Iz7ZZPyZdNp4LDnAUIO0R8dziN54EVI8zi3bBs2GxybRKXuEMs
	 RL46Sv9ykQ91lJBAHqLMEKcoisIQWWfzsgOAlCHiI4KmkqnIssnfFBWutKKu5Xau74
	 6fV0/WInrqnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7065CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184079370.3736.5221977568974520698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 432d07c4d8d5a3ae36d98f09ee92d67b70be4c809dc6fbd4946589866ba82b06
Date: Fri, 19 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781840793
