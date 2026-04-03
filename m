Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3005D3612F1
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775225734; cv=none; b=aDUgZxaYidlgutOYDircsNYvJPY1KX5l6ytodyQ48QWaoY2HKmTQ8WJWyoftXit6tMl4SGXB4F7c8npGQ39abgTMVCL1EhcaJbjOvOO6bW/krI9j/7m558pk6jMBaiDClDp4QGER0ive2BGshg3WLrprL2sRjeWyYWUWoFQzEmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775225734; c=relaxed/simple;
	bh=vqLdooWnPO0dblENOMj5BaFX1tpk2FZfReYbZZynVyA=;
	h=To:Subject:From:Message-Id:Date; b=aDzHbk3c02rvTJgiGD+nhl8ACDXsXJSK+ZMqVMFbReWMXB+NBygH/fNsswC+xIoy/YGKZ/a/A5CGvDtYYwP2pyP5BPexwNIQ66ORAyeMKIwGnp2a5XjXTQMuZxectGvZE8SiFVmqSHf7StWXJ0JMVurwIhaAkQhvD/9W1nbmK3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDPbuaJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDPbuaJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5883C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775225733;
	bh=vqLdooWnPO0dblENOMj5BaFX1tpk2FZfReYbZZynVyA=;
	h=To:Subject:From:Date:From;
	b=tDPbuaJb5CCFiJiYjXZuSW/eXsY1TtUqodPEw3BRQo1461V3p9IfD8rR+6unWP8wI
	 u+EuN6J5yM02PyeiZ+uxFxf6I/UOe8mhUFIOQAk3OHTyK0Cjl3HXmmjqoaQV4eCyx2
	 BlpAGV8RsUknYcivhwl4PGl/h+3Rk4acfehE04kbk9AaSwfxthUzoeOXwcMOY+WIqk
	 CIdsnV15NFtOHHweCTjDCTOW/WGhhz0IcxvhFtPF0EhWZJY+X/NCYogBUn2c2TMmav
	 5XuhI8RNBIaAGs2cdYSdUgpJw9SEmPPlUEfzuE90Y8XwDoza0j7lJV43bpZI+NYOLm
	 Gr99PU6ohCuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEC3E8536F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522573369.12048.11887266648201131310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cff40ba661a74b2e4dbc9c85c198c957c7ecb6ed76b99781a7182ed1cf2fcdc
Date: Fri, 03 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775225733
