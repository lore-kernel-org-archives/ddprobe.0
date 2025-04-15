Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A3F23770A
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744738194; cv=none; b=jOtim6VI5mYqUpPn/EAJkNS6uWxdEJu3EBV8RchQGSEPtLVv1dSTGEZyFN7InhNC4E4o1RbgS/f2CCgRZmmFdxkwrzgo8YsXl3FPjUTIFqDFU3s+4zI2a55tQGsvfAmukiKWvSVqc099JRBqNjpa24xYxGajFNNm/9p5wXRoWsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744738194; c=relaxed/simple;
	bh=DCyg58b+24QJvXpRangw6BnNlquurIoneWn7qdme0S8=;
	h=To:Subject:From:Message-Id:Date; b=Ga2crJRmxGTeUrOHYAEBeJ2O987kGtgJDhhVwoq/xLg9IwIRvZgS51PXd7xsQTf2RJeXLj2/jOzb62b/PlxTZnuhF1JDHXnXn/kUt5KxKFW8jCYH/SaIpiCBq/taOTrp5mAAB3BOtOXZOWBLtzwgvlrI3HlmgabK/LB6zq/IIL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsHu0Jd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsHu0Jd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFEEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744738193;
	bh=DCyg58b+24QJvXpRangw6BnNlquurIoneWn7qdme0S8=;
	h=To:Subject:From:Date:From;
	b=JsHu0Jd/y+biOk8m4+DiGLOh3WcFaWe8rGtgajM6ve+0soICY0MW1BBdhgzJJM8+z
	 SqykLe7KvOJNZd3Goxnujhri3PVOz6qotRfLsxa0Lr6AUu8yvXg66GCDXN4CgZGcaR
	 AcsiyR4RUG0tn2ToId8ZijEJlCy/iITHLDgyg4N5RRwwIt7fxtVlz9yfXY1wsWExAv
	 5LkROM6cASVbqSF5kLvyaqWc8hMExWyVCL7KDrSvHbMTSzjEqkP+lPt7Vkb6DejeRl
	 K4yT37Llk3SbJ1wwu0KBkssDecYKTtpWsAMg2pFHGYI/3kX5mrt17me3yCxELDmGGN
	 tF82l+/KY+X1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A047CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473819364.9054.9241733301588771194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbb3374f539ca29b47bea2e8efd97668a83348046daba037782b0b0b8699d85
Date: Tue, 15 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744738193
