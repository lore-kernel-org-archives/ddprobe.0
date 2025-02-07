Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F26823C8D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738952155; cv=none; b=rb/C8GHHrEW1p/jR76V/Ef8pq4eCtwNXepGQpFTVwkEFBlj1NVm3njLg3i2WKxlGmbb1d2DYFtGQfHb8/atLY2UZ84ZE1IvqkEVZ4uro2yTL4mjwk2gRZRXuAl2wwyHzAkuy1fZYk0XIqTBxvPNrQxPRt34x6d0U8YiGdNFrS8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738952155; c=relaxed/simple;
	bh=/CXm//xFBMsFN2RG09ZxtKR2EpX7NBcfxTpYKjsADRI=;
	h=To:Subject:From:Message-Id:Date; b=b5vSo392sl6PSLlw0yewyLJkkR74LqH5u7WXBVAweppTodnp5tg9sIyjP7q+G/De1NP1tHiF7WTKLSdy9hN8Vz1Va2nueH0Vjnv7NrHxIUrLvIJD6KUPnsOLOx0SjaCphS1ftQJNJzHg4KBK1fJ6KsFfqyQAEpN+h1yCm6vsifQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nasBz6q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nasBz6q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E14C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738952153;
	bh=/CXm//xFBMsFN2RG09ZxtKR2EpX7NBcfxTpYKjsADRI=;
	h=To:Subject:From:Date:From;
	b=nasBz6q2vnfxgznOngsTv5qXKZD6+G3CtIWpJQQ45uUegeHF0tcG5ohFusQfNVA+R
	 9ozPjo2u6grdWCu0trCby997i5AObQOdZxkJ/hwMyVhDfsnOl8jxsXyw4Tn4cBREgp
	 Z5ALG9xphtS9ixz3VmwscviZ5xYNiWbagPaLAtQbzZtXBDYNNnlUq6TATxUJpaYMdr
	 hTczs83vbfCVCJGDfHdt3/p9JRRH5/ubMrAU6DFLIFU/Nh64gnFLWAacllLd8gRz5j
	 8oGMjFR25Gut/8BIE35jUwMlk4tGTRPmhuaTBaR08YStsKjcUTQb/0mCPgR3/EMJ0/
	 7WSJCgxFkDG0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1AC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895215359.29344.17141116437651807691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9aa035398aee02ca9a500b89da481d1e10851a5503cbb6d1a74e123371db052
Date: Fri, 07 Feb 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738952153
