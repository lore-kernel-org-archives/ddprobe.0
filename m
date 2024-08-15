Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A99176AC5
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723709754; cv=none; b=Kp3SnDjYspebFxJYuciFDHs1pit5sGA6AUS16yv9bj35yOWyITCvsksUm5ySJYQS6v0xbq+GK+z1Spu8g8g+7PCdBtbEAoYfUF517umFje3e79BrLZPnugfiQcdjspW1fZT+MnY3RhUkzRyQARqmxiyn2C5B9dNM6KUNG4EGlXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723709754; c=relaxed/simple;
	bh=jglr63TpAz+Qihs7FsMngMGpXXZ2TaKKucLWUlhgRKY=;
	h=To:Subject:From:Message-Id:Date; b=RQqIOuiT1Rb7G0PqIZAbdy+uGNJgORQnsUsWsKYYps5vQXW3yZAP27lZLQSBTHdA30/wwnSRuXIlMv026JVtNZ50mYi/X/1EKovMjgyuSU0boZRl71gfCl9GSFBkKhe8m3dWv+zLoqnftW331lWe15WoSVKK0OhIU3IJ1qybGWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkfceWYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkfceWYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F00C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723709753;
	bh=jglr63TpAz+Qihs7FsMngMGpXXZ2TaKKucLWUlhgRKY=;
	h=To:Subject:From:Date:From;
	b=hkfceWYjD30kH4qkIqe4EvAfmMUE/qetBMj9cuxPTUpQ2PKrC5D+yuG/DH6fVy2cW
	 8CydUQ666+SidxIDBri3sX3hZ7rOTh0iZRB3K+zUq2S6RfyWmueptRvwJUio+KWeCS
	 +yuzpdzd1d3HLP1k6ExWr011ZKg/59Z/P9r+27bgW85EuAr3qRpMTeZaxpW30n7tvJ
	 IJNOGSNodloV5SxEJwcA7KEy+vOVtnfSk3QYF5ITYj2Ei+8g+PqvfEWG+kVjUOCo/P
	 /87drKZ1UM5SqBQ0RzvXvr9ylnVPFErxlaHTIsbqEh1UKTHPlcMZcp07cMJe1LDhP7
	 kaUWGyjGtBaJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF8C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172370975360.6891.14757234678812068318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c050c9113136259e5bbbc6bea439f1002ea72118e536748bf9152ed6f78e051
Date: Thu, 15 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723709753
