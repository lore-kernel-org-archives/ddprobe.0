Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F74A47
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710896297; cv=none; b=NtzuxiPf2gtnh59Q96Ip1woMUiFwlIQjk5WIO407fHhn65a6ZWxgbmpQCEi88EpMqQkO/eouWKnESB5HYmZjEc+/dfLLecH53kbO7sMygmcg+xxXBLA4zq+pHmDWWcGZVGJNA/HJARvZfFzBKNIFpqpDbw2Wb8/Am8cGFuulOVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710896297; c=relaxed/simple;
	bh=hRnxoorA/sINEwX3C68Q91dPJju0znsOqGx2KOqI7Cw=;
	h=To:Subject:From:Message-Id:Date; b=nf3mRloanywY3Ga7rv+uPOqU1RCgv09fNtfJb+tUuiKf4xlvowucUHJCP8LTbSJVlQWqIiziejxELNCyj5GGkvfwVM/Pgg+HUAA4qwAQdJL3XhuP4YkVIFohurkUFpkMcEJkqq2iI/eKyIKFGJeygxQ4L4Fp7qBmKC6ZoJF1/PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om4xcWYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om4xcWYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC82C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710896296;
	bh=hRnxoorA/sINEwX3C68Q91dPJju0znsOqGx2KOqI7Cw=;
	h=To:Subject:From:Date:From;
	b=Om4xcWYjEN0qZ1/u/wpP3XwOpf8ozdBUuuPfiq2YV70HMGJRa5s/w9xa9TuGWyg2f
	 PVqMt1NPE7IfXOaUTYzYG/fUgjWMz1PBXrEbh6TRPyssRzxWyDU+Tqip/xrrKwiL8U
	 9nb52mRZ0hTMoOXfi3hiKCO83y/x7O+dxC/jUmTIJOJbkHdrQ3mYkod4slzlWVhQg2
	 cbgyLYAepSvdWeEBNL7v5iy7KhKWIqgLiYrl4FS+MlmoKGB7f43fZf9cD1ArTCRLkI
	 YQ78gbLO6DVsLsyC2Rh40bK2EHrYg2Rt7Qj330lDJzPSyLU6qYhFbUJFNTqHNDBfRJ
	 XB3RSTVDlS7SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7C6C54E71
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171089629638.27182.3210764611419245424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f6a66aea1e6051dd3b8421f88a0bc889f1169259d6fdb02d667a13a9fb9cdf
Date: Wed, 20 Mar 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710896296
