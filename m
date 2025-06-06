Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516922868A4
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749204594; cv=none; b=rJ9cdUj6YzYijRfCd3PdHo0WxTP/ZPyZtoNjDnOONNtIoJJVgiJs7dVxw7xJEmnsya4wyNNlp4cD1WyIfHdSpKXWHNRbJidCqkP6HpU458raTI/OHRXIXNpGwLy6tWdayWasHn37fT/MVXjruOPB0+annV1I0fLc0wpvFdi/kYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749204594; c=relaxed/simple;
	bh=9J+ZsQi9ipsxAD5EHitLMRhd8CkATg97oK9UYnMHQDM=;
	h=To:Subject:From:Message-Id:Date; b=M2EJ+XGB+2Ds366uliGAg/bj4htIqeYyFibY0ekAZUFvImAT9+4HquBkV5kvZdOznPVRQtXVc9nWE+to2IG0Bjo3DOMJAlUK9xjhxhWDiOZlXh7meZfPQRam/z0iZ3T6nlSoSvrRIjP4V/wW2PddFUW1F2NHgzVh/QK7MTx0/rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo0ux23K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo0ux23K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B0C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749204593;
	bh=9J+ZsQi9ipsxAD5EHitLMRhd8CkATg97oK9UYnMHQDM=;
	h=To:Subject:From:Date:From;
	b=qo0ux23KbiZhLkcF0Z8AKS/xQHh0f47xoiG0pl5YxgU/Ltfmq7NBLdv+7rju8c0hv
	 VKBMdf4TuQMWbkyFElmfyIpQthnGD3U/IEufb61i2YiBlOMyPB5Fjv00JluDGaE7Up
	 9vqALLhjtvrJ+vFclY9s5aI83iS8zYmTBL7vp/HyvIeyU0DsZZBJxdzAUi2Lav7eSA
	 ZhZdKhxS+WTXpXGr0MgHDRYRLrtdnl0tWC1Itf68LyxNFyKXe/TkvU15O8CfdO8cho
	 HU82nXeiyor3O280DFfBrAZ8PrnFvhLgEr9gFp3WvdzGlhOQZPpYiSl6hNESSJfOJn
	 6jAHyz5f+6XNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003AC5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920459358.26462.17346947340804716520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc202d0787db19d62b608b3d24d983789febc63b8c6757a5ec71fabd90ef8190
Date: Fri, 06 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749204593
