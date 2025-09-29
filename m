Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F66B34BA53
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759124394; cv=none; b=nvE0cExEH+E6AECFAboM5bL2LHrJgBV1Y9xds2iumwccyUl4Wi+3rMNZ//xUI4tyZCUYwp4CV5d/bEMGQtwcd49GTqlNUBbw1mmXxn9k6Ka7ZFrKWIYiC9hQF0zhA42QpSFHrGo2uOV5e6hgPWxp4BuEyMUBj9ezrTs67gJaViE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759124394; c=relaxed/simple;
	bh=Z0g1wlz9FiXHcAUTFdeJ53br2NyLgdlcgrCqd0kRN9g=;
	h=To:Subject:From:Message-Id:Date; b=WA2U8pHKAIe3PHMk5izyJqbZFy74RgF3GFrFUI+8+r3uxuYdSs+4eHTjcADWwSL2XiV4aDd83OjilvPKmpnOuQaYUbpjuOYgfaQjaxH+CtTAIfZOirIIZm8pFA3iLm1ubCgt6EAW0r/HPSgcJiDlZoWsirGBmoeguoSDBbJclP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijPq7+iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijPq7+iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE77C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759124393;
	bh=Z0g1wlz9FiXHcAUTFdeJ53br2NyLgdlcgrCqd0kRN9g=;
	h=To:Subject:From:Date:From;
	b=ijPq7+iutTTgFLL2/aaeyxK0puWrDu7S7eP+2L45wDyMM7NKvG58BbX9bJphgMA8k
	 AE/X8bOtDaM+TZmWHun5QsPt/aojHOyaOdEfqLLJJMBxQltNn51GM7CCl9hJVzUSVL
	 vg9V+mR31rQk9kIkkjtPlTTz+g+L57MtbKyR7py+HVO6DvY7GbL52VBhKx774E42r5
	 nLuci5O0uakgITLegGf4fa5B2KEK2LY8MEClF6EZ+9WlToariXqYO2x5qZ4IW+EQr1
	 TTA2Y/WnK+o/Zd/9NG/TbjG252Z9qwen3J3v6FwA5JjnmF+fkNF7lOCsssK3QEXJaf
	 8WzNHMj60BbDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C77CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912439359.17875.11480454122281018068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5598d3b145ee46361bc3b798eb92c13a10130c5afc3e413551018054cabba95
Date: Mon, 29 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759124393
