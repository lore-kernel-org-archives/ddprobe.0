Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5F42309BE
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754041794; cv=none; b=gYDDyFOqlwLc5FIvWABDCowKMP9KpzxR65gjuvLe6HWyWb58NLrkImaNpZeQJ76fINjPf2GROoZpqVrhDolmZFpCk2oTUH5UDGiDBUtd/PLGwPxBzXJtakFczoBGyRtCw8QI5ZpO3rZgOhF0gLW1kmUkNmOnWBqRz7jMUgb8e38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754041794; c=relaxed/simple;
	bh=3CD990qxiPoGAWJ+s6adcuKUBRqdwQmBzezS7OjSSrk=;
	h=To:Subject:From:Message-Id:Date; b=mNEuGMdx5WT0vL8+swR092BQIsv83YZ70DDQF6exp69EQoMIERJsJ1x6jUbfh/7MAJPL0h+7muEykIaP6loywLH0PGgMh+AphWCDp92lW1fth/z6TRkX6GpSTj+PW9TsOBWfny0SHwH5CKcyPI+cIm+GnHIzS+Gf2frcXHSSuqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/cwYV7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/cwYV7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240EC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754041793;
	bh=3CD990qxiPoGAWJ+s6adcuKUBRqdwQmBzezS7OjSSrk=;
	h=To:Subject:From:Date:From;
	b=L/cwYV7EVeebTvS9guxtrB8uaUyFGxO/ph5te4XxbZBCJvgTdjaPeOMv6Hzodp+lc
	 JaEs3JLMfSLI/j678y+ZzrSw4HOz/MUPpYsnS5PNUhHTOX4p7tFuRoAm6uyLWB1SsD
	 vsUS0wlTgcoQvLA0wGWbXv/LEoywXNDyq+XvcM2I9WShSkrtp23SHpxnddWeLYHEuN
	 XLsDw5JqA4EqPHSuoULN/JlIf3/KQ1t+alIuFvPkGyyiUeDyRKHbN5G3vpsYhxtsOw
	 qYsY/ogIORKd9bjibjqV0kSVPk4E/WMdUiC79uLV6TUys7ytw8CLKrNYKmaL0N5iw/
	 KVJdGwXkYQhKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8CC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404179358.1967.1074749662544357217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371894fcdd07bc4081b767a7f1a19603319817fa6b7958fa551841e567f19392
Date: Fri, 01 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754041793
