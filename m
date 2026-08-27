Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49435C684
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787828434; cv=none; b=EBBh2mXmtPRZMtnUBR7VBgN2fitoBEA82z/3SW5vDcqiPwL9B4wEkAUYDMV5Zbv/VKMZrk7A6yBp22mFsEzIUsHwg6TJBQxmtYjywRJt5UyWbFhpUiab1beJSjpoNTOAxG21GkQuT2smiB0jXTNkUeShGP1BEnX5zt8qDowEdZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787828434; c=relaxed/simple;
	bh=ytt6FK6AaQ6gH6cZwXMqQ7lFTOkMpHU+7f3JKMZw2wI=;
	h=To:Subject:From:Message-Id:Date; b=qyRJLEHHYCh5l/VjbmCfWZ9YDPqCh8eCBSM8Wz5d6gYZ1MPENL4rIO45vk87x71xSv/gkIVYgr8OSZ+pP/Qh9jIB1e6+VKQ11JEFwRCXUTKA23hgINcBdpAmpKN/LfVzvfMO4PRtKlwoIluiSrQSdZ2JR0yoZfRfkCEKI9pmF0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvkWBceI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvkWBceI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB98C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787828433;
	bh=ytt6FK6AaQ6gH6cZwXMqQ7lFTOkMpHU+7f3JKMZw2wI=;
	h=To:Subject:From:Date:From;
	b=qvkWBceISgW/SesGkQ+4MrDakZ6QdIy5tq6nu5olCWl8O36PVbQ/JF59XFxjuPlPa
	 Yfya/7ulROppYVyPswu5suZX/GAm+SHiqxvIieF7YE96NXzrSZt8lkjKNgw1bhC6oK
	 VrPlm3LCT7HBq6yoiEnaF/crFgGubfFL1sgKaWKrA5G5RQehDqYm5odr9MqVa+Nx3N
	 /+aKxuOK4GHCtxqxSKDWVaaosIte2FY6mrjNxStcaEG4zeHVibv4z5NUR2bZKq37CL
	 We2dtVn5cH0aypwkIhAYhMuG2c8VLCRUoqFh/xp/T2wxN/7PSj1SdXJ3l5Y/l6ZrzA
	 MXYYXfkLpeSjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB31BC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782843369.29410.10828925575626445302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6c15ec4911d0654066cabadb4367f5b2460aacf3f26a28793b41bb1ab7f06d
Date: Thu, 27 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787828433
