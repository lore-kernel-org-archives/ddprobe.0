Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63520146599
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717629443; cv=none; b=hvXcwJxueXX6lyXbJkW/xbgnQ8K8NGgZb0HAv9l5NWiehTlMgMUc5YylP5ZXS+FGtr8uajevp0dhvZ52NAMv74Y6g7hSFvS7I/KNnQDUVvUmCGLcLtMd/dZh8UdUAlW7+Lcp/g9NtXhbRbBnwYEtEbWcX52wTH/hFsJvpDHjevc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717629443; c=relaxed/simple;
	bh=7V2c+G3K+qMAXWTD3Wj9iU1eJMjUyH5WyYFfyMlV/Nw=;
	h=To:Subject:From:Message-Id:Date; b=fcPC8Pzn4E7+xJLLvc7DjQL9noBzaCV8uC07313yVZkFVRgya+DqaAOUKmZlKAhl9YTQlZX6MP3ChQO/tl2bhqN+0EPtzIEkWuHQ+W10QTe6FmF1sIIUuqHJ7muC2UKzCRLXDG/05MmBTtmQqzcP6QCn1NGuUARDf6EuHopiHaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F44F5kM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F44F5kM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3B9C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717629442;
	bh=7V2c+G3K+qMAXWTD3Wj9iU1eJMjUyH5WyYFfyMlV/Nw=;
	h=To:Subject:From:Date:From;
	b=F44F5kM4a3MYYYrn2UGOLwe4h9LwAff0COxUfCUZXXG4kzh/b/NQTtPwfc7mFtSo9
	 3E53rNCCa7Xj2+QEQRIoqhTzo+FLutg1iwxudAYJKPG5TeSdVKHYLqhVlozBdxneCd
	 W9jr0M4n7NGdaXcdJeYAu0+qJ98XnmP4MrSgwY3Hro3eNefZm5Tr3MGoi0Z+WGwnYQ
	 L7VWODj8gwKABpJ3cbiKcoWTbYNWFZxnZMTCFnJuolRQs9FRxvCA/IjKsTffSKeMU8
	 J5CTiIuvM0AhCuAMkXnZud0mEVb5G3tRAUfgQKMit7zX6ZroEI+aRUgiVf1iCiOs1E
	 IBA59Q87pWYkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7758C27C53
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762944280.5838.8148788136252380654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4854f4728c7e4c5d5ac3cfcef4cff22e47ed1d311a6033889a0b4490f21cde4
Date: Wed, 05 Jun 2024 23:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717629442
