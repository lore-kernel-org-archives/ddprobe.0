Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5866E1E0DFC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728495354; cv=none; b=rCoY20q+x3jHRtTeSQRNW08aF9ICFZZ8GHWkHUnOSSJbEODcmhrJWk/jQzMPIcK4XJEYEslNkEg8tE7l7Evn1hw72EBZzmNaEhdcIhoKXOrGsviDVUVBXCPia6dMcQKoM5NqOmcBQCr5Nu7MKL3jH+yyG/SImtGRNclbfNz7KV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728495354; c=relaxed/simple;
	bh=WXOveBmULa8ATjY1WqkPWZMceU0wi0rO89V2vpDM/eA=;
	h=To:Subject:From:Message-Id:Date; b=Lnok+d0s5R95SiSlS9arLxTSzmx9EA69c+Heclg2ajQSf54vEsFjtQr6zMBkyksKMcg1s2SPxOZyjTKh2re1sy7oDnUoh3ej+I7SwALt9XnHqdqc3768OQdDNNLRqtCYGu5Jd6tiJlSq3CjJRToNpEmor4bMEnghepCQwnqKJNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GicpRpUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GicpRpUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99F2C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728495353;
	bh=WXOveBmULa8ATjY1WqkPWZMceU0wi0rO89V2vpDM/eA=;
	h=To:Subject:From:Date:From;
	b=GicpRpUM/+hL1ICm9gQYkERR7JxS7XuHUUX2s5mYX53COTpStUZqfuyHDtaJk9rcZ
	 yKFgkk48gXCBwwiX4dl95dBdojGkv4kg5d5vcemXGtz2qe52eOHWPQQgpX3hHoUUl3
	 S2Ow5HZmcyXGfcqReGP1DATSchV+2sw+vFq/nPcSg6MjmGaGQa2Wh7xTRnbIcu9xr5
	 4qSK2OZ43jZ5mC5J21ifcL/USnq98tKSDOMNQeKyxlFDQpG+yzN4ReWvTK4zpSvyB2
	 N4A0iL5obQoNpF0N2D8qUNk4fCAlAJjsipWSBtc9IUZ+KaY950ZDCcALBt1NAvOs+k
	 95VIBUG/CJBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB93CEE338
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849535363.26177.3004132985094740090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd1f457b49e878cb2be719ea51bb361e3e43c3977a668216df8fdcea2bf43c3
Date: Wed, 09 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728495353
