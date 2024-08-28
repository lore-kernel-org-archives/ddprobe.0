Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DEE47F46
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724866554; cv=none; b=E5swotVQ3Ifj80lZBzu/Pnjy/D5NHWPRDMV537mqIjg5XqGmcVIgsm3Ug/3So4fMu0KiQ2M0lRVeDC83XkQxo1X0MFLi4t5Gi100wt64oQwiQp5pOsZmArXH0+7VSDfyYElUdS9+YoKtFQUnejoVv/2cKFo0y1xmycX5r8sRU7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724866554; c=relaxed/simple;
	bh=06Z1ShHfdGW5nr97PxMQR78TRwm0SBMaHmHvRUdx5+w=;
	h=To:Subject:From:Message-Id:Date; b=rLUfmXHEElogI7e7gke5PxV29ijmWNyZEHu/h3FJC+xgT4LSd1MizQvbZG8NIrDwJ4vGvACKXOBySQszivMgDa6Nq14pQYw89EZA2Op2WTwb6kqMouj84aaCOue18U3zuSS60DEk+AAI3znGddHT0Q50lX8e8rI2ruFpZ0CAU7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7Z+UXJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7Z+UXJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E2C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724866553;
	bh=06Z1ShHfdGW5nr97PxMQR78TRwm0SBMaHmHvRUdx5+w=;
	h=To:Subject:From:Date:From;
	b=u7Z+UXJ4Y/L2a0Ro1fXhsZvFP/l6NoqWspfpU6/VOGzB6TswBtr4ZOTm0wvkdwGmQ
	 Sh5E8G/Cw5NBkmab6EsJuGFrOMOiTYz0qoQEERyMorK7h1U1PjSqmXZQwyl2rUUWGs
	 mmURuIU1CNU4tgwiNTPxb8Typ/FnpaPWbqw9uZzYIfZryK+MkRASCSKHgvvefJ3GMr
	 ZIA1GfXcqQHqgZJpW3Es0l1wy5dQr2ma5RU3k4/w2wISNZFV3USQRVQgVK2edZ5Xof
	 xhBZa1meqIqoylzMEx9n8iVmcjU8T0fBRN3glHF0Wooc0oNjQfFQ2hVjbDZuz7Qy8B
	 q92rajE8SJ0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471EC636EE
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486655358.24831.6008573318249665405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef61537d6854258b755ec8f7f41d29dff9552f474ed4c73bde57d58afe60776b
Date: Wed, 28 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724866553
