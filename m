Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC2F208D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783190914; cv=none; b=s2C5zYWj/WsEAaxazfyEJGiOSTEpJO1PLplxe+uhTprGubJgk3U3xSw2BzdU67L62wJomr9wiiOwhVqeaTH4Q4EdgrJFcvVLHoLgzcUo9gpd7g4sGQLH1Tw6Eoh5ZF4z31d+yA358PflAsTjyXCGdr4gAImxren1PoFtrUok8V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783190914; c=relaxed/simple;
	bh=Rg02QgH4Dfy3IORGkSCRKF0PPuzirRoJ0iJTN2z/Xps=;
	h=To:Subject:From:Message-Id:Date; b=t4y1tWD90cNmDBegw6qZTgCNuCcr1Ty5uNqf73mvRhs4rrQyX/pIrUp2QyzKEBTHdKiwu0Eq0goR3TDpqZW9P+/MqXzaotSWhO0JRYnYNUc4JgYBOpgwRLlJ+GDgOBAXtoVLwbqX6LNocB5h4JCgBPM42gYxhgsNmCvOm5bYQI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcUL9kqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcUL9kqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DB6C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783190913;
	bh=Rg02QgH4Dfy3IORGkSCRKF0PPuzirRoJ0iJTN2z/Xps=;
	h=To:Subject:From:Date:From;
	b=IcUL9kqCrahTRrKs5L8j87u19/CRERhEuxjm+aj9DvoH7gnzSKAzknVaiirwuKXBZ
	 6g0SQNFMu7YJQbNgP/UROeDq0Xj/pZkWBPmBgw7G9hA9K4/YcOXPLbBhbq8iM9zmNS
	 31JnnZc66MWBcNr8MP89h47ahGm0vo29T+5dqU28C13nsif3PhfdUWwPxuuOtfD74z
	 UJrKaiVYZ0jtqKwRL/K0kE6vS3Iy5rYe4Hum3cocPpiobihEhvuA8D2ybWFfFlOj4P
	 uXwuIKmJYvi9tCM5aDLP0zbWDWuF0ivSEkRpGDD7ln2gjAfRiOSbgTj413/1KG/Q/m
	 NW6VFcV9VG5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB985C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319091368.28975.10557929405464373335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e27e104909018ed05a0a9478692a641860a92f771e558902f46ceb15117ac01
Date: Sat, 04 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783190913
