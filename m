Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ADF267AE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741872534; cv=none; b=nCiiXNiVnGCtxY+Dsqrcf8D2AHIvX5zJaEXo1rOz4uJ5OI/SSnm8FMz5swLi+fRZhOLkrQ0tZZcwa85l27XnK0XxWVtSOdz+XOHUXgO4236LXUs6M9iGNkNSx1TBEeSA5gvtL1GOp5/39UuOs6IUBFcALLOPZfrXQ4e3LeKV/OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741872534; c=relaxed/simple;
	bh=8bqoIJ/3rFG/AXE5Lj+fkESKKGZp6wCxJZl3c6CqqJo=;
	h=To:Subject:From:Message-Id:Date; b=PDFKGuwDkraY76IGUdU9RViLDwHp/RGtQ4lpMgAYh79ahFZlscLy0qLDws/jupFW3Dy2ENsEO/zz12q/uu27RHlPOJzsw3gYlnXfNIpQ/0lkB3nYbx1rFoVcv7/JJB1olSEuMx2uhSRpb+xvRWoF1AIhIdDEhybpOdzwPxNJgII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdvRTbI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdvRTbI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6C9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741872533;
	bh=8bqoIJ/3rFG/AXE5Lj+fkESKKGZp6wCxJZl3c6CqqJo=;
	h=To:Subject:From:Date:From;
	b=XdvRTbI3vDxiXf/IeFqyhYF2q+tTR0d/TdRoTDvDCmG6kwn3HniPatrssGxol/xLd
	 T2Q4R+FxNKJSFQq0uxb+7vvPuqNpVJwYYh0b3CYO1fCc5aFHVnvx7x0WF2UEzK5TVD
	 RqRL2PXy0/AZ+N6dVtSL/Io5N9ZF1/7x9E1YEQIGHz+35gNx/Ej/pxL2cdEKu93vpH
	 NsxydBKywqQtDEYzzJPuUrGxxJ09yjq7oNW3W3XCge4kYlSvAzh0ZsWhj/XpB+13yR
	 AIaIT5YQcvOMbHiRBboY6aUzMTmrLYvmm0Z8x+XihG+iDZx57OS+wLMcGQwt1pkTV3
	 fAy+/YBV7ykvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9791DC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187253360.15339.2986930401716123116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83705b659de2fbbd4c064974cee9e13fe6ec31d3601d24994ba169f92a17af65
Date: Thu, 13 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741872533
