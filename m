Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C50395DAE
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772713494; cv=none; b=uFInlPUpDpu/AjtAeM99OKLyO9q7tIIP6vHw/265cI5ox9iHktQ6F2wPR+DV+5dgGcIGLLeUejQvSpuHSL/ss6FYjrH8pAsi3ziwYcUwVaNVT73JSm85pRHAOz39YizYVCoUW88jtupCrTahKOUVOzvqDHC+E4op+EEFKuVtnFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772713494; c=relaxed/simple;
	bh=lGlm5Vkb2T7iiyia/ofI9svG7l2iyvjy5WsWRgDSGAk=;
	h=To:Subject:From:Message-Id:Date; b=LBUHRj+tl6hqvVLusF37Y2yw/FlRzm8woi9P1bKHWe1lMbdbrmYp6pZfyPiIOzJbiorCbihAwlM8KtqDaBv5Cu10/rnv2Tirt0sgnK/bn78YT1zXc5obwC3n1CtS8iTBClijSpF8kTBjJ+UsKS0oCoriVc2xPmUZBHFhVIDqvrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mywtjw/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mywtjw/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A9C2C2BC87
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772713493;
	bh=lGlm5Vkb2T7iiyia/ofI9svG7l2iyvjy5WsWRgDSGAk=;
	h=To:Subject:From:Date:From;
	b=Mywtjw/nvQYamNLNEnLlwmKZ1vQ96ULr+OLX/AeRR7u4zqopVZoHwx3Bqk4uZIaHo
	 EyEuCrFn8RzJLgpCJiUViZ1wmoP3zPp4jjKJB7ccN7RyWy5JyTfRv3L1i2r9UTBTJn
	 JfJwmXArO8g44mStqGvLOw5lGFnCZYgUa0HSBLXqJqEv1Kqi+duf95yAPD9s2SpHeG
	 ciVucHIf7ckOagEOQqPIk8TJs6YVS2wiyX5buydWKCgg9AyzHEiVoum0MPuSJYPOCJ
	 XoRzWxq0T3AP9+70gNKVqCRXAGZAMm6nPwq6gJC0VRqIJx2ISdDYLvGG4msUZlkQP6
	 Csk+db0lVJXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A3F3092C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271349358.13248.2507554680348813418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ace3dcbd1fbaec7a5a44c9835c766ee420ffb3389d52e984b3990f808c4a491
Date: Thu, 05 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772713493
