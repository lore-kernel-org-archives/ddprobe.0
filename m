Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CC020110B
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747663794; cv=none; b=BfDLnu/VvlxCHzqnDPqOgo8B4x2StjNDbJiGtcsYL3LXdxMvGcxzl7mF+FqWuuiONW5/hIJEUOSgwUwiBiHPq46mJjF5sGenT/0B5AKWCGAozmTSvR7c3kNBQhDghhs6+8ZOrbi1LyycU8mZucZMbHLKGiuFUjS6CMAwCTKFFVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747663794; c=relaxed/simple;
	bh=qWdBEBxchUJ6ZgGlRMme61FU/mdcaM734rcku3coieQ=;
	h=To:Subject:From:Message-Id:Date; b=lOIT+refF/gWjVBuhrYTJ5JV5WbLqyfGBOTf9MOYsWIZ/CuBxd4ftDg24/eKw44sEZoKXQ9OXUB5TLByLvGiiUcGmDpkSmNN9yHOJ/2ang9rc8gfNqr0HNWwxGe1ratSCXaOPRx8XiL30yhr9IawfygHPGiJmg/c7jc2xPXIGIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcSSOSDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcSSOSDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB77C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747663793;
	bh=qWdBEBxchUJ6ZgGlRMme61FU/mdcaM734rcku3coieQ=;
	h=To:Subject:From:Date:From;
	b=EcSSOSDEqiaa8A2AWf2U+SMTg1BvxaWQPEm/aZUvexxW6T8h1BqkLOYTS3jklu07n
	 5uqzQ8NuiN01R2bxENsKE0pAJHC29+evtBUv5re6hTOAOgSVktauRDnKJJNh+DLh4T
	 qAqXiPOZAU3IAYUn/40TeBHL0PWjbGpCGIA3oX94EGV8eJSD4xOYaTgQVStphCJ+XP
	 OwaYKG2N9JHks85TbfmxQox/WQpwxMdVtQTh2dTgj87CT01Z4mzMPET0R4nyUmwY6M
	 rvLlac/01TSGYqoepDPbSzzoAHrCcP8pN3vJt81sa/OVnSRWDcOL1KudKdeV8on7lb
	 G6WfzLt7KNi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC72C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766379357.27936.6457357685304057926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51031dabea2927555eb25277fc0d1c70f7cbf3c6aa6e142787109af6d88a7960
Date: Mon, 19 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747663793
