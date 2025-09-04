Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8F242D79
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757016595; cv=none; b=QAvObNuGMgK79IxaWDEQ1yDhTlpZXzxmzsDu+DEVGBOcpBM6KDhqzZqgP0OyUzGpyVEpRSgzniZxaY9dZovHpBuUJpN91ea2twjD54sRyLDnlddFEZSYd6306gyPiyulnQiW1TR6tPCdTTCse3a3yXMPwjFnh9D+0e17Xl3Jncw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757016595; c=relaxed/simple;
	bh=q6ivkSwQ6S6HJeyv4BhR9PasMLFRt0zN5N1kznqOcmQ=;
	h=To:Subject:From:Message-Id:Date; b=X+DpIybS22BCkPoBRpHdubT+QYqAjGh6+++XAI/W9Vo87BY+L0uMuuJUwqrfMi8VGPwz71FN+NcLeS54KBs6LrUNBxK70jzbwBlCfmPuCJFTPDefwkNLHCyq6eAtyxi9Ol/WD9gccC/24wTxQVMOf0GuEo7+Ep1fux7cO65p5xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqo24ZLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqo24ZLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B2FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757016593;
	bh=q6ivkSwQ6S6HJeyv4BhR9PasMLFRt0zN5N1kznqOcmQ=;
	h=To:Subject:From:Date:From;
	b=Uqo24ZLl9gc7RqCi0KTY53uE4LGxAesJ2dEaFdcDFAPHxwQdbjV3gKgNXJsz5/jh0
	 2LpfSDA/IvWnkyfnZ2H5mi1VWRvdTU7+0Sc0mlKhKfNzwfSPv5FN8Tq28IStRgjbW/
	 EXHzH5PxLf08ygH7kfloILvPpkPUo5cUGWlWucyr0DOkKp1znvDq/vvFrnpJKcCW/b
	 A0wbVJAOZnnXZBPp575SyK5xISwuSS2PhMCe0m/VQrBZZPxLJSLV2mcaTAAEpV3BDS
	 t3PBBipvRX+yhiWnbDqLlzlxlCPZKUECCb2lD07c31SSIuzMssuuDGmDzSyz4yxRlM
	 tYMcJuCqsnLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91589CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701659358.7574.13031458365520353453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85629604f42944efbcbd74b6b1c398c834d970f2e53d337cea33c8cea37a939
Date: Thu, 04 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757016593
