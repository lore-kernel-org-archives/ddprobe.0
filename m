Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B062BE7A0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759388394; cv=none; b=cmwX7RRKnj8sAYpl6mMw2REBxT49jCnxcpII7qQX7lZvd7bQ87hPZnk4Szj+RX1MrZxjgfHQ/YbiZhnPHGpHN0yH4t0y11w69NV/+TBCl7IIBiNS+b80tlCGRIxv8XGeL8ekuwBvnZosrwj9R5qorUQzrgDlXtIAfFuIhSJFUIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759388394; c=relaxed/simple;
	bh=sbDiYw4fnXbMaRML/KcyJGI8b4C3NhO5dYd0VCpl7wc=;
	h=To:Subject:From:Message-Id:Date; b=rAMY9QvH/9NxpJIt93ZKcEXzPfMj1hiGqOAoP5WU5/QzLfvqXl2wzoBlCehy24gUIZ7fa/d9XcERVe81TqCxwHLT13VzF1sNVg5KtKe2XrQxRsvDIGhT7RR3MJXusA5+czDiK4XBr4kStKQuLUw5YPKHU7C6ci0fF2VQzvHhq0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oez5H08m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oez5H08m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1900C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759388393;
	bh=sbDiYw4fnXbMaRML/KcyJGI8b4C3NhO5dYd0VCpl7wc=;
	h=To:Subject:From:Date:From;
	b=oez5H08mf5kyIP/kJUenoKkdAvEzzh8J2r89YwbsfdGnA0n/5KBECd2IASoZDn8tg
	 xxEeA1EI8f965O04Nn2Btk6XjscdND1I0L3AUaB+xIiTUbR832fS/9uCau6DyO3swU
	 ITLjSQTK9tLcMf+Qdy0R2Vq5mm8UohYsbXDpxDeAqxIuMNfNz3gCzBFTPLShu0T4Og
	 ZKtkqsQmMlmKM738VAD8zOBQOuakCkV9oVjmWkDE1ft9YR/tTpCmP3jWWWbKiQJXV9
	 bZXdvoxJj7xNH1opaHb274SbMHGQSg6X4rPrZsuvUtLsF+nnnaHxeOGHuqu/bTezOT
	 bUoVdO0yomHFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90391CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938839358.17068.17614793464061757139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f2777a4aaa56dd8b91c1fd82fa7a59d28f4bf53ad43ca218df7b03991ef498
Date: Thu, 02 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759388393
