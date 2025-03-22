Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F27129405
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742681394; cv=none; b=LCQeQ2xYrbDJWqxGvZIyM8be/nozBwhM+xDxpmBy1CNZFkj3wISbhdVDZwEqo1na9Y0fC9ISad9Ni0DeKKJEUbvQaDLssLLax6oUtmpV4Y9L+EhMf95/5ciWReujyqQrz12E3vt0JA83RHx+swKiLl4xIHf8QiIAvMV8fm7uSsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742681394; c=relaxed/simple;
	bh=YWXzmdxbvCEXm1ctl+RyrBXgYCVjHnlLXqWYJC6JrVA=;
	h=To:Subject:From:Message-Id:Date; b=ZDeHFQJfcFQA5Vwf8VTtoYzW/Z37Zw7ca/+0V9dMi5wvmYcC3cjIFc9erJszNUDJGDmbkppWQkvxHwohKagijnjnhmKbn+5JbPNBBhtMTYAhGA2Gk+8ggntPI1crN6rZJicRNsxGGsksgK+dkPacSLmFx4Cr+GzJuPpm7QqRqjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOpOjSax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOpOjSax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6475C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742681393;
	bh=YWXzmdxbvCEXm1ctl+RyrBXgYCVjHnlLXqWYJC6JrVA=;
	h=To:Subject:From:Date:From;
	b=OOpOjSax045wrvNV3qlrqmO0K8EgOKGA0t5ygA8SzAiQXWbt/W0zQJFXXcxYlhxi3
	 E2ur9ivUU7zhinioGzF3JcEM3iUJnMzvLzcGWFLDMfPVe+8JHQ9qfyTZ+8Z8Qpc1XT
	 nLkWLIL8frn1ECl1Ua/DSAXUHBZ3A16T5cdW1I2zuEsoqAa5YFcEWqwHsgzfZYlejR
	 jrSj4hiuLhg+4nutTRWNfUDOqfDnOHetBwcOVD0EGFmX2xqPGhKb4R19bbec8ngZbB
	 52rggfW9qAfGpYkYPT9XROjhp36zT/yerEQhIVwgejkaCAkQerBSYpmezBFnV8Ohno
	 hMFRue9AWKOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CEC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268139357.12027.16464045636754142861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d77cc007ec63ae168944d0d2dd214becd400110f5ab7bab3d59b196cc60507
Date: Sat, 22 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742681393
