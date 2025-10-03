Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C751FBEA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759494595; cv=none; b=M6zB3xXPNICnfes8OUiXJXmJws7cRxey94ypwO5l1oBxej31BWGftX+zcuE3Hy9+TNuoFOsV35+bkd/RnIAAYIX0J6WFXcCAMybqT1RON8MJIEbYMJuD6d/4+SU6+heUcZDq9tMl22snugJqrNa4oIumCNmvdp3qr2/sXaRzGUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759494595; c=relaxed/simple;
	bh=iWUGy75XBNjzOEhHFyr+8gKRdj9GQOB3+G425AIUJ18=;
	h=To:Subject:From:Message-Id:Date; b=tQiSn8BKGldll8iOlvtzW8rL+CMx2X1jNuJ8q0TZNlWmuZ3wr2GCzTot7/Q9Mw/d2GSlROG3/lmCcupJh8vBqQbGZwXyOvuXdlQCDA65pMMfhwCb+Zl5z1MuP6C2Np3WPpTRZ32ElsP8rfZ1frZSHUcMUwJsd81RIcg34q5W5fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiDzHd/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiDzHd/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21C7C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759494593;
	bh=iWUGy75XBNjzOEhHFyr+8gKRdj9GQOB3+G425AIUJ18=;
	h=To:Subject:From:Date:From;
	b=uiDzHd/QEtXbw9p7CfVPtMGB+QY5hI4v2EhTiAmHGA7mLImK1g8A7DXqb6KysDrn7
	 kckRVE1MkSwTwlkyJh5k7i6Ly8cfipDVW/9oDW6pFKSCidmNBw8Nm+P4zcbUMG+S6Z
	 Jih1tywtJNzsKLZlHh3kyZebFwzum0HYWkGFjD7VjflihveX7uubG/kN5+5xhvQq1O
	 9VPk0Brh55r4lds1IFVXrmM+hvw3O2dRlFOzd5Flfv0I1AtIGJ+TkaR/yUpwumISqP
	 tBaOuePvVEjjMdWObGEzBtQijSpa0NwANI2XwENqBx/SdPA9mI8tfjw0Ej59M6mrLk
	 PZRN2O8u3PXCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B498CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949459360.14218.7101667487467881933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab73afaf08f299da99209462632a81fc214d7a10cdb70337468af012b05190ea
Date: Fri, 03 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759494593
