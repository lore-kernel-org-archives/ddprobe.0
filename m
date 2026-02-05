Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B712F7462
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770313434; cv=none; b=ppaEVZYxp0pvLA+Pr2Jhxxp15lK5Hst4v6MipY16wWKdaThIu5saG76O6eLsBYvCVaSc6OZ5V4x4z1mchdmdPJNjF8uWrzczLiLjoyYZPqls2tT1S3dPiE/7MlkLs9dwWx2dEHACPisyhl27bLgYCo/3a3Xfq16XwziA3PETwno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770313434; c=relaxed/simple;
	bh=4dxI4PoxkM1nlavAwLKchCHdMcKiL6JtSG0QVmIJpEc=;
	h=To:Subject:From:Message-Id:Date; b=MENqVMtvvL7TDM07JilR6ImNSXsLUvlqL7P81iNDfN/lDvhkaIvAuhrgH6yU+5p/iFQ7TXhEN7p8/wnoljR0ZPznf9SGwqxQPwYcgyzzkPr2YE9W49l6da/nZVBKaMRDG5lqaepy6e0bP/v/BwPTJAfeMfHa0lCLf84vCyrMDDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNwOQWR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNwOQWR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD23C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770313433;
	bh=4dxI4PoxkM1nlavAwLKchCHdMcKiL6JtSG0QVmIJpEc=;
	h=To:Subject:From:Date:From;
	b=dNwOQWR2DXcM74jBGwAEo/4Da3IqyRu4oV0vO0McL5o58pu2276ZExPYhEuFgb9da
	 bmiWi2ZBEGK2KgaSrK3spyiS39+J51cX+WiFw30Av5jlksAamrf3teqq3rru6T+oHb
	 L+TKh4e5g+mGdx/GIsxkdwJF/xEGbo0u8q3vtQS7AD6PNj2j8IQnMFj5b2Cu9AYqNI
	 FgMWUYvARslrFDAZm5Twl1N0zcn+z+6hjpTU8wx552srzErgX97NvhYoBzzjVi1FUF
	 89F86YxX1xty597X9woiIg/eO16hAOQWwK2G3h9jT/yaUWlgtFSvuqVB8dtC+Rumft
	 BPLc+z4P1VVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97508ECD993
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031343360.25340.13066856844769537108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04e127b0e59902975c8ac0496be34be04af3467cbe7ee923842e25de27210bf
Date: Thu, 05 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770313433
