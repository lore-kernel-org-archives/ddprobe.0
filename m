Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4450930498E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783811314; cv=none; b=Yx1ACbhCSMjBInTyo/J6r42r4E/4nhjNuXer38n428qH1Kb0WvWS2bL1FesYZRACxLpD2wNcXnMV5AILVUlzDBp2E5tv80TvMsRLh6MBK11PONRhvkR9o6YTL2QOy61a6uG9YrToR/kNEkfkSCOrNlaF9ipFmy158iXebjw6t70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783811314; c=relaxed/simple;
	bh=JjVHBYfG8z1Hn4LVq30JkYzUzskpSOHwff/fW2aullI=;
	h=To:Subject:From:Message-Id:Date; b=be6D9D8nWQv77Z30flh96uDRTiKGqq9EsrTFNJ0cktHnypkEi+jYjzT+122ATYthF/M+7m4e2GtEO2HTpD+rBL4GRCk4EkxpeUYE4MHM8VcFqzG40KjT0qotJ5qBCnk6jDF/eTKggkW9hwLe5e4mLIrF0sut0vU+01NBULa0+TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcmijJkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcmijJkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDE3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783811313;
	bh=JjVHBYfG8z1Hn4LVq30JkYzUzskpSOHwff/fW2aullI=;
	h=To:Subject:From:Date:From;
	b=EcmijJkCWxn0nQmq+ANkURlZi7kOjgR0gVjAS2O5Zkjirvk6GWRot/pXrur8Si5YS
	 0zZ5zSC+v0hqaaDF22GECmY3v9Af0p7PKg3JaBPkTTX9YcLmdqBQoQIfQuu8QVx7XR
	 1OxpBVCy2QGJ3VnnNDwg8Lt7fIXG7zjuC2GZrJBe0u84IhDSFQIvs8Dx4rk6mQQIgK
	 VSNtbpDscH1YbM9E/+QsDHKgsiO2rlcWnQ3Uq6YHt1O/Y+BY5pt9j/FkuO0BQunVJS
	 9b2KcUuPCH+Cr83XS5gld/54cZdOPf+DgAFPKiFdJbbdnlLy19lDwVGF6TacsByFO4
	 NKBGN9eub65Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A885FC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381131368.22139.9728585433885586800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b7ef65aa37375dceccc77d758df512bce9eaff6ba69a996bdc73c82e259e56
Date: Sat, 11 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783811313
