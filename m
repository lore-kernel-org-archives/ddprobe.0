Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED004C7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727365554; cv=none; b=iAM1ihnumNDE4Jrn3cjYz4SKcACPqphZZKWZPe4rtbfPCQpHztoFIwLzYOXkqwGwNJuXA3a1nB4xSP4KsMk/+NTW3uy9z190xw/aHFqEzj9MIcQy5eAH4D7XoVxl8K4KXZmjGXDGNpow5LQxFYPxXaOpyo65TsdGK3t2Hfzp8oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727365554; c=relaxed/simple;
	bh=fdqYKNpfebNtjH1sBcIK0YKeGFSwCzkFJYQclCGA2V4=;
	h=To:Subject:From:Message-Id:Date; b=s5lkELTTp6CtdCdoV6r/NbKab0hgmFEu++zbEHscHr4oO6nfZhulFtt3FkKF2fM721Q0zO729g7WKQjy+Vs3P+oamxvxLHj9J3DTT2O7hL4n1O0o7d8881Nvh3p+A8I3zHij7FprKvddqOESQuvbOKkx6e2dDGAJCztGLY2icds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIfS+Wqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIfS+Wqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A4C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727365553;
	bh=fdqYKNpfebNtjH1sBcIK0YKeGFSwCzkFJYQclCGA2V4=;
	h=To:Subject:From:Date:From;
	b=kIfS+WqiDNKQigOgKe/Y/IMnY2ExB8s1DD9xP9MzATSHMroX6bpvZWzwLsEZ8rcRQ
	 dsZWHjILZHFX3rRBdTSp7JJfJ9owqYWEL2civJFaTjAIm6qRXhZx3JGm2iDTBJvlhQ
	 +6+VQgZJECvb9/v/xtNEo4Vm4KjYIQ7R8wY5hRIe2GZTt20J7ZB+ChHZo2XWv4VPjw
	 MPC5A5JakHAgGGkUreJJSjTqYMsJEhX0AaCtK2947RadMEThoereckmfn6C9st6wjN
	 JMfcTUb1fPmVrnrQso2OlMyWy4+HpuAwuDyQS55sROW+Rd8Ge9pKbSp4qBRyQfnlJM
	 BGkB1VKtEaMjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93436CDE017
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736555359.3264.1516518511261596917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aad93181be69a1de51f54591fe4085314e34a3a478908b66b43d7d6a26e91e0
Date: Thu, 26 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727365553
