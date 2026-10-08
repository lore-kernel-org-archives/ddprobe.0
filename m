Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FCC3002DD
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791448234; cv=none; b=c0lpWbC+Bd/QH9iS582flIg935SaphGQvBrahGroP6aR3xBzZMA6P+o5YCrWSUKD+yDiDoyoNwu2MBLvI4QDTi/Z9SUHt7Aprg/0QeZ8uFsOUPwHDjcskm5vmLLo4RiRNOFL1nNQTTihJVJAHre8uBWp3lKvXmM9ptFACGWvExQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791448234; c=relaxed/simple;
	bh=Mrt0RlCDuG1Ga+7vxBX2ujM7XedgvPDyEQe60x45XfY=;
	h=To:Subject:From:Message-Id:Date; b=Y8RCAOP/PKJ/rPIVL4SgFpHfPoHjkJ0k7Gg37wzlqeXnDC8jwhTIKU0mt+t5oLxNkOGtpMrPVVSUGbfukIEpZ3M37QJ6sjQQ/y5yku2EXca4dl7jhog1ea35h8M+3Ry0n+EVaz8ZaQUWp4PZUSsvzEFFgy+YVmMTCmFL8UKMr4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt39e9gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt39e9gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAF1C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791448233;
	bh=Mrt0RlCDuG1Ga+7vxBX2ujM7XedgvPDyEQe60x45XfY=;
	h=To:Subject:From:Date:From;
	b=Xt39e9gzZb1VQ0+nlOnKJoGxXjTotoPRBm1zPb0CLjY6COShigL7ffJFViaKAfon/
	 ebMMJSWcWmAEst90Q3MJ0zrkq6BMuvaun6JeWvGOY6jg50lNucM0s2p/z9PlfDBq4i
	 vwajBhb3DcvvnY6rV7GBz3WTC23Xsw9l3VqYGKZSah01bWAMG743sYSeSVasWSVDAZ
	 Ee04erWTxTDbLjZAzhz3icIa+8jBUGJ1cQ3V1qekNX8w+F4iE3cudlG5Vy7SAdEseL
	 ExaOBqpAP4kx4ba3gsHcmK59Xs4N1HAILLH2IlLMw0KZVSQ932coTgXNrn68MctkZB
	 kYfGVbmwxSHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8309CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144823374.26662.4896937662503746717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe0b310f499915929b0a291931d74d158f9d7bd1ecfa77c9f9da7a1d4c35ab8
Date: Thu, 08 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791448233
