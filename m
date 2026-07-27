Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C09F3ED11B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785175234; cv=none; b=kX5p9+xN7E+Aeh9fGA6FIPqlct2OnjSzFow7KxN2dE5rzTHlDnD/gukASBN5CvaUQpDZLJwg9MUMgC5oHZiwSfFINmYbuh4VftdZXDo5+XGnQYZwE+5XElOk8sUuiB5g3rksY1gT3Qcs1u/nLISRZCQtrKs//UnW3LJmaBuBtjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785175234; c=relaxed/simple;
	bh=xnHdI2gDEIcJi7ffMOLFGzxKdLoOo43+l5UBw0Hhztg=;
	h=To:Subject:From:Message-Id:Date; b=nSP84rcYIjWxyWKc+9Q2WtENdwg1F427BSGy0nLtCRJpRLTJ3qXzgbb4Ncp9z/zwU5Dsg5HKoOA69EdvticjnPVSA0FKTzrUsCvQJl6ZWXWgbFv8ouI1RLHdPFNXZf38/02EsgAw0hZVQPqWKXN29HqWaTwHWaTaXCQBzo+/eVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1Xd7l4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1Xd7l4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD35CC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785175233;
	bh=xnHdI2gDEIcJi7ffMOLFGzxKdLoOo43+l5UBw0Hhztg=;
	h=To:Subject:From:Date:From;
	b=a1Xd7l4hWBFFBLyrxIB1YyOtFH2AKH8z0OHREJj3ROQIeej+XVTZwKGQkgFzpsxke
	 09sltMO8Kq7QvRgWjoMGdP/KSLaYEQUQtBKyXDtB9gJ4+AR/hNDxqy9Ublp2XKTsye
	 YqjiwN9iRqbiGwZN6HBtblaAkYRb2QvbryJSdKMcSsBJq5Q+wffR3sH/1hMc1FB+Be
	 VhhWkXQ8wa8LZYCXhQXuuie7Tx1VuogQF1ims2cRuzYbjr2ODrlOrmc9xJ232PLYE4
	 2HMQcGlpJm2xa/erA+WYGPr1PLEtjGgl35zjI0tTP1s+hCvoZvDMKf7/s3p2f6hh7E
	 6CBYKiTHm47yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A6C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517523368.25460.11178889300863065593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97b6bb0ec327071331577b400c05dabd119d9f3e3f6b1fdb3bfde42e414c7d5
Date: Mon, 27 Jul 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785175233
