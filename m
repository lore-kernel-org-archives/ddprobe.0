Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4597D2F5E
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740874734; cv=none; b=WThg3pccBpfmhXKSuAMbuntef/KcBSMEEPitl9jWVYttBFf4FdGY7Xt2L+8EPOo38IEdYgRuKllVz8kiMNs0PgMj/i9OQpWnh+o1XTkkGbXV8Zl/UR1/RiV+756M6nKxPMm5jEppd1T1E39H6kwD3Wgb3vDjHxhYmSnLTd8sa6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740874734; c=relaxed/simple;
	bh=qGsQ2XK+UZ5WdivYK1zWgcos8/Ok+1SorC0dBIxE+t0=;
	h=To:Subject:From:Message-Id:Date; b=W7ENoogO8GO8lRx1XQxFLtCJS1tbCGO3J9Grw7O8ch05IIleLk29T7qg2BUZJTXjGdxSNJiSXKQK8hXcoZGKVQU/wg9ibM5ql6J+YcNy+s7Mi9pLmZzO8cMPyYnI5iMxoaYZ0+G3qAIs45j3cyVdHdX87qOWUcv+udN17jD9HPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4HwlzGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4HwlzGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F14C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740874733;
	bh=qGsQ2XK+UZ5WdivYK1zWgcos8/Ok+1SorC0dBIxE+t0=;
	h=To:Subject:From:Date:From;
	b=K4HwlzGjKOtdhG08QG+Y8TxrHkHkQeXLUu0Tw4cioMtri12jl1LcZPZTc1C0vLIx7
	 8Uv8Rk619gjI01XwsAmRP8J8ZmpdbkUv5rHnyjXezveZIx71ntdNgDQCF29g+qO/Dt
	 TngAeLeRUmuk5Rh5mSQ6QsUynG36zX6I1JygEHA+YNg4S90NmoDS0+IUuH8Ckyb/7t
	 oiieZwiGBxB0lz1xMxzTaP68vRi9MdMzz29dGf7idegidDrhWM4oIf0gXUdckBhr4H
	 yZO3PMo6HBWnRCE3rwjI6KU70zdRC8b4uoMovAX6C4d0oM5elY7tkqqm2RHsCqVf71
	 2rNzyPQeUwHrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936DFC021B8
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087473359.18148.6039089826797343388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9601d9b5d98d37d6bd636096d2e04fc3df567a6888459e8becf8f626fcb51bd
Date: Sun, 02 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740874733
