Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7C412FB2A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720879823; cv=none; b=HhAUFwR7tCoIGU5Na4FPHTMqhWKAAfiwLtW8xK2L3mkJdtCWeHOuhpP5pMHCWOvdVW5PmZ5UXmu7FbR2IKrRBtNkGqPsIasOOTeal9czVNAa8px9UEv4nReEsObEV3M7saV/pYnrv2+eBvzRk5rubruIUcRwSUeQqSGNKzvr5AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720879823; c=relaxed/simple;
	bh=BSxtnWRxz/D0CPlWxhtVRy9XmzekvR6zlOfyK0GPn5A=;
	h=To:Subject:From:Message-Id:Date; b=ka7Ot7Kv4+KNPHCkNEnH30/fUWK1sdDWpGieeXcCDY/u5pSbaT5ULvv3ZIWmxqwzL6ib5HxgxboVd6HuGLh9e50vK9AainwYlBlOUDllI1A9bU+cOSfWrVdwEcQb2y/6QiYOD86PP4mgU7O7gvCYyacG3l2CTivktEJp1PoOQXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B55syw8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B55syw8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D7CC4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720879822;
	bh=BSxtnWRxz/D0CPlWxhtVRy9XmzekvR6zlOfyK0GPn5A=;
	h=To:Subject:From:Date:From;
	b=B55syw8dML8wMUdENV2bXoXlfUjKd2iIC9LyLzZ+Alhb4WSHlENfu5yv5wQP1D3y0
	 IdV5NiRdMKkPjUk5dWhuGv0sQcqfWkRW5iRSRSwLYHyKA9IvA4OtOJfS4HclF4nVc9
	 vSrxVlSfBMthP7AVpH/ohfBBT7Zq/stb6VgXADSRcjguR3TyZpXWidZCwEbtoPaJeE
	 P//0YIvLQeJFGrlwPt0JlPc2fHN1QsuBExGQriZ6dE1f/EDShM+g38fsYRyAkA5TQw
	 //EgLSByEGbHE3p+NChBuNxxj9d9CKlBsJ7T2V+NzdZnWnqUVOp7f7nQUr2Kex1wr4
	 StNqIhv0lay/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73B9C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087982277.22336.12262856723421581160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563854ee1cef781ba6e3a62b3d70abadb5a36d1cde07f01c80c6bbf516135f8e
Date: Sat, 13 Jul 2024 14:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720879822
