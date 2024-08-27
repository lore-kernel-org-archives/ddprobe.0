Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D00B156F4C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724744754; cv=none; b=tSODlHu9mIWivxi063L7GRtJU+yUCWBk24xHlPzGM5+ojtSl6l4P7X5XvcOYomMRhBFJ8c7uZlQfBk4H0VKQJLSXpCTegvrefhtqQvNiduFpVOhGO02FuvP8oD5/1WY882dDDpObkvkbKhDnwsV1NPN7AgjRiMR19kyBQQAp2PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724744754; c=relaxed/simple;
	bh=nFE3k0fFzviPx1ggfWWwgD301nDgy/pZB9OS3oBOjYU=;
	h=To:Subject:From:Message-Id:Date; b=dysJPvfG7uCseGIPgdJa9cn0C4JmeBkbTel04t1Oux5+e7h51mPiuom8vr7wlrOWEtT16jAmetaEoWgTk7hU4xFCr6WFJzHbXhZlss5WAxOtc8kqQUNX6hGdqPiugb74EcJNE9eneZGx1VhyrvVeLLe21kMJLlByxW+1OaVOaf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZY8N3pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZY8N3pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C47C8B7A4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724744753;
	bh=nFE3k0fFzviPx1ggfWWwgD301nDgy/pZB9OS3oBOjYU=;
	h=To:Subject:From:Date:From;
	b=MZY8N3pd0ltfeXp/4NG+9oBtoP4ELEfac3ksUwmeaFziOFnFHpuRw5r4fgdXNBAGC
	 gUdkfpp9yKWKINeRq6IjgxDl+QTXi7l8vuRCAqYIuultFOIQwRrSS0drS2kydDg8Pp
	 wheK3PRD44dVfwdXX/iB7P6GqBme+cdXzhRwD/u9bUxp7ZR7ez1BSwUKoXOADKs+hM
	 8wPSnFOXA8P3RrulOwRNNq+kTDHgUPBZyH6TkQ0mUP6fh/UFffB9qR/hsSmfLWe+Ca
	 qETU1j7OtPRp0lZm1qG+vve/ojFUF1ueThWdEaj6xUgjQSyjWyRvOt6gT2yGV0Ey1z
	 JMsMCZ03lWh4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F16AC52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474475361.9837.12652042730346175976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7546f8e2ff81916187bbd562e88778082a93abc2b6cd8349d607a81b3b587043
Date: Tue, 27 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724744753
