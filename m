Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12864E1DB
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710526697; cv=none; b=GnciMEgIdT1csI5V0z7HM6PvIUQm2EIMd609DU6brKd2e/H6m+F2pHYpzPkdbZdXFz5ktyknV66hHZ3N1RGBkp7/xlo2YlYTyi4UjrmwMPCz1JY10zdedEzeO8oakhqPEFrXnd25Wz/kcTPVWGb8yvF5nK5Yd9X+b/UlWUalYx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710526697; c=relaxed/simple;
	bh=i+z+TOsEstYMuHkXXYRPBAqJfqiHA1Dcxeys9ZykXy0=;
	h=To:Subject:From:Message-Id:Date; b=s0i5chzb6z7ykRRjlBkWkHmBd8uckHXVJCuiueAftk2tGnRsJGD+Csu1f16KhCMRyWPaPXs5vs+Di2gUzk4pNRgXzESAHN3yHvn2z6m+YW8hrLXDdoKTjaXUuMw2BghN9ttg0PWLLuxeytkzt5PRRTJKvzvDPAFe2vmN7jnYVig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUsh1lDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUsh1lDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CCAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710526696;
	bh=i+z+TOsEstYMuHkXXYRPBAqJfqiHA1Dcxeys9ZykXy0=;
	h=To:Subject:From:Date:From;
	b=rUsh1lDNNz+a1LdT5++Dgzf+ZtVHCiDrSi4MCJEtMY8C6dhMIQxyp9Rk+SDkGip0M
	 UeLw5D4BaEm9yOq97DPdWGu2gWrNpcF9AKINpXQEbJt9lYviYsNq9Ge79JyVvupOKT
	 LkH+z+9gxX7oQdOxaKcW/F5qT6GFOncFyOaLwXsvHo044Zan8eKJuyCW8QLuZx7nKR
	 sbLVlUaC+BU+X+rsktwp1E/A8L6ob28YPqlCLbPSrcRENWxpRCoTEsCUX3gNkn1Jph
	 dg8SDcHn0m9aqKyNtfjIz8bTUWL8LRPNw4or8JHu0ViROHTsqaPd93xMmN1YBcPAoj
	 2eKmPOkxgWqxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61678C54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171052669639.5022.3173972156440964137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84306cd59f9abd15fc148d01b031a2db0b7e1cd5569f56a8616ef7a0ae0e566e
Date: Fri, 15 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710526696
