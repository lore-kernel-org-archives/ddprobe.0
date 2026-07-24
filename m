Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC9E43A7FD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784892035; cv=none; b=MAt+JQxutwqBR5xSKkg9RU3J1y+NBmeLvAkKuaNmNLVhzQ3dblK0lE7iM03wx9HRlJ8QVW11jRL3tjNVEvmg5yorQgRvPvxC1oz+Zo8IeVwafgZA5ua8o9grk38w7NL51bGVn+fEXG+5JpIRtVVkeqnZ1oiF3dsxsKUAYQsHh8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784892035; c=relaxed/simple;
	bh=ovusJUNWO2o90KAfE6GU9pKiouq8U4yWWXiZvU3ygwo=;
	h=To:Subject:From:Message-Id:Date; b=ibL/45MqhkAqDTfjV7Ood7EsmJOqB7Cv/LKIC5QibV9rMSwaJaeXvQKixAKD/pwNm31b48C+ZN6c7XoPHk0F3KW2ar+y7oReOV878kNYYqbqqeMPlCxDDbLKkllc8bcdYGNkgzXNSslirJCzV0XuOTOdL1FDy2BPh1OqHBLOFw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuSgO1OZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuSgO1OZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C1C2BCFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784892033;
	bh=ovusJUNWO2o90KAfE6GU9pKiouq8U4yWWXiZvU3ygwo=;
	h=To:Subject:From:Date:From;
	b=kuSgO1OZv4nDx9bwqLOizNrChx99GNWIPhar2ny9vsVljaUqFRTxra+qUy0vHcG7R
	 ED1PmSBBvstjOYCLoSCRnfppUg5BaXULrhySS39hBUefj5DISoxIkTiLcZsBtwK4hh
	 PG9l6naZ5djIuArkRqJ3r2+9aSwffrmVkTrxgRurwV5Ixtnh8u2Vy/xOyD5MUXP7cx
	 Vz3jwF+rrln0tASqK9X/XZRwQklID51LXkNCtEZuAGtGquZBgtUb4ybcAQX4kbGj0r
	 l+2MdCIzVzrDX0KTXLwM76kNHE3rKL+Hl4H5M3gwNXtk5ZNQufixgLf2OlotmAflH5
	 XyzyfqI47qaqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE274C531FC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489203370.21660.16219206274166379260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc046a93e29acf1c5c6a1d64ed014d19b89978ba97e1c34c8abb6873dce07ee0
Date: Fri, 24 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784892033
