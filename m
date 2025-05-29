Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD302629C
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748559595; cv=none; b=bFHx5UWr8pXUDK1gXdsKiZz+AG964w3vyK337XmtCEl3uNbDs1Gz/XoP6EvC7QCCg3GisScZ9w4wVDJRzdbU4heeicbSM/iCZVvvT5y5VB456Is0KQyd30zCltM8d/BhhsyoZLOZJ+UXTdsEM66Wlosr7uAQvXwC54bYey8CbMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748559595; c=relaxed/simple;
	bh=kYPqyMcySzjZ9wAORaNLyd8zxcyL6JMjm0RTgt2c66E=;
	h=To:Subject:From:Message-Id:Date; b=bLCG/lt2lawvZlr7/okHMYYxnfMMKHiI6LeX5MfJYHd5Kxkggcbh0lX44+F4CVbQ0WCc30xz8KFyTuBtUBNEjm5mSysK+TG1fme0+PqW9YbSQmZnye8nVmDE3QnMaXmNPOw0iwxwaXEg6cLhN4l20mGclslN9lNf1Lffk6Yir28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG59mQes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG59mQes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99F03C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748559593;
	bh=kYPqyMcySzjZ9wAORaNLyd8zxcyL6JMjm0RTgt2c66E=;
	h=To:Subject:From:Date:From;
	b=sG59mQes08wrAkcLDqE1FHfhJQRiXs0N7cqWGE7m6eWSq9GyYkqUx6koZPbgyb0zR
	 rd0BxTZ5Ia9StvOSnz2iOFBHTcXhJyiPrgWgAI8v9l+WITV2VvWSriunstn12CR7g7
	 ClB47ICXlJxypQTaK/fiSj8ZzRRJxrouKSj38WK9/R18q0wIpHWc5Jl/lr1wbUy2T4
	 CjZaKbfLpUhjZfk+7Zx8fqQo1uwRyTvGtHDcDBaRQQiqfuk2bEm5RtrU6ndrGfQhM3
	 x12J02v++x+6NQjk2W3NSZxofKo/yP0Yr/IxF7mWxXBnwI8q772BQdBiofoZukf+EV
	 UbbcVSX9l6JXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F215C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855959357.10273.15221840138467496004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33739dda7d51ce86ee8f39d84d509430973be3d8ca661a720379eaf34afa9ed3
Date: Thu, 29 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748559593
