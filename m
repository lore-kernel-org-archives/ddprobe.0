Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B29913DDD5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721763354; cv=none; b=ZgXQTBKt9lJK64tNoxPRFGWmKss0j1LTixNfwxnjOUZ7ZzoAXaapFqjJhYT6vOw1qOREc/hHN1doHE2XMjnV6bvUL963xp4R2mlsLyUrJ4fi3+67x+45NYxyWyyYYM2U3dHMvEaDaDe1h7iChSARET2Sk7QrAk7bHfE3avM5EpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721763354; c=relaxed/simple;
	bh=MvDX/YgRRLSgZcqgPfVV9RqH663XLDurD2fI27B8w64=;
	h=To:Subject:From:Message-Id:Date; b=gtLOOA1iw+EY0fvOaW9NfOtz2EMROZsOQ5TVQImpRJGEpQKqaqcG8iDnlFZqVAZsum80vmG1gOYRFDIdYHmHUyB3f011htMTzzqS5cL1JUXHi/rlhrNzabLQtbyJIugAwsNg10pqBF/UxYlW+cEyPPcEmVchVOb0IG1R6rda02w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTTiMha9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTTiMha9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB719C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721763353;
	bh=MvDX/YgRRLSgZcqgPfVV9RqH663XLDurD2fI27B8w64=;
	h=To:Subject:From:Date:From;
	b=YTTiMha9hoW72SNDVwOqvaGs7Nu/aHQwtJy3qbL/DbtsLazjBsGrg2eNVIqVJnu1N
	 gSLf8gKJRFzYDFBBKpk4nQI4/RSDgA64gPwxerx/L8NubBD9mJy4DdSDx/NdbLLqg6
	 fFMsfnbKX0PThFxmcTaQXgbeDp9KfTa47A6CF2bBaaFB1RbeDS52ESWebxU5g62vN/
	 /hnAMbOIRDKXejTgyqcOqjoIRSNts0dqELELalOz/Fzmyiv+uLuCRQXSzUJd74jH0a
	 99Xxs5gR9XukdiWBY+Zq49yp29KuWV8u6+bgtg2K09mARmVujz4XNo3L8qOWLyi2Qs
	 mDqhNCPFjVr/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97640C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176335360.25705.18413329075437560010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9dfbd315aa412d30b7b6f3339dbbd8c7a292b2e84cd90dabfc754e56cfd67f4
Date: Tue, 23 Jul 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721763353
