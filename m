Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5647E1B4223
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782044194; cv=none; b=db8/FxH2hgws1LpPQUSq8MlF+4srwIgWDVllAnqDmIrQkzTe0ee80ETfTcPW88Wkw11p2Ra64fdPlIEpMvKyl2OjroxpPju9TsqWN1LrWBPuPHEeKt0PdgWMR/+KI59jthNhdP71dvqmTxet27vzRWKMkPKM0HbymtPnr8KkR4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782044194; c=relaxed/simple;
	bh=u3f8GQpvMK3jKfW/MkUawFuJV8qgmXX0kpFwkZsSZN0=;
	h=To:Subject:From:Message-Id:Date; b=bwZcyFWqrouf3izK+CVnoh1535j9C0Lt+hpQ0b9xFC0/vyRVdKHkfumYKFh2TVLZ4W2Hwlmt86/bIUcbkwh1qM6L/aZXMPOJMogqMZnAVG8MwvfN44BcRTQleOKBvF1qOVIh9v7UxlyBwyc6ioFBn5ngXQZAK13yR8UxHihl+rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtFKRwyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtFKRwyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB25FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782044193;
	bh=u3f8GQpvMK3jKfW/MkUawFuJV8qgmXX0kpFwkZsSZN0=;
	h=To:Subject:From:Date:From;
	b=dtFKRwyjmkcj7AqasZjnEvGSkcGzEmJo+x8h2R9vJmjdEjn3zt/CK7DbNS3JVWmly
	 44WxL+5J3+HcIn1Xgf1HHLNmQZNRnW39MXdQOwBkYdJ07xiHPrB9QGBBsiKzqK0Qnk
	 F1bl/uiABdwFvNP/0QCo2/yZ572eMraVRLfLJy/D8Ce7hhVkU4tX9B/1Ki2aE2LXOU
	 lLkcmAqaMEVVHDgiUmfoB7k+WuLKfYvuEp0THUHhaETsmg1iPjuX0rV3OKTmvuMeA/
	 nNTUNem0VDsWmygq1iBCD9rJNWdGGioRoPtMYMaWIfI4R6+//egg9qqQ0hA2LmiDu2
	 n1davC3Oeg3mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31A1CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204419369.4016.1837327602615610300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106f9e3b6e51d3d8ac1c3525d0f2efe1051892d0fcf06090a44e5179ba354dcd
Date: Sun, 21 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782044193
