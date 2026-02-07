Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC8F17A2F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770455634; cv=none; b=Zmo/8qe3BdYvvK9rePM3lJIeCnhK2611E3gyTUxZmMvo2u4RGwpu9zCssSSwHkgZgMLODkY/LJeSQpv5i1IViPM+aylfIBIgiWn/yblkWrJt8/vsP3ShUFcSKeks7ZfwUe8Uu7jULY1QpDyW0qBJGnFwxotXKTIxBD9y+UfSrZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770455634; c=relaxed/simple;
	bh=CxISJtE3khRJ5h29rzFbIKDVR9F+aRkobjeanw6dufc=;
	h=To:Subject:From:Message-Id:Date; b=Xj92uKapxgPWzlIRJBsm8PqAAVlAaSwuLkK7V/83SWUVeMmEsShDfY6g8cE+A/ewGp+tqyxRMZMulqhYHBJf8hWZXqBt/Zq57mnI2sSFIffvlZayvL1G1I30180NNVOPPm5IOEdUWi2ZuwJlFWgGIxJDvH4qmsn1YcP/KFdabeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1UC1Gdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1UC1Gdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6720C19423
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770455633;
	bh=CxISJtE3khRJ5h29rzFbIKDVR9F+aRkobjeanw6dufc=;
	h=To:Subject:From:Date:From;
	b=e1UC1GdxOjKobDR/tcqmCLjNYTldO+qf4jxukzbPnJgHlmkgbhlazWQP8V8hPi3Dz
	 MgWw58q3dFpjmGy1ZCTXmHSQldtK6O/TKvQBatuFKRUzFm6yj4KT+gbdJdj24CWjJY
	 IzDUb2c//0qs65hPZK8Fhszog1jgQIUnHrFFThSKEXWA3/BBAa0PmkWaDvD/+/wBlL
	 ZZuGVa6Okpl6vCK63gdx0ZMmuQduTMY0bkebkMXq/VQjGV8tzFxIS0EmCxgK0+NpU6
	 Er5vqU7e/ir4cOwJ9Ykv3TFhLi1bDj/PdmWfxgEwy+rdFxLn8+wziy6sitYDEOHw+I
	 k9RkLzuaRZVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275DECD98B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045563359.14139.7930992693123355010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147952a2c4cc3fcf6c37206eb4450f40982b676f3aaddc99bdf1232068942133
Date: Sat, 07 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770455633
