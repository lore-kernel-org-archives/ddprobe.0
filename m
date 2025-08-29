Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCB12686A0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756451394; cv=none; b=sySYo9tsx3MBq1C27Ij2BXZ53V3e4MEDtn/zOMeAl2Ar/JIRpACtrfrYqhJUi0h1Hbqr8hs220JKOIbiBCoyEqBwTmwLyvEaq/J+S+Ezit4QUjNgvlxhVdaTwgM64WrUEKopDmo6s7KyWvF+oei/8tde0sLpU7W14msXbl/0J6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756451394; c=relaxed/simple;
	bh=zxskV23wAU6ZyGuga7SIwj/RhFw4r/lRyenGGYExq8w=;
	h=To:Subject:From:Message-Id:Date; b=WVUNCxOWEjGK0C6Kisb8oYRX5e1QLqeibz1+BHnI2SHl+ZNalIIKvhPhKFUoEJuXEmJ5w1pf15xQ6paAKzGGoQJ3Gk1sW0EigfwUcMuADKpLBA1uyu0I3gKQHSJ4YjswxpdqvSwUf4VkBrmI5XDhkZM/OCVxHERZAS8Ml8MWq+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVpr5zhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVpr5zhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756451393;
	bh=zxskV23wAU6ZyGuga7SIwj/RhFw4r/lRyenGGYExq8w=;
	h=To:Subject:From:Date:From;
	b=iVpr5zhQIYYadXVxv46cvMc6NtvS6AdoL6EuIRFI+O0pBQ82ClUO1W5586WYw4iLI
	 DxnDjzrm+XsR+Aw5rNoD34fWnYGnTeNuWrTmG9mc9CkwjbBg0aXULwQ89FyqZ+kVd6
	 8+akf4ozJ4ZlkTUlelhNR85gL+oiHs3jqDKFVt2zlRv1BOV9+r0uOXFHUB3lhu5KOx
	 ODqV/dG9QqUCB/dmw8xbzTil3zZ6UZWMUnc+ucpAtcXecu6WmIP1/DQ4kssFBL+opi
	 /pqtxvD1DSIBMbDkxip1FbBh7E4AUEHZ4CHoDO5URT4MiRexyjYWA3XM3nOwl4Qx+s
	 8HYKBPKx7kJVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF1CA0FFD
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645139358.15673.17839584568107602020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7990876d08b408a7eecbbec4bb7ee3464844b0d2d718bd89a2c9552b7f0d0478
Date: Fri, 29 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756451393
