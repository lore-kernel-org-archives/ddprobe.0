Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F2D7483
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717118663; cv=none; b=evxYS04FAC1Do8lanZBleLBjvn5au1kNjr6O5o3GT52CrJaLlj0Tv19emMN/LiRA1yu1Z/tW7bHx7nEvLUg/EjA+V43ZBIT8/Cm2FMkTWEat9ePCZRp3UbwFPazhcnxzSCVUJr54f2Q9BddP83fnJQugFPlptCtgqa/UB24kevw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717118663; c=relaxed/simple;
	bh=qyhN/uZD7vXeuhjQQpGaVqk+Q/o9Rjzy4RPHN6nRayw=;
	h=To:Subject:From:Message-Id:Date; b=UbOlT6dToXzBq/Gi0XCSTPHxCnM+btkfEdySC4GWDkngwISOcUciwREy28KcK0UqTrFrJCteVqiNDpW+FZv29u0RlsD+4AwS7oNf/X4DzW71XDoGTPvhpxF3FJ9TifQ8YkOX97W8GU5+3f+tJsd7WTDuS0Mk6Q5T0mRN5N4BMrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oidhixLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oidhixLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B46C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717118662;
	bh=qyhN/uZD7vXeuhjQQpGaVqk+Q/o9Rjzy4RPHN6nRayw=;
	h=To:Subject:From:Date:From;
	b=oidhixLy38qwsUiqoH+SjVQWjvf0eDSYb6N3pzDxIxHBeOpaZuxUYvLLVz8tgjRtC
	 rNiug4N9pzN02jBDe3Xz7Rh2fizXH4CszkV17y8TktYE528bp7ON5ECIxp3pKx2+Nm
	 OFeyNfPAFKfnApJWPAuOMoFYmiyvWXFWLVJlfpD0KsX53UkaqKNH7VfIu36pq8KJWS
	 zuTpW1+HnZsi5rEhCMigywwKEnLFN3+5MDDxQab2gFQT2BBJhPRwSDhCSBxf5tbFM2
	 e/545OxaejhM2+BRsp8QVcTwo8bJY0fhh00GGq375TGQuE8Pnr+hpBCxcYxjQGmnQC
	 viU9hzSxy3+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAC9C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711866281.31495.6260756372775277114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c695bb282401c41307b4030f38d812fc5042d2fb0ce702a63fe3d5f40b1502
Date: Fri, 31 May 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717118662
