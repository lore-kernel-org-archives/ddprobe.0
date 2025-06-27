Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B09B2B9A4
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750998594; cv=none; b=pNbQfInVZ56amCZqwQdDSp+hN6g+C3HztTUDqMT5qte//pn8Lj9DLuJrzUyHQHlIY3ZTLrNcjDw/swR+aJ5YMhrfQhb2WTjmjQhQZhXgLmdrBCmUn4Qpt9DFeqjPI0Ae9vWilmptHMljTD8cXRbAklD8D4d+KeJtK+KJ5FNf4DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750998594; c=relaxed/simple;
	bh=DqVuUGGYJo1dhnVM4ujvzVXqHBIUJivCWmMV5a3nQH4=;
	h=To:Subject:From:Message-Id:Date; b=DeaJI/hP4o/HKSeJAlXdSV8RTsMjzsCVx/QAiWRXU8PIw8V7dlNvWC4cOdqIXMbm30hrPTeaPr+5qKpLLgDgFYYBh3gPVOj4UnDNB2XTEdBJ0+xad/RH7zDfxlKSLArk5lZ/LGrMd7w8GOrGvVnZIyI5XiMz/uXxs0i+9To/jyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwA8yJZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwA8yJZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750998593;
	bh=DqVuUGGYJo1dhnVM4ujvzVXqHBIUJivCWmMV5a3nQH4=;
	h=To:Subject:From:Date:From;
	b=KwA8yJZXTB3Wi4/io+CGdIgkJ1L/xYK/UQwJ3pkhbs52b/nb66fnkTdTeVZv/9/5X
	 /nGVuEw5/l01LQZJrDoC4iK0GupNepiU7M71x3tH4qyNDsX1xmHFcRE7ldyPTg8E9F
	 wTr9spLJ5pIrpQ/2SuIeXWm4Y9EnGK2v+QzIQ78Q9LpaTGLrQdmwVWE8Z825uV2UTJ
	 C5z0WRAsdsbvDFDDpPaQYBkjw05j9z4DANrBnrF24pMh5D7xDFx/5LCSlFvD4lgcJ9
	 ech6qR+d57KuPFqgt5CpJIzZXNJCnhpJHBMgdnMrPGJqtiMkMTipbRiETBB/l10PM9
	 jg4V79Khulevw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91768C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099859358.5890.15770130384558791370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcf43f25199854efd0f58fbdf743342daf001bf68e15fe235b525c00c11be22
Date: Fri, 27 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750998593
