Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196A5C129
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706425097; cv=none; b=SyOrLoNt/eCN+wqIpQTiwzid4OnhkD3jk+8uEQmX0dTozZZHeaRJ/gzwxgW/BsguF7b329yI1ymv2YvWSeBqA842dU8ViTWZ0DlxUMUwXtzmEk80fizAZ4kccs6MsUvt1YPvZSWmimVj1m0q1eoUyyup7H40dnzX1tH5P846+t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706425097; c=relaxed/simple;
	bh=3mzQR9GBw8FQmXw5xlYONwSwasfHVwAlaJj8rhR52U8=;
	h=To:Subject:From:Message-Id:Date; b=d+pS0BuOpsbR4PeEUx9VXNi+nLuvpRzzo1vgMea2SOMhJw499bulECO5fkZWZ2k9Hg5LI4HmnTJuZmlCD6NMhWtn8UbHn03TRxoJ8eAeP8amgTD6fk0DqsbMRzzh1rCnGCrcAHovG9e8ohe+wlnZ1YDNj4rnL1FhoIyCh11VSpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ua6wzW/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ua6wzW/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F05C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706425096;
	bh=3mzQR9GBw8FQmXw5xlYONwSwasfHVwAlaJj8rhR52U8=;
	h=To:Subject:From:Date:From;
	b=ua6wzW/Xw6CfK+vtb2MP7XZHtg/8ldq5Ium7IvuT0pY605AQsQ+wSJbj/IjpCBlxY
	 B3xD2/tgBVVt0H/G+CuQffEPfUnkJ30AaCMIBcyROvcV6gz/ftJy8V1WDzISHWu8Vx
	 WHDmi4PelmRCt+f9Kmj3YDyWliifpt+coFbJnOW4xtLEgqnpKId3MEi5uWKbO9RrRs
	 x7mPQG6qYKJGV7k7qylH4TzqdSqSIuoR4HQHaA2626Qcv+7vSo06v7rXYNRGE4cIhC
	 jMEnD4CevvBxwfGXXYylQetwzZVUc2RZssuvNvpCI5kfJIyTsnX2fHX6lXQbIHMgFT
	 zovVqZyspfb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6801EC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642509639.24521.13981838261469073677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9749e629680c040c9de771eaf1db70d420048af3836ec3f83af2ae14f176c2de
Date: Sun, 28 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706425096
