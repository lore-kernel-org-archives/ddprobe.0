Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CE64F647E
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788455434; cv=none; b=lKB6r7mfEezd9gl0z+2Zi4Dp4dOZrYJxVh8QvaG6nE+oljDjDUyFscoGB8xiuBeYTJexKTaZbfWp1OAr4GMFpPuzo3AffdI0sKfyni20EGRwB9ru8GksIXxabGiY6nxh0O1pDGPrg70doDPNYeKP4lK13XXcSFQU7bgxyrixymI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788455434; c=relaxed/simple;
	bh=aP6o1WjRDHAG+CSSWMjuLWehK5GA4BxOiiI6pUcIrp0=;
	h=To:Subject:From:Message-Id:Date; b=nf0KTmS6rYytUcBqS4nKsHfvQE1++FZWWTh3tlBexZoKNOHqol8L/7NUamLBJuDNohF7WdKUjQo3GciWO9DLZVuDe+gvySQhJqyiMDse3P278V7NzaTABqm9u/lyOyTFGNEq3tdwkKsza3n8F/MYO4I+MdvrM/gfRLThQa3jViA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsotHKOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsotHKOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BC9C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788455433;
	bh=aP6o1WjRDHAG+CSSWMjuLWehK5GA4BxOiiI6pUcIrp0=;
	h=To:Subject:From:Date:From;
	b=MsotHKOddq70qMa4Xb35OTWd5y32Xp+m3f/lzeMHukDTaodBnYc/IVQpWkxM/dTKX
	 3S+yJnsDiCvsfsvt6hG6bKKY0PIByTfjuZIw1kiWJPUcyI5ra3yhO7v+PBHT0QlNL8
	 vg4c43TQBZTbhoUXycfkA5MGTgeB2JplrvhSa0UJcBUM5lOZdZ/YA+iv8ZmTCk4wwm
	 ve8jkgKy4eyrdQLsxqBFGclMNBP7sF/Ze/kS5WxocfmJ8q9Hhz+IjIL7+I96IQxoz/
	 isOvg8YIvsoIpxONhl7ZbBDx8G3lu9qW8dAQWH8vxF9jNVEUjZEcm9rwhMFwwnefG4
	 uJq0XM5sx4mmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE289C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845543370.13153.457614731520277524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 947b4bb49973e328279345e3b61529da39cbe001098e7f49794f996d2f5a81a5
Date: Thu, 03 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788455433
