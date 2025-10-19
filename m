Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7322367CF
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760869194; cv=none; b=LM1MigpHHw9wCMaxhScZd/atCtsYXnjWaT+ulLYA/DOvHtyYH4S9nouYayyhmoqPtvPqhKQ9VRVDd8C0dHtggF9myKyHzQBrPLoZDJ6EoqxWVYtal+BPslYsvn2rQyZi+KTQxp2wLY50mXtzYVxYDO0KyLZZAeKWRbKLmWbsLfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760869194; c=relaxed/simple;
	bh=YYddMgmS/BfK5SYXG5uOyrkmL88pXOs2tIuNjf2bPm4=;
	h=To:Subject:From:Message-Id:Date; b=LPkAB2+zX6yfZaVahrBO/V35DcorR4Hy0coz4UFKPYN8UA8VNbz/JIdYs/yg0EV5A6l/YUwG5zPDDe9vuBKskTThHgJwPl/sNiWBqTe/3nS663+soMJmXJ3tzluG6R+keoipck9etAVMaGO9PGn+unmA+dhMl9wGptfpZ4Fbr6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WimlYdiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WimlYdiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EED6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760869193;
	bh=YYddMgmS/BfK5SYXG5uOyrkmL88pXOs2tIuNjf2bPm4=;
	h=To:Subject:From:Date:From;
	b=WimlYdiUEmy1xSek1CFyvGi9RCg9njR9QHL+ME6ki0ZUgBgGwNECBn5MDegGT5xFX
	 dHSIIsIVw44SrGsrXKzEpTBAEj8gO6DUN58cP7TmrYQuRxFsuiWRLx1yAFLvUGzAcn
	 ZrX0t3zVohEJUpjqCKXYvcV0WD+2sW0+0NUzMdrntf2UrCtnv5sRq4XFWTXh3GFKNi
	 LVr9gByHm7e3131G6XkWsKHskguoaaU4w+OwxnkWx0oi8HdhjuUraelQtSpPEgOKbG
	 bilyzZG1ZjLjn1GsqhABudb7W/jusabB74DGybuN0AfkhP3gnsLxzhXwTdszfy5Qcm
	 GvPThfYPK3eDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116BCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086919358.19191.17064466911150605483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d551e5d85d7ae39dfa2f21ed4b75b9d3ca4210b93b0e9263a518ac4f47c9957
Date: Sun, 19 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760869193
