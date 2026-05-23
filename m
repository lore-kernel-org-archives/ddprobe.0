Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4FA1DF748
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779571354; cv=none; b=LD78AKOeTH/+IstBsbnE0eIGfPhGfJFhYihW8MkUlBInYrM8dZ9Y4ZM3CDORHE8fCYXl6SxzWzIEp+QtaDANQaarTbij+FuJJegd5firJUjs1rwv2QPa8zqOdavyujZHueBGVlUJv5QSVxUvQBDKmxghYvzPgieGvOcLcxuTV8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779571354; c=relaxed/simple;
	bh=1htzyfewrMQaVvZHafPszSHac/ZTZDbOieICtJTQxl8=;
	h=To:Subject:From:Message-Id:Date; b=dUIrDH2bqcXnXOiGUj8x15Uf1Z8W4PPbd26sbvBnVSkZ+gRmy9sSHJc0YfLWzXcGFZh7m/AQtw0n/kAlHNSJy4/jCIVcGgRy8W0ZMtft+D/3JZ3KJGNH2/UGUUuo7q8KcomkoUNC722Vcqo9K4uHcTaFT1PIKwM+IRDOmiK7pmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFv/1n5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFv/1n5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779571353;
	bh=1htzyfewrMQaVvZHafPszSHac/ZTZDbOieICtJTQxl8=;
	h=To:Subject:From:Date:From;
	b=pFv/1n5nE/ReFiwWnglYAPHQZVEt96Abi+l5dItTUlubWHlZEKKKo/1iukaBuzNy2
	 rHIPgnB9ECP1McSVyLQ6ea6k9g3Zajw4bRY1b2mEvakqkepVjCduPP/dpIUzAZQ/MC
	 0KfVx96ghkTG/sMBCYZEMW2Fr0z9ZKpTRuc6LvaxxmMNCparVSSdlAgAdMnReuBf/M
	 veD1GA9Fg6OPNhxzK2UeRIcYkyyGSS1G8SmdwdZLjcJ4bifYxFrU7WwgI0KjlPckgx
	 z94FaiTHMAoEmxUqhanNUqJSt9qWebbpnRAs59uoG16Ve97jEWGEYEBN+UOmxOd2V/
	 5sp+vV17GLOrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC63ACD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957135368.919.17563185239323121085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259087961d12d6e72d3348e5e76cd5edc93568ce7b4a980394884920e5aac24f
Date: Sat, 23 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779571353
