Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF18B37C93A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776943654; cv=none; b=upKYP2a8QB4aruiwwC8j+qgAfXhqlyOv01gkfXM21qxOhhTmf4vrYdoNfE8tvKqbOPji1u88B6BX6NNMo91TmTZT05AFsvpLTd/qPUOwi9wsbDU4QVBWOLsrQUfqPX675JD8fR1j4svS/0w0PSQLVAhoBm3BvT5Ju2v6OC2Pw/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776943654; c=relaxed/simple;
	bh=1dIIwJKgJxTj8fOZ84rtU8MkMaSVhG+o6wo22Zm2SWw=;
	h=To:Subject:From:Message-Id:Date; b=HFqfk5r7i7a4JHEo+cUUxzEhXrhEEeQOD6wvRC1RXigk4BxVdKUc45y2E6MFrDJ1OtwJiSkRfSEO2Xjr5IUHIDaUYHKzjuzU2QUf6dm3xA0pm19YWaan58nhg53uK3UApUAjo/lCllx2iVoc66bsqehiWEWGg93p9OPSMsZ1Xyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI9McuLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI9McuLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9134C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776943653;
	bh=1dIIwJKgJxTj8fOZ84rtU8MkMaSVhG+o6wo22Zm2SWw=;
	h=To:Subject:From:Date:From;
	b=cI9McuLyleeUaRB9bg2Q3BIUv2alWBlUVLKGb9SVowI3WEreg2uOnDOma1KZ1BAsm
	 Mw/NBO5yZjMkRPlmGF8590U/cElV64Slm2sQUWZfbuqFo1oul+r489h41LRHOT5IvL
	 fO2T0iX/6ImsEetO1iumCt78NST280jyIwewrZAQdOz5OAGbgP0MhECv2c3JNuqR4S
	 cYqrmt16Wsu0HiXo1+Zc2dPCsbZB6K0MtilBbiTHSJI0JYPxshBMdCVo7fVvVE/Kjw
	 lhyh8hNMQjUMAz2SRmmbpBUKUchndDUNBDO6M+lbTE5gumNrtJ4o7oV/3qn7eFWNwQ
	 T2SCDJqmY+2/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA880F99377
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694365369.10625.12767313115564958629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a997bb889307b6eaf2c6e95abe87aaf24b55698aca2a246b53aa9acd49888a35
Date: Thu, 23 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776943653
