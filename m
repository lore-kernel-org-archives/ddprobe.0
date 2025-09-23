Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154CD311945
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758633594; cv=none; b=YvQiCBZniZisLdUNug5q+zG9IXZZtOBsU5P2D2+sXK72/uLn20AmBk9fE+FN19ck6TQfNeGjipdUIDKbnbpAyHvHhALxI22qtGd/EnUGXBP0sMhAjzeq7buTEWgckhIdfpThfCHzt8akUQ4HB6bMCSThfWHjPnGR7B8wwILYDgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758633594; c=relaxed/simple;
	bh=j9r6bMNcuKairtcmVDfK9bKYHxSxq3836Z/iSW2pY1Y=;
	h=To:Subject:From:Message-Id:Date; b=YjSlkrotNTfnOIhQ07vDpTaokLXmTbJIDhjRq4D9I15ay9nZSmN72qmUTCdAxR9KJZ+T3vsiPoUxwCFw4GBvCoQqtDFYRMJwzDCZRM3JUNUSKr/Hi7qlNMTc7YuoMgiNBsUQWvu1iTMMGaZXGpW5SVOXQWY66p3zH8BuC4Wp7ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oveWaOd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oveWaOd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D2EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758633593;
	bh=j9r6bMNcuKairtcmVDfK9bKYHxSxq3836Z/iSW2pY1Y=;
	h=To:Subject:From:Date:From;
	b=oveWaOd878uBkOIIdD3fvnTJ4a1F7RpzXj6Nq83oEAC/uAmU9uaAXBiZ0xe/aKd9I
	 AXtfMCr8VbE1j5rlPNkZCFTLzJMIw5UOG/xQpeXRRNdRiIAIFm4aqD8HVBffJq2KAm
	 TTC1597ixWJfpa3wPHIAQ9w7+4EJsuyUjIibTxH6Pf7h8YlPJ0342IDbJZuXMWsTqq
	 HfIFILoq41+LRqk4BkNLKUiN9ASsqy9DnR2UDx9pNYyvx11XFYdXWxzGP31CiDr31S
	 ovUEeyKu0H9b63+Fkr9jwRkusY/FZPJsnfKa+x+o71ixmhw/DEuCCcqMwDQLulx11a
	 Xg+T8yigOqmAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16ACAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863359357.17870.12885569378685685927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce45c296254aae1f12f6a7fbda15523a26e817b5beaa356614a13c87cebe8c6b
Date: Tue, 23 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758633593
