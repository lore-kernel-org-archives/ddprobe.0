Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D316273D6F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770115434; cv=none; b=fkai3s2jDjzzNmlMdugG36AcmmkuQkACPnw12OCY4bGgyDaD8iM4nWd0R71A1itKGaj00Yufxn++/NVmIpm52olTKWeEDUZ8T1SZruMBRq2QzT3b9est+RDdLdEaHimt4uo3EUlM0bOZBgPT+fr3gJoyaPKEjNpotcC8yq5NI5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770115434; c=relaxed/simple;
	bh=PyNbALKXFNf+y6eSElTk6BM2F/ZZHFtmTTyIe/NF+Yo=;
	h=To:Subject:From:Message-Id:Date; b=qaq704cpu1IL0zzIIpwp3uCQLfc+6O1s02YVycr5E1XofTmCm5Gg0XYsiVhaiNHa1qkCQce36Th/AvsZ+cbJUhGPDgC+aCw785zeCuWhUNJiX2C5k1QkHhR4miubAAMNKFtxffIZj9Kv0aRT7FE9XL9E7uzYWYDpWu5c6HyNmS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdvFPavB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdvFPavB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A586AC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770115433;
	bh=PyNbALKXFNf+y6eSElTk6BM2F/ZZHFtmTTyIe/NF+Yo=;
	h=To:Subject:From:Date:From;
	b=cdvFPavBwWC/qDDHk11aZvOj1XKtTxR1+dC+qSlX0ikIyk6AIyrMCBgheU5pB0pNN
	 ajUlpwGnHclaKi3X/vBt9VEAk1bYHuVDX/YummwqpUwT3QIUR0IJwj/9b/bciVgTv6
	 2UZtTOhhBKiK64jZaLJ8kVqYOU6kTxQANfzzfU24t70FtEcZk9F9OarHIS6pSE5WR3
	 LGX8GC487/933p5kU9InPLNMy/MVrmvj77BbqSZZtzB5Jsvit6JT1lV/frAStpc49t
	 lI9kKMhBYFsn0vXOAeKEhsKYKL59vAwkotKqnup13mGsDx6STBWWgrdHisVsqcokJT
	 LDzPAiCpsNvjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F80E6E7F7
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011543358.1887.158157638440144331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493e9f4e18c57f7ed4f0ee1e2d3245ce38a67f8460d43fff8bf2eac94602e0ae
Date: Tue, 03 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770115433
