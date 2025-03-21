Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F05A1E5B83
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742581794; cv=none; b=G9BojuqFbfwUKnMcxkbaE6n3dZCpsHoCEPDdfw0mHzK+iQT6MmGZL97q7091i/ECtATREiDZq7tBIedjE7prL03LaRBlW470sGz2auJqQ9dIcsScB4d2hTYwNgJy51i1x2gZdcVjFciiDa9tp5bpBivYY/L6ARdxizV1F2sIYyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742581794; c=relaxed/simple;
	bh=ku09DUc6YvzL7Q2twUXTWqfWR/Lrful1WH+h347qIBA=;
	h=To:Subject:From:Message-Id:Date; b=FTO8p+/EVEh68TvQbaWRuEMbuKZLTy1/xto8+D+ZW/rJ1/Ot9dz0ZKzbKcMHrFG30+PJ/iOGaIEnwDxvBWsSZAFhl98AujL9EfEgS3BaqWW76QGAJAzt3utatKVxBrZaRSmBAPtv4BnOGJa/mxwAR7W5Is4YVGBGO3wxL1dFJ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3TadyzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3TadyzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4CFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742581793;
	bh=ku09DUc6YvzL7Q2twUXTWqfWR/Lrful1WH+h347qIBA=;
	h=To:Subject:From:Date:From;
	b=p3TadyzEdumZHPpmXiuW2jD0GtlJCZVvrRUsnvGqQVA+p7HFw+CMmsRTCrTC7VRrd
	 U5Qitbuwq9xj+aKwIhf9o5KtX+UgV1HbibouA3F2vgn+VNAeWgqBfrvsbz7Qox6zvv
	 WtidNgsS6KosuFREke/Ic3MNEob5OgRx+oxwW95ju/2iqxf6/kFfHufrnFKOix5gYt
	 lxgDHneAvosWosaXF7h+LvLuUmDXYRP2HSUdgX66qhJwW2oihFyXQlQwNJIHOakhQB
	 AB+4MZp1TLoRaxoaQSe47uw8ta7dE2Q0vV3gXdBE/SpyNkUlVvGbSGuzGBOEWloxK6
	 VOGJWD+UdYUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98116C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258179361.12171.16661278262114376584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8664ddbf92ff7c5bd7a0a0a1460ad19f6353e568503c50d679f323baf3168bc2
Date: Fri, 21 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742581793
