Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108CE1C1AB4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735943154; cv=none; b=K4JLfVnRutJVSTBCsVHWsXpiYblJQa2kTVkpPU9Md6sbYp+wvuDtai3D10r2Ye3h1El/omoCYDctiU6O77lDGUuhwONJZBXPbXfYa8ofnnptBz7E7xDmayIst2em4PB4S4V+57TR6Mce2jKqlOyjtlit6zwjskBcaC/M6Ou3Ke8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735943154; c=relaxed/simple;
	bh=vEVcZA/yAXFdov3ZV6ualPBlELR+/dUJQ/XZHp8k8Lk=;
	h=To:Subject:From:Message-Id:Date; b=TUjIcCTz9zDaqO5nmIOYBafB0pTq6GvpwLqyHnRX5KLnmMYoeAB20f142JQZS7bpp3WBQaYtLVZU4/xIe30WGnVbDJmNvnHmhx2iyGbHdQCMi7bXm5GzWlJaTnSbd5dl4j2AIgOI4a5pf9GsVsYyWpbgxHl/nFm+kSVIqaO3yEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URu3G8js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URu3G8js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96E4C4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735943153;
	bh=vEVcZA/yAXFdov3ZV6ualPBlELR+/dUJQ/XZHp8k8Lk=;
	h=To:Subject:From:Date:From;
	b=URu3G8jsm99F7srFrRyldLft4eBoUdLUOG36nP+nn8HI48Vo6k6QFftuEIXgYg7lW
	 kI4mIwJsAJmp6GbrVdKGI8kdHWH4lsrJvnjpLCb5nSYhjQjhkZ+/L4fqKpWP+7HUJh
	 AuXitA944YCZDw2h4I+MeRfoBzkol6jvXMhnxHJLV1c0U/3Jkk6XiGIV+3xsyTHT86
	 Dgw4/LARXh/DXMmkfqyq50kLKY8y+16pBv1jUieX1RbWDQhuz+f8S4bWuIuoAY8uSo
	 f5dmWxO5gO9yPpmppdQDxnT9FtxNxLKHYYnWmr1z3wCtFxahBlyXgfQGUlvCfwz8pL
	 ItjHiMcZiOEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406AE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594315359.19882.5303069213292692818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdcbf18d1ed7d2b8e130304edb6651243aa014301cefc57d917c4ad53cbaafb
Date: Fri, 03 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735943153
