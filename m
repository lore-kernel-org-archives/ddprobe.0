Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA0481DD
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772952894; cv=none; b=L0ZtcfrSIE09640dAEOGNgWiix4LW8a1v9WSZ/jYi24vBezfL1TsiyrX1TBvcGNoRFnFwWk6Od6V1TamYc8WAVI2jx6E006E5lPgCd0/IRvKVNagTn6ABwxkaD/EHXD1lEkP8LA0Q6gpxVtpMw5Sk2zPsxAK22MaMwQZTqRJn+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772952894; c=relaxed/simple;
	bh=CJbn5nrm9CugfJE1wS4JenGMy2edjs6kdMpFLxOBhzU=;
	h=To:Subject:From:Message-Id:Date; b=tvWiHIsUdMIvpCbi4cExe35KMB/utXo0VJb/xr3T85VNADukr2kdWe1sFIYEJUST2ClCtvysbU4pJIV0TilYpOV6AcWQEO9V5LC8yboJ1nGo1gY+lXlpCziS1F57wUK/f0VbM0oP5g7Vag/gA8FuSXrWLQKHmm0tadtPP4oQWT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KE18sTa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KE18sTa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A744EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772952893;
	bh=CJbn5nrm9CugfJE1wS4JenGMy2edjs6kdMpFLxOBhzU=;
	h=To:Subject:From:Date:From;
	b=KE18sTa7l0hvxRGFUEAXkjYa+9Cz0lIPraAxeCEOQHdhUZoT2wTA0F+HJLH5dMAnj
	 Ccm5c/dtNII5pVFk5kQUWWULhaga1vxD2TZxspittEF13gYmvZqYoe1pEKyIMf59i2
	 kXQG19HCgIDv0L5VegbZRHgO0WWLdUGqZaYrYHVXbY8qwGZ9ZRbofBhsJPcmsg/pXI
	 LYQbVAsErNuQxVVS7JSOCkZTidI1kTGD7UTJjdIi4QF4+gdP9pDcb/KMuoXOaWBMkQ
	 U/mvdDMk2VQ8sHFhPqc4TDxXHo74HDz/XOTnTGlPyLriWz/5NBN2kpLsKwiT4ZNAtY
	 gyXmInwvTqeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9480FF55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295289357.22792.15509795693779471240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476f5d5e7d2c37f461ca1ad2f747c0c2af7b3624b045c596b4f887b0b44014c1
Date: Sun, 08 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772952893
