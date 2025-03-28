Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD77536B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743120593; cv=none; b=MSxyH5KQv1NArMDvvgK9b6RK/q7QRGg6T73cCwJ14zTjCiuHE5tZy90c+FS8zSBypwARNhXD8Xab5245JlnWwfA7PWJJ2qVOIV62JAqS2fhILAsZBTRv8PCzpIE1s666QWJxiZosopt1DpJQCLAzKK5ZcSaZ+ed8iJkVDd7BWKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743120593; c=relaxed/simple;
	bh=R1IS00DpJKgTMWOBjHLS3ZV2QspplcB4fPtBLoyuzyY=;
	h=To:Subject:From:Message-Id:Date; b=PWtHjwrPQkLbxeKnBR+feCeQlCEyA7UxDgtyaIWZn+FDdiUYNUq7g50sma2PW3ajO4w2TdHSorC4gvAidoXxKmYyMx2LbN8BlUPW6wlSSnIJzudbDO4J3i8HknKG/Ae+T3uYmgBNPiz/tyTasoN5UlyMZglfU+orRaE3jPmJedU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgrHGFVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgrHGFVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743120593;
	bh=R1IS00DpJKgTMWOBjHLS3ZV2QspplcB4fPtBLoyuzyY=;
	h=To:Subject:From:Date:From;
	b=PgrHGFVpuIJboL+fPC0xQRduLraY0szSOtzS1HxfV/oWwWFVikrDveXIFjtrYAKpZ
	 t41uvkaXRCgNOMbfkxr1aK+toRb/7vAr7Eq2dnWEzBY4j66RsFVGcwrTl9W9OKs5mx
	 IZPx+qawpl+6vWopEnMnnFHUVxf5fnlydaP1xpO6fKz5zREOc6K3HXhg5mx+sqkSId
	 znhU9KPnLXbUIk5qLZY9SpPI3iKceoUMxHMA/b0SbJ9oQlWfGvgmaiQNsfhntKhmOf
	 TnLPqajkHC8ONcNgPTPHGYoR3yuMN2wof+e9z+T7Y+ztB5DxOgXObgAgxN8fXMaxln
	 H1asttUBjo6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC1C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312059358.18979.18121099933854706401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167ed0ffa66427c35989937f20067039ac1a2242fae2b5c89d752f8dcedb299c
Date: Fri, 28 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743120593
