Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5CA246BC6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766706234; cv=none; b=Vwu3xGAuw1JTQ0ZO9C2eKqSu2KJsJ0rqxEyzY1I9cUBizc6Q44LGvxB6vmaV8AyYF0tLmbFyAp+q5/tbB0WRrb9IQVjoDMb9dZUE++zHkmRcfKu4HH19pg6hR6/crdZKzzZIP/GtTETPqK8fLUePtW+ozAuyJRaUwiYLhJfXeRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766706234; c=relaxed/simple;
	bh=S2MnsaPswoDpjrlbQb+Sx5y26wXEBLDbqPOdywNtecE=;
	h=To:Subject:From:Message-Id:Date; b=eORiVjVl8QlClXiaZUMI8PhkEwZ1/fjMFn0wRvqJs/TNtZMStW1foxjLW57SMolooR14YIq08UFRM0ybpFoA5rr8ZboMCRtYTQyLhZQkZOJdtdudypwBWYpvXstTDaTvOOicU166+granTQk+j+WpAZkZB3Z/qbTy3etXZr4OGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEpgdx8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEpgdx8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EDBC116C6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766706233;
	bh=S2MnsaPswoDpjrlbQb+Sx5y26wXEBLDbqPOdywNtecE=;
	h=To:Subject:From:Date:From;
	b=OEpgdx8FyP0flMf3Fo5xzjeJ3s4TR0g0BN7xe3eJoiHreJupSz/WGIPcOwOUKpdZJ
	 nSv4iU31fs3pPvac6S8hLA7LJo8zim0Hd4kjffzjxrtn/2wJ1J9TgX8GV1toGf3ltJ
	 bgVBq0f6sLoKUJTCiiRhNI3m0oZGDLHWZcr0Zv5VBqffmoFMBMNp8AYtA+0dly9P7a
	 QTopnJoc4qvsAvE30uokhSBzfsQfpxlN0NvR0IieHjA2MNSYl9NyysKeG2mXJXqucJ
	 TKEZ6XSIgDiCTdeqnT7/jKzVYz3GxF9yGSRyflNuG3TZAZHJ6CCl4NOvPYuF0wBhaT
	 imMnoB9sJUCTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A39E7AD4B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670623358.14840.3665564170538440906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466773cba25114639d0f175911d4ecd7bf0b8b1f086f0429e2abf3cd9a8814a9
Date: Thu, 25 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766706233
