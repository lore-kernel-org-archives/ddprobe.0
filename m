Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170CB22083
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766720034; cv=none; b=PA89pekY/sEdZJARJ6vgmI6jfvjV1OALoY3NyQPvnupmC/hri92y7tQ48eWGXXDbaMkgLclxKhnhxJ4ucxPQjg1Co9YkUolpTuiCMJFQKxrERPmuHTgEByOEYWQf7cQdZtJtflhKCUGy92i1cRXMnBzPIXCcresGoWm3+nP5P78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766720034; c=relaxed/simple;
	bh=C0Ykueae/6aAW/YUBF3ia3s5nmZhB82m8fI/InpaaxQ=;
	h=To:Subject:From:Message-Id:Date; b=pFZKZBwLV9fb+9n32txHt8X/IKKto82u3+662oLeamQI4zMUya8XMubcmbuSbBpZ4R7isuyULzaPNIcwRQjnCThw0/ZIXU7MUprWFO1etZSD7GHyMYxP1ey0STVGcHVep5Q2ufI3YxhiAKnNiJyVcUK+e4Ipg4p0gERMaR3xakk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y61fT+4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y61fT+4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C26C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766720033;
	bh=C0Ykueae/6aAW/YUBF3ia3s5nmZhB82m8fI/InpaaxQ=;
	h=To:Subject:From:Date:From;
	b=Y61fT+4DUTvgrT1Bg10+mgbneleN+oZ4BFM7eEygKexPc9HMlXlPlnK6V167R2TrN
	 Tf3aW/h1rfz36q2sIm3Zce3KDbPQMx+AcuUmD4u1NgVtJxJVtXKAL6IzxJdV0o/D/W
	 JaL0PDbrqpftrCjXiCsGwlbYLSM9iuXZgKpZhhE372Vn717YUS8lYJ0zZKkLzvsNAH
	 72D6zfSvcpCEenRGaliW47J6g3dmODEI6uyFhOo292r37/BvvvPoQ2jz6RNOvS4wlU
	 ZIvTiRjXD/KFFQoFsWjYBV6/GaS/EWNIRc1uinvJchQCV995fy9QjW1hOg44cjdQp+
	 UbiWja7PN5xyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F8E7AD77
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672003358.5938.17315722998679718514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bfaac38e83d1ba85f3badd05eb497c6b9a4a317d5884897363a6b29a33798d
Date: Fri, 26 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766720033
