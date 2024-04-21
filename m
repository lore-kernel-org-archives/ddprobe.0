Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21293F4EB
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713720623; cv=none; b=Ti3dlEy41GxFClLKtjaPUxH7jcECh1RQar7JLvA3J2GJipNaCcZXLHFiHvXHTzUU4TwyfZKwgX+Qpdlce03Yihu0CiUz7WhDKJCpTU+LDQkWwlv107Erk/7zd+CqII8EJFHgjpCHp/C2ViyeBXlhbUzN0EIhF7kh6jTHAq+5/KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713720623; c=relaxed/simple;
	bh=7hRiJGJCI4/aNWIKIguyxtJ9pAnLd8EBgKMtRMcBxNU=;
	h=To:Subject:From:Message-Id:Date; b=G9UKZtxrq3RGdI8zIS/Th0MPeG6ZgppCxgbyQTRoiYxSi5/tPJM6PjGR9aXtQJH36i3w25q9mOusYBEhXOCscnGUHlrtQnSVYEWN9QpnnJzZbErH62jVufBNRyKNDcR236Xk3UvCPrx8tiaYmGZmEzgoq2seZlaf9613f1eSQ/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+OpJd81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+OpJd81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AE9C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713720622;
	bh=7hRiJGJCI4/aNWIKIguyxtJ9pAnLd8EBgKMtRMcBxNU=;
	h=To:Subject:From:Date:From;
	b=o+OpJd81HMLisRnb9zzW67vbWVvPZJyzT/882HCVDBwumsnF4DvDcUIkCsqhwb0Eh
	 RF/OnqHOxVF/r5fkJGmICUru0sPGpQwdbzhQkd3WIHYSIk1g7UHLb8SPln5E0fBM9Q
	 4KlpYNeS069a7jdom78Cg74xC3JsL4VpMQwJWCuueGjNBjhIOnmbS9wJCjKXkVEu2J
	 4WTk5QsBng9gCAyWE5H07lG9DBG+atFiQ+dgxYY8qP0BqsLjdHgJlBBgBUzeXVcmog
	 S5aeMt6nB3hKxmkdhwFHMxFVJJe5vLS66aO/FdcotsA4yifiIoCsgSxo3PrMLz7uKY
	 1aB2fXVWS3IWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C593FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 17:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372062279.28412.10790658256359872705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a343f72dbeda1250835de4ea3eafa6337c9801c06827297726ad7ce32ba8a8
Date: Sun, 21 Apr 2024 17:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713720622
