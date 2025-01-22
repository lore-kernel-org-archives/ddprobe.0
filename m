Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E16C20FA85
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737546954; cv=none; b=mVw+sZh6B9MubwK6zfTQtA3LUGImJs08XBhr92x2c5au+dGV/M0Ymkr1NPS6qS+CMvRPkiud8zcZXq7aifk4AbQfED2b1lvnjQ+95UWtKAVO9lW0sk/x/mmR0/qwb9yZVENhLQFLBhw1b3Nk7C6HJue22uHiH8S05a2vsO+JsD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737546954; c=relaxed/simple;
	bh=biq5+6pQuYNBoci+8Q/eqD9fLi/nul1i7Vbp0xiW+x0=;
	h=To:Subject:From:Message-Id:Date; b=ULWR/SRZz4USAmjcPpQh7SqGeGlLI+idVMm+uIf7GvPN1h/OHo6MYF/+tU9q1/n8z+ZRIppaSVdF3TFZBZ/DXz2zv5ChJPcLbaxj0UJmOCG4/XHGEOtQEgzLBeTxoeAUJjR7XjXC36CmSpTtUJdWZV+zLGmz8EpKGKUf0+MTlU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZV75KSwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZV75KSwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE1AC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737546953;
	bh=biq5+6pQuYNBoci+8Q/eqD9fLi/nul1i7Vbp0xiW+x0=;
	h=To:Subject:From:Date:From;
	b=ZV75KSwE2Dt+CFJ0aYLq3bQMtOjwykjgN2CmwpKHhNmd8IolizkvwwD3+iAmVZpXW
	 b9aKa8oYn3S2vnkvpsZRtgCdPr5/FGNxCWbXngI3HBvM2PWqgcIcFbYROJUlk3xAp7
	 dhx3KzmkUZNYr25R4qSI2+CIioKaA7IH5WALMIsTPNKqiEbZqnVLA3MTDmuMKxpowV
	 yBQWSHUFNUzul71vNSjIGjTiCl7ehZZLqyqLzJNm/0UUksrMdZxu1rTUreJMY7WidX
	 TmURGigpmVCQn2t6F9hY6QkHlnEES1soZGclZyi6cqEox0MZSB/AAIk00UfNx/91Gu
	 hA0h0dIBp524w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F873C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754695358.9759.14845151469808371064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc985111b952a7e9ba6cf2124fe3470fa8766b36a03038c87680f04bafaa3c3
Date: Wed, 22 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737546953
