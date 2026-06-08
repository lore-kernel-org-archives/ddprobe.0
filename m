Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D52231F988
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780888474; cv=none; b=V8tyjSgyZ+zGSiRWZEqiezalzgv4ucHjEeDo+wAY7hinzL5awa0FQ0qPRsZnJABVFFtTJ3qMjhtQMqdJBKhWacAabCi8Wtn2LM6WJ6w4qF92l78TXtufNG5mEjbhwjEPR/nElMZRkrHl2a6n2lHFLxCRu+8Im7KYxuduw4VJP6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780888474; c=relaxed/simple;
	bh=qidCAyUZbkMDwG0fc2I9c00xphmaHEujBC9TqDF84jw=;
	h=To:Subject:From:Message-Id:Date; b=VXAJJ5fG1Ellagm+KqBpndKt8Nh2AEZFVbeulBn/sUTV+lQ2QZfnpgOmo1hwmnzmhIb/yFAsM4VL+z9G6dFMVHmOATvKk7uzcA19SwmEvGS82rb3UdTiEx5/joaH8CQKFHqPaiCcN0GXt+KUi3UJxKzi1rdyMIKAn56pIbWnHwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgx69c+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgx69c+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7FDC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780888473;
	bh=qidCAyUZbkMDwG0fc2I9c00xphmaHEujBC9TqDF84jw=;
	h=To:Subject:From:Date:From;
	b=lgx69c+34iKqhwB6YlcLfc/W6q4vFibFyuaYY8tGxe7+9Aerd4f2s5ZM3UYkrb/Wq
	 czrPHrHgMHOnNJjr+rXklzmpVVjnjiwe5yO7HDaZUq+0VAUoauqGwyr8QF6z0COgKB
	 btzKY6mAEod4u02pFuPDGZA4N0k9vOBFkM7Y+08AgYJXlMhuxptlXF2VtdAkBxusPj
	 ysFGix7RQurHLAoYC4umZMYkv2rzI2jCeL/tncm+DULCZtFnz6u6okXgUNXeBvhZUf
	 M8BB3V+Hr4O27lShjBFofoFkOH7aXReNcCVUKi3n/3fARIwwgK67M2972oXcTepfzI
	 lbj3tOmIa1FVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1F4CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088847369.26783.12611817290287409390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32eef1db056de81349dc328d4fe7e253dfb7e5bff800a2fbe6b4bd4459f72f03
Date: Mon, 08 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780888473
