Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387461EA7FC
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743638394; cv=none; b=bcnI/skhtT1ETKelXLM0py+dVA0BGLPndh8izOKGIWyq9GuPbI4q4cI+lH8gZF6wWOMt0Ff2uIz/cCJ67YVuumbs5J1oMmKZlsh9cNfuexSgx+3spSU0QFQl+HJHA+llzXjshGY+7YwegKT7pDJEq7Y0yM4iKdhUiNtrUWQGrQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743638394; c=relaxed/simple;
	bh=2wuUyF9yezDnU+DZEA+uNlAHluBLBUgyPpWCLXbSAEw=;
	h=To:Subject:From:Message-Id:Date; b=fj9W86O4aku6ADbBQYuyyXX6PI+2gALXDvpZZSX0riSTTplZucbhDW0r5yx8gYADvUcE3PrlBvSyDavcuc0p/KBooNG1sc8gVL/MtWRqQnUSH2aRaDHa5gYW2b3ViXwM5mOtde2PF9m9ClOzFZC+S0fX0VqZvnx8lxH+dRwiANw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AypF0q0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AypF0q0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C92C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743638393;
	bh=2wuUyF9yezDnU+DZEA+uNlAHluBLBUgyPpWCLXbSAEw=;
	h=To:Subject:From:Date:From;
	b=AypF0q0pSxVwFmxEP2nvcu4PpHrQc2d7gROeCyScQ9BSxZtWNplL1M3sOTRgH0VB0
	 cRmipBM214Ng4Hoh8qOW3tKtGngElmH7gaW9kd+6jjz424/Rig1AiPJZuDwTZpin5Y
	 icE4sfXEImV0RS2qyoFBBqmHQxmph2BzbI588jo4I0PAxJ6be2LEzsiVSKND0zeD0T
	 GBvheeNzTPgjaOXL0IszXJrJDYXNfGwbAlrjOE1VbIYoEpofAthc/rOYbNYxGvDb/U
	 3vOsWldtbM0IpHrYDkgTgMEE4yPgd0npeUI/7PXc76QF9WfZ/9GTza5F5ttEAaownz
	 AlCd6DXrQvHXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1B9C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363839363.17133.11949321414812086160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129913dc61ca750b9ad555c066d7bb747d238bb200a76f237fb962b8edc97a3f
Date: Wed, 02 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743638393
