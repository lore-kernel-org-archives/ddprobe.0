Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784BBFC08
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719250943; cv=none; b=KZYj9QSMcLN/PB75pgPkYIxWAfZrqDhI5Ghb5AqzaLwCSmcHDxaJr6Hekn4NSCOO3bN71wFvbAjCsNeLFBV46xHZfraTCnVLOUDSHRsuNbwe0ExkvbEq3aYOyb2Dk6HWZXxTKLALFiLhV+VRlNKtdeQqZeEwVQzW24e8CAGFtQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719250943; c=relaxed/simple;
	bh=NznH+xhD2QXA/vRLsmliSNuJ3kgfOBcl54TyJa16B1c=;
	h=To:Subject:From:Message-Id:Date; b=A+Gi9rk/kpGimROjmHF7nsh/6NW1KyuAqgzOXaSqDtnSyCUaS0t/Oxf8inMxGQUgx74qnpUsg0oYAlnS2bAxsv8KoAwLAjzZp6Bngs10qwRPqZIRhRaIt0bwV9lQMzZsN1hEJ+ghAMxUga8oyMMDiigSEfSn1R+vZmJqzwVkv7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMRDRPyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMRDRPyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56C9C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719250942;
	bh=NznH+xhD2QXA/vRLsmliSNuJ3kgfOBcl54TyJa16B1c=;
	h=To:Subject:From:Date:From;
	b=WMRDRPyi2fnOOMGV+NfgFtnN3e6qSHtsE8YL/SrkzfRiEvnicxpF7UJbCix9jpuLS
	 70FG3bD/3HhnWPmy+E1h/mv18y8bVh1IZRe/kR3xNySaflIy/RbJ9L8N4d9wGNwh3d
	 xnt4UVkYosKLBMAV0PPVQfydKQIwqv4WpJBU3KnlGFKxYbL4k64g5kLisQDXKPutap
	 UYQCMvM7C09kJoEHniGZ/m8vxyT17srbJs0oLryGVYuS38jnGWFk5L16ulGwWRc2nk
	 6+A4DkN3qCQTD051y7UucTKgFNC6ryGbZYUtbSsVceCkn9BOrVNpf66c4Aw1KhBu8U
	 ILL3v4tFVNuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF91FC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925094277.9461.15091588161085439529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7e55cfb656cd72f25552633cd15f4a023c38783ccce2207381de4d516c38e4
Date: Mon, 24 Jun 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719250942
