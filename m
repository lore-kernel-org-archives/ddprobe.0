Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8928C883F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775743654; cv=none; b=ibVP8QB4RkI3c59xLZPIYiA6vOdSWoauHdLbTHQMyYl28q2Ne8PvZpTOSL0aCdplQcqTLbVEOLiCmKhnrWXe9DMFtS615su6+WKaJr73owl9mOqfRrXGgVfC95FrZwHyDhBBAE5i50OY1wWYu5cD6ntaj5liNVQ83T8pcZrvOZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775743654; c=relaxed/simple;
	bh=ggIkezEEuMsvQPKEoapFAvqnsEjHhQ8Gy3gV3CbVepw=;
	h=To:Subject:From:Message-Id:Date; b=EpMcUs6Q7T/GcsNwHLeCpgi9uz7xWnhlzbSaPAjhLNCxodusN4aLoWd6YzYO5uX6VQRy5DQ1RMRtW8N9RZhee449LIt7SfuEOr2wNS2LXSHWxF3KpdMCWxRTD8lX8PhR8m7vm+Bp7zHRSE8pgXF9ewft0nkTAjA5EQbPRx9THNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df+WhkhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df+WhkhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1BC60C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775743654;
	bh=ggIkezEEuMsvQPKEoapFAvqnsEjHhQ8Gy3gV3CbVepw=;
	h=To:Subject:From:Date:From;
	b=df+WhkhMkSameJT8/Lohr2CtPrseFsiRlItqXaW1jMKfjNDeMrDqUTiClGFMO/6vL
	 ygQPBzV0q5Tog7aN2kBJcnkyvod8t7J49FZbIoqp3t/fvn/rdRclAT0sL6CXOCX9wH
	 mR1wTTTsRjgjJoBXYMKsQdMELlHBRho2ZSOEqg+wH/4z24sw2XYAEPpOaSLnnSbFdo
	 LB41LOgQfMfWeFr3vEaifTTN+axDgRzx8PtvTDJxjnPY0oTCQy5XV6eftt7Ob6kvc5
	 G8L5FKpY0cJsz+xscEAgER1dDDsDCHtuZhp67IgMjwJd8mufFntTWotaysm9xxOmhv
	 PE1N061P+/+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBFF1F31E21
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574365385.18328.16713428506656301686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2700bdc1ae856223f1ffa079a638acb85c4b601581769c387717fb25b87a3c
Date: Thu, 09 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775743653
