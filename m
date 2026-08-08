Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B03D0BE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786199435; cv=none; b=RmVsSmPrNs+7qVdft8fz4GH1e+OhsL7DeeDNINu0slIuYeSvbUnzTDA323TueVJD8ljrzbUT5yLtyXW3NIFauMQSaX2ukpbc5pZxLdgBEU2zebK/AE7/jklW3IZgSlGgl9osO6li3pChDoRwFFphAivnRf6zXL4jrdyf2dXji+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786199435; c=relaxed/simple;
	bh=Sx97k1j7sIYyF7/QZVDFmXV9QPZk5zAUKhk7nhtkYY8=;
	h=To:Subject:From:Message-Id:Date; b=GwCk//MkqeGD3p+ibOimq8emX+5f28pv2w9aSGtLiZsdjbG36oQO3sZKOtmV+/xJM5b/VT0i+sZc4wSkVoKKNwxbVUxZpnHi/klkU33Y6WmWSe9qn7UVfe+Ie4XxQeLed8nUBwFcavR/NaVswmJrIqJG/tUecaj+wKlmmB48QR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdQ0rYgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdQ0rYgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F6AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786199433;
	bh=Sx97k1j7sIYyF7/QZVDFmXV9QPZk5zAUKhk7nhtkYY8=;
	h=To:Subject:From:Date:From;
	b=pdQ0rYgf909nIeVNU+S13Dbe2cS23VWNwYogsohzPgVME8yetp5kPzCYCe6XAA2lS
	 86ij9VGa26dbDjKZkHGbhL44WSlB7nhf7IKf51zwVDELLH6UafJ2uo9IjbExV3UdgB
	 CjZN2bNcfVQYP8efWV16GC34LtPbJdzyBPy0BcUQ5FM1xjlF2pTZ1VhzZEmFQYQg6H
	 gvowd3RSylvWaV2uolkAc0LGSvSn0hhC5wvc+bY3iYF8Rgptskp8vJCTwM+/bmwRfY
	 Ht4WoFz/dpb2JXzgusfyvrS4r1JvbHPu5IJX48M2VBkahQ3v9YxXB+sp28w9SoHPas
	 z78fvxVDkiVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE1EC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619943369.17113.11593477953481761956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8c8343fde66c3e0b15b83a0e02a20d730fc6a1d7c99a8c4d8c5745b2de8a3f
Date: Sat, 08 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786199433
