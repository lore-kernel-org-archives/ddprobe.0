Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9109446AEFE
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787052634; cv=none; b=onR+NppGiUPwmL9mYcslxLZyAOTyFhP4/seO1yLwlOpSGnvHjIrG+vvYgu1HyoO2HJJB2/bx38n/Zvc6/6FiAwc7AtuCLVTXCcyaGCCTj5dEFaA0kvVF86dF/3M2XlTlXJH1FKmOx8wD+aSbrtvX72Umd6VEdLHzwkq51+H0LwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787052634; c=relaxed/simple;
	bh=+640KmRpEBGGFpIbYfKCoFm3aFXxa0yxO7kE2StRqE8=;
	h=To:Subject:From:Message-Id:Date; b=q6P/VaeiM6zlD79DL7kpQn/woJo14nEq+fmwFE/K3AGWl6o48YwYjrBxuzrZr73uFUXUxXCvom1uLvZAQcyPFeQl7OeNyBp3B1g3UUJNA0lY1Whhr5EEUmolWU0csyFG1SqGXfikZ1XgWhftyxpk/EM66BUhtQKXycbcuEo1kYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og+YqoDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og+YqoDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBEEC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787052633;
	bh=+640KmRpEBGGFpIbYfKCoFm3aFXxa0yxO7kE2StRqE8=;
	h=To:Subject:From:Date:From;
	b=Og+YqoDvAWgnqsdQHlPnkLquiNeqo6XIxAi3pFrcFsmzeMGa9Zcg2qUDUuAp98onU
	 l03YTAxbMIPitPDaP9XlQwgB4MM1L0Dx2o578e12APn9I9y+eIJuQr5BE4xC4Jz6sh
	 0mvqj2PUh+NhcC4dTYy+8H7gLsszLssCFkEZhMXehcQD0wKCUNjwhGXVwqs3HuRr0p
	 ybHhDfUTgGM6ie3D9qOpcWGjwm9jFqY/UMEJB1oOlPbydz82+Bc3LWTc4UkEAS0JzK
	 rbz71VBS7NyCrwp/2s/Q2KCdhIDLpWcAVN5QLQqL4s+Uiy6d6Qf/UnwnWzGE4t557Z
	 vHClmiC9OLv4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FAAC5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705263370.30983.1173233741701317545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4402137e2d03e2fab11d30bb2c789832daafa34e191e885bba03e3f5b15275
Date: Tue, 18 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787052633
