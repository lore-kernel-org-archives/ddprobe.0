Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1ED286D4B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616234; cv=none; b=HZa4xYrw4RAR0givA1xqZgzQJp04QLByyoLU7ydsMeMYCmoUiefD9wA9TVLo68IHB8csDrytDi78CO4Y7PipobwysDdN88XepKdJC83CNpHxNCGhs4g4JsJDdY0hJ61jFKQXtBZqTVeYjtqzEAp9Man35yyiCv/FN2XK0pwC5DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616234; c=relaxed/simple;
	bh=CqudxoF+YmeJy3RMnH+MmCuPLLXZK2PktgitEwd7L5M=;
	h=To:Subject:From:Message-Id:Date; b=hwwttbVgjJsVjAHDJbqITJXL5b0VM0rE5JzaYz21gBSaot2WyYvcW5nFcbFR2FU+21i/0AU+1OCYQVeFd+/z4JECwE/A1xzdPmOlPuK+SmsddgXQ1W4CwT06xXxzTWrDeSpVy5ZzFiHNpoemxuMDjoocfgvNX5B5Y3hGHyjx/ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiWuqrWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiWuqrWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E12C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769616233;
	bh=CqudxoF+YmeJy3RMnH+MmCuPLLXZK2PktgitEwd7L5M=;
	h=To:Subject:From:Date:From;
	b=KiWuqrWCRIc3oCqi0Ze7kpRzC0mv1Hdyle5rC3CFLE1pZ4TzJDYqQSjBQWnHSOHBL
	 MpMB7Umq6fukTRaQaLb9QMsrW0dTyXcg6k1JrM6lprUiZdo6Y6EsRuOninHHyM1Tdf
	 2L1pZ3ZqUdoquyRudrv8Cro4uq4/9/7zG+cp029xpbGZW5XZKeCRW5+/TLjOOkeZ6T
	 ZDso+oLguc4zFR5RJcnL1wthrdpOqogijFvK3xrf+La6pWrn9SaaAwz6ljS70c60ir
	 Uz/2l76l7EXVdjC+KbIIgVrmM8k6f+rnbWH9++sB8wh5vQlz0itwMfmOzGIGUQnpBK
	 PGqqpSlacFRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE93D3F08D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961623363.13206.17113194936334660951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7e05f524cc1fff058fb6a0a9d586b43e6b253a1e0639d167304677563620c2
Date: Wed, 28 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769616233
