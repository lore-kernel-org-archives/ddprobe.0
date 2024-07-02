Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F8A145B09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719920723; cv=none; b=V9ZTPuSyasRTks7wJ3SrWy7kTPtFRYQ1fNflBKuTPLn0IY7Us9glucxlMe80gByqiRHW1qEEQ8OLWbhTil0fRnWrqUkZWJuFdjnJpMGIbNVBWJvEAu7oki2/NyRxs4ii/5ekLuOkQofC/ZMAhUjHZHumQiS+k7v1A4ziaSvvPn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719920723; c=relaxed/simple;
	bh=G/Cg1a8qrWuhGTBDyThqvHcZB/8bbLcHyilBUwWKV9U=;
	h=To:Subject:From:Message-Id:Date; b=L1uiGH9aV5lQTA8gImo/8pec/YruzUMi2TT7UOWmq/mkng8jicz2hOaDIDwrUzKjEo7ULrDcfSfyCcyW7ji084zOD/6Bwk2XMjmK0AVOop72ycOL1XycuYzZNtd2Dq/rd/5RFnKXmIW2Mo7ekcJYLRD0e5ti93M5tf/xxlcX8fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtixcRrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtixcRrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13ECC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719920722;
	bh=G/Cg1a8qrWuhGTBDyThqvHcZB/8bbLcHyilBUwWKV9U=;
	h=To:Subject:From:Date:From;
	b=HtixcRrYS/G4Rii6h5VHaV26VzEKOpCi7Y/mn4Rmumu/cx86DrbV0I48sJntOqtY/
	 PsJ4h4eZdkmEgolOkD5E40VIUrQ79PxzOA9i1wbmOWaDii7Sl2mAtHSo6SwoE9trtj
	 lPuEYeDUXpr4y3AAYyim8qFOZVleDWf7ahnCExD4r6SKLgXyYsP1XTVrt7aKSDaHIa
	 JnsnT2L3UsgQexWO2REN/JgSxBFjejVc1WNOfiMbUPDJZW2hXiPgzx2IEhGrkFqC9d
	 +R6NmzVQAUybwibRJNTzInIOJLcaopBgQqtoDrRiMsgZB83OBRzW47UIpbA6TnBa9B
	 VeA4blVHk33YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE362C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992072276.8366.6577233555704451280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0457c0da8fdb6edbc447465bd3a33e59f7acd03fad6ca83244650748baf4816
Date: Tue, 02 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719920722
