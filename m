Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7DE46BF
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743180594; cv=none; b=IUqUPutemL8qvuT+iKU/bvg58kb7ReLKMBd9P+/ufuknCsSdFsg2YW6myc6A+4W2e69vy5S4f0TqRhoLIwnawxFlXyeJvALaTJ469l+Lp9cw+mg8tnheHYN3Ws1am1Ea1h3qcndbPZVBLgJDI44bnBCoOK+uYRn2DPwLm5FLmGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743180594; c=relaxed/simple;
	bh=CkgUbuKGos8DoewgfPwDKg2kGyRF4FTBg93ht7kfB3w=;
	h=To:Subject:From:Message-Id:Date; b=bvr/ZQQ7LkHtBFq/b45kV1M5992YVQkt5CwDF2PXOHdhdnJMKDxpdhSyKGSmvlkUMppil+NU0PWR9/WCsrRXaNbKWRoecUgl0UeHwHgEG0YgzpCuEDan2n9y2zjcObtNr1hQ0QZQYF26UyuVmEpqjSZJHZbHHFigZ0f1JRvb6b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSSLqwys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSSLqwys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5D0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743180593;
	bh=CkgUbuKGos8DoewgfPwDKg2kGyRF4FTBg93ht7kfB3w=;
	h=To:Subject:From:Date:From;
	b=bSSLqwysr9YU826zEv7Paykx7dsrhTIgWGAUXkqChkgXTYmRunhiJPNBmV1oFmPNp
	 dFclE7PyrmBJwLDjPEeJsK0YoY9HRBFy5+2RvkslzUc5Gq/sPqPSXZF+VHO6jEteAy
	 +pdMvsVNYbtYEYrxl5kr1Ji+Xv2r8mfJdlkFYTeM+BYTjymFUh0pksgju925f/p6Sd
	 dySbkbpkFNTUA8RwGRY7yt/tsVo5kU8evPFVuxIpSi7bQqNz4KYsZ2mc3JUt75oYIT
	 vfGW7TESMZBVObauhyfVtvNXVd6uPd/Ow6+356TY0OFlZ3ngQPci5oUDYDj+VoAWQ/
	 iKwTuai3HIjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C2C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318059366.3104.5317518317897505592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbe116cdfe85824a1b0bd469c3cbfe921ae35a3da5e330e32bc5d35459fedc7
Date: Fri, 28 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743180593
