Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DEA33E34E
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779333634; cv=none; b=MbyUw68etFM0DxBSdjV0Ccc2rCph8odSlB7E6pBimu9wPvAyZCwGc82jIH/qbbsniSSTu0kGCMDgwdXAh0GSTrTTm6DQi6U/W4j6ZyK1c6/be7qEMMo1dcxi/ZmFfGmLz6+0l6RG+48AkRiGV4Re68XoS19ImRUuUPqbJ2421Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779333634; c=relaxed/simple;
	bh=JyR0vvsWQzr7tD/9ids3SpLVAvlvpn2Jogy/5yOlPBM=;
	h=To:Subject:From:Message-Id:Date; b=VB9kUoWHZGI+CZ5C2qILNB9+IN8XYDy/YBOtps/vfZKaTrWTElnqbFqy5yiFy34prKl0F9pgsNcNaJCHr12/EhqowXefPQvRHO/59HwWZczjWyVPEN3kjdA/jVjWC0qVuiE+rwQpfXdOiPacCmXpBfRsfSjcvPtI1N+vUzd2RWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPzlmM28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPzlmM28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE215C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779333633;
	bh=JyR0vvsWQzr7tD/9ids3SpLVAvlvpn2Jogy/5yOlPBM=;
	h=To:Subject:From:Date:From;
	b=tPzlmM284QjD3i+fjf+5dQcNUPM8OevCXdvR2ISbrK3dx7uIvYGmkF7cbZRzUYzpq
	 zHs5+QLRY58xXhLx15Zv1+auISXQXyGok05QVTVZUnjvXV5MN134Nf4ALTqmobHJp/
	 dY9qQ8HSpcFlnGW+zyLgJ89ZdbxonzzLn/XjDAiRojdRsFU0ILL9J+5AlEPE3PoDmj
	 JC4k2d6wYCVkHf4Rg2lDpygfW2RExI+8MI7S/6ZvY03e0r4UzfIj49ov+0k/DWxw1E
	 /XNW4hsVCcpx+C1RSmpFc1fkPGV7FNtLK+lEPLvb04DsyyTtIBJzKL5+sMv9J8GJFd
	 wzy+lxKF6OX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B073DCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933363369.25162.3487906738446483498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1313154a58a4ce67f793fc555131b62d2a6dd2e8ddac730f8ab4794cff7334
Date: Thu, 21 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779333633
