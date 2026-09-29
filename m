Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD23B47FB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790719834; cv=none; b=GPVNhdKtcJQzZ6gYWi1TMQMoeSEOqkATePsgrVDyOhA31s3a4GjtJJSO/Pn/qV0UgyJQAzyieveiNYasaY1+5w2b9z1x3PCntunarFQBntmkYHpnlhmddm/i8DiqG7XZ8JDwz7eFoDAAbX96R3X7xo0VorMiGl+GEbYqu6vcUVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790719834; c=relaxed/simple;
	bh=alyc2WOREWWTmkKyleF2fIoVrPRyZ39qHN0i/IzNPt4=;
	h=To:Subject:From:Message-Id:Date; b=dd6dCKQ9/rO/3pHnUDbUQCS+9iZAty7zbV7JbqRqRCBqDs5Kx+WKRDxyHz7pP/TqGf4JMO6H0S++dXNZe8CEH8muv/Oe0JLtsM6UQNMsVFjki2VMLmM6qGnhm5YgJaXhN/0YXiLEucmYSP9aFeVPMf7l66M9zn7h4Agk6wpPN8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1zCQ4Kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1zCQ4Kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE27C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790719833;
	bh=alyc2WOREWWTmkKyleF2fIoVrPRyZ39qHN0i/IzNPt4=;
	h=To:Subject:From:Date:From;
	b=m1zCQ4KdJq+IrHvfCpj4FTIoMA/sXg8JLoXawP/43swwIOlUuJpchHHFl5fxxxcdj
	 E7KaTlZLOBQebuRyPz7Dy1clFMiyYmn7XoC9uWEt8IgdoOLn2OJwrYQ/CKRjFHv+CB
	 NInxQ+qx1ws+KduGrKD3P2gCeOK2o7ZXCZuHPOhMztPzsanZeImstuJz0WpX9UNBEU
	 XeFheluDWgMzUlm/Q4IFnl+rTLZdoW90mQgEgzLxxwDVnfuNZ88H6b0kM3PtQhkYYM
	 Mx+2dCMqgGjMtfYxtgdymswA8AvkgK41/XRDcu9xfD2w/TXQ9P18Z6y5WB/ARb0Qmw
	 xgDrmaHj+ybSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA502CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071983368.13737.12995314023704527317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51a6dc955e46c9a1d0a749cbf3863b82d200107654175ff251bf014fc7195d6
Date: Tue, 29 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790719833
