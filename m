Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B886B54EEDA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788874234; cv=none; b=sq42mgpTgP1z/WkYD2EZi3JKqatpm/Lx2BnkfNOZE+ANK9xKZ1lfrxljpVoqpgnVfevA+lJWuq5PnsQ2fwLKpyjhP+sPLos6b+smpVtrlO5I5G56UYfsWCsqFCcMl+maaUlQ7hL6PDWBSms4kUss+PvIYFWhQ5NkUsvujelaMlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788874234; c=relaxed/simple;
	bh=LP1S50He+ArWaAoPKG+ylLTDYjId5cl4vjaJyLX9Kes=;
	h=To:Subject:From:Message-Id:Date; b=XnsjO38E9s+jM+VXsiALc0+7DEwkgd7g9O1EQkmLqEgoM6T+BQ5IEEjYN+hNSf2/XLg0QfAeqbOZY4zoYMansfnjyaXfqW4DiEn35NHzS+i8rlSUp7FqNQkajH56ziY3zVVHcmqraFfbvp4M1VgDbHXP4yDl1IOV4I0ePQue04A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d21/CD5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d21/CD5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C67C2BCFF
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788874233;
	bh=LP1S50He+ArWaAoPKG+ylLTDYjId5cl4vjaJyLX9Kes=;
	h=To:Subject:From:Date:From;
	b=d21/CD5Rh6d1LBPKH038HpxyH1AutX5lBl848HRqXxXBR5/uyW1Tjn29qyqHpi/Ox
	 QQLDOkr8dGaVJ+k5J8DtflHSl50kvXQhYr+OMwkSqyApybWMlkWtY6cg/y1p0lEzyN
	 I/LEmxnh3BCMqC9db0JlEd+6fVIWcYpcXhDA2WQ1mPtJIuOqG30jfAuHck4nyt77Wg
	 WKjOp/wbiXFplB+EsiIEvqxeD1++2onxVcvAuF4SgnG8YokE3NVkqriPkYC5PhXRlz
	 icx2Ten8pHJ8u1lVaokaTWXYTwnwxkbCIfJlswAQIYgmRyIQ59BsG2arNPvCuIC7KW
	 Rhw9Fn8IPDIZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05CDC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887423371.6921.540826178519170199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ca9c0c904e8a6007afdb35d9416ddb4fdb55a3d1d4025474bd1e258b67494d
Date: Tue, 08 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788874233
