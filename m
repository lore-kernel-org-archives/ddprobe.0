Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6967F7CA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717192463; cv=none; b=FNdQnJfKgieRscHI8YV23nTEMFkxTrT/QbreqdJJwGkUsP6BuOPD4ZSEeUbUbqyoEtUwn7RzTQ8qgVj4936c5YIFbxv6qsUt0pa3gni4LI0mph55JqVCyweLuezEcs8LfZAHvntAbhQMTa650MyFHrFA2Nc6f3z94IrYNpWS1Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717192463; c=relaxed/simple;
	bh=q3fEuT4dRRLeOk08Sg+ErbCjAaGdOSIqcWqgk4MRLVY=;
	h=To:Subject:From:Message-Id:Date; b=e0g02g6/QF59/wkM57/+Rm+NsPeAU2X7IuYq4srzYLOgDuMbGHBG6hWhwdHvBbrtkpZG1ML0+kDlloAF5IpThNp32PhjYLsDKQmDU47pVzs5GRu952ZIcj4GH/SNPvekjlevTWtJ55pL6UwPtq0XqJIWaBiIuCFXSZVylZfVmF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJU6jkS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJU6jkS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C78C32781
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717192462;
	bh=q3fEuT4dRRLeOk08Sg+ErbCjAaGdOSIqcWqgk4MRLVY=;
	h=To:Subject:From:Date:From;
	b=qJU6jkS5EL8qdpnnfkNW8TRCPWc8LrxBhNQLy1pWRohn73l3zos0+oLm2+D+uae8U
	 tmb3gWZzVVhh6pHTvG6mPA68BBRI7wsAfLvZXiXh0RZEwEnfz/oOXCOsETq+JEmJ5h
	 R/tTchxsSA/HiNf8px5HQBmadTHB60wI4IC0RJCIc8HlGX7dQWSdqgnzFCKFC6iYR3
	 Q0ZX+vitfc+PJrGfSnMqHzV/25uBaalDyuJqy0ffmOe+cH9d/2JO44l+AINnsijSrB
	 tMzpKL2kZ40VKys5+nVCHYJplR6WEPdRc4gzuMIFs/xMPn4oEKo+okKL8Q/6FGuf7y
	 Juuma8NpoVT1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE88EC27C50
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719246276.28801.15602163179031286002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3ee416c77cb003249f89aaf08d4cac60a3eedb3d58d18e1d98022b0f2ced94
Date: Fri, 31 May 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717192462
