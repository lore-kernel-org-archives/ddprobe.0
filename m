Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D50D1DBB1D
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729167954; cv=none; b=COoIW3zxOh0+oT0ancVyA4OO6Juz/rCrqoc47PhaJsHi7MqburDDDV1LKLFFSuONQ5u29RsNnQ8rjWmC0fNGww0+5fgShYcD9e+oRVlu9oAV2MYUHAbyGl1kZEeXX9t7EEzY56XrRkUHgArJP2+ZrScmjOblpw0wKq/GXSbob1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729167954; c=relaxed/simple;
	bh=/vj65Idggvb+lEC2SUk2l5xQTlkV0s2vks1hfqEMvJU=;
	h=To:Subject:From:Message-Id:Date; b=ItVWMAn8tRIGrJBVibZlrC5P5t+tO1jk6zjIFKt8Bar7pPb6qA8MxDPcTWdWdORA2ctozT/dB0FvceHMBi5fWdpCLpsrX3OleJ8KTOFOVB9bCe0bUyi7cL4JBARtjvQmJbwjjqmz9DoIvUCCoqu8nUTf2neTg/3M3wC70vwwXjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9PPiBuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9PPiBuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A905CC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729167953;
	bh=/vj65Idggvb+lEC2SUk2l5xQTlkV0s2vks1hfqEMvJU=;
	h=To:Subject:From:Date:From;
	b=c9PPiBuDWzJx/kGlFWtEVmyQofF+lqsGhNT7uPQ9stJVr/YcZ1+PhQVCl/yHXYCYU
	 Ikjvn6Ko2jU7HbGuVAU0F7HXa/pJx6QzBOS1aZDZGYDBJv72L1dubFOlMP1H4LNnnq
	 ERdkpxWsCcuKp+Fg5dl8lB98l69ddKp/RtWK7zJqHaJI8l15EPMcK5/8BbHsbYRIra
	 nS7m76hGGBRiOTl6aqLiQiRskuf+7yul3eph3MV2+6iGR5b3TL6Uy6Xr+LIqMogI/Z
	 rzcebO2kuDOWD+H41nPinTqf/YXKKGg3wIT7UArWFrEmILsKBNonk8I33/uudm7GTd
	 47vCecqrAWjtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD1DD37480
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172916795360.27273.10190338950972229906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae64e78ec6c3eaa72ba648d35023b91afd2b83ae2fd92c8e0bce30d0b57a3062
Date: Thu, 17 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729167953
