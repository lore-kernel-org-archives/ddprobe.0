Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DD38493
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727446554; cv=none; b=MM6Javq5wj8PAEcVqPCp+a6rguuvNuKHkDWHzPfGmh+vpdXjo2bKomrDiYbe4KU5prTQovc4AkWkq+szZb0cRIKjx8w+YuOnODkZZ7bJ3Ke1iM/Mj/fxkrCBM50GnnTMruawJ7jUNhdmQujpCyHwlmziecGzaLMZQoEmumcVy9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727446554; c=relaxed/simple;
	bh=bm3WJwTGVaQJ07O67t7pkhzUHlU7Uf5A8jWFGAtGiRY=;
	h=To:Subject:From:Message-Id:Date; b=n2apCeQyiWzcW8FmgL0UY3t3T9u9qfSBexCRbGrYo8T00WqiOmEgN9LFnPqQtAO1HzK0WfnDVPNsxNw3E4/zqy5y7yP0Zd4UmTr791i0x5wJ/NdYAZ8bCNGWbEJasJANXImOrzUI58L54fkmw3Sk8pohuyBQjtM0op8Xd9AT9Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/Vq79UA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/Vq79UA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA130C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727446553;
	bh=bm3WJwTGVaQJ07O67t7pkhzUHlU7Uf5A8jWFGAtGiRY=;
	h=To:Subject:From:Date:From;
	b=S/Vq79UA4FIO1vrQwTg52myeZenkAihwGaxWP74KdD6kLpJjWMvYOk4dsm1R4Twke
	 xQYfLnXLeoCzyIW60Ts4tBAi5JOrWSJLNZacBb/Qea1eJy3Q9PDqhwyB2+CRqqWNhm
	 X0WJO28LOAnnnQeYcNRmkqVhPc47kAwdFMLsqSxVx6VU4bYJtSYRsO1x8H7vOjYy0p
	 d64KaNMtZNqZ9k2nwyliDBFh5zloVWAjairRP7DQxU0TcRn2h1eMbYVzY6IHaQjtey
	 3d+PnsazfHyVxZHm86MyZVu3dz9W+PlHWAEhdxWPwBpZaoSFmUzwcep9MM/4Q4v92j
	 XRvh5ZyLO0udw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98207CDD1B3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744655361.22261.161078376680809645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3266ca7fece921ab5d27a791acd3364daa7071520cef6afb86d0a6ac01a4fe0a
Date: Fri, 27 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727446553
