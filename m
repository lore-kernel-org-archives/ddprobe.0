Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A9F1514DB
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717666643; cv=none; b=uwNIQNSk73OiFEeUUFgZdf/8Rcipz72bMHOb1mRD/3+EnQaPOy4Sp/ZCPJz4jouQTfexvHOLROB/KuiLgMFy5cfplM3FwRZTCpQrnRtwzT/4Qn8/8yifzJxXIgXIhRsCqW1r5vLEDZtjdXdt8saDOw1Zsx4prlei5Gvk8bo+8cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717666643; c=relaxed/simple;
	bh=X7kDE5zMLp5hCVhDKeYmlaKR1XInbKZxZorxlBqqszg=;
	h=To:Subject:From:Message-Id:Date; b=AOyuuQH/SpL/YgR7schz564QDnQKe+Y4R6gIReqk7hUCJqLfok1y9SJSU1uiUUGe9GUw9zpa2Rcj6bpB+nMy70J1qAAS/VPPI+axSr+Fvfa5HwfWSI1kNzKylgYRAPJcswIypmyGSLdNtnfGXrcrJtJLvurksoAtnsU7IgYUKWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPk2KgQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPk2KgQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB60C4AF0E
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717666642;
	bh=X7kDE5zMLp5hCVhDKeYmlaKR1XInbKZxZorxlBqqszg=;
	h=To:Subject:From:Date:From;
	b=FPk2KgQiLyhlOPAgNmSHYMr5bhS9OQgRcmOHmY+V4lt+fuflNWDBb466L+FuksOnf
	 jKmaa23yHTmQc/Yc1bjmstgZOSkB2c6spQo1MuToPVFIQoeKylgCgQ2b3hhfegsYYu
	 49am2m05icHAt176GMmyfkSVG0YzetMRPh8yHYwrPoJewUDo2bNd4iHo/KzUAlTojk
	 AqS0kKvHriDRIzTrD/ZMJhu2DW950ntmY7AjGWKDAYfIbhFwVuEEoxVJ5cjsCBFLX7
	 Fx+N+vrT94ODMKAwcSYWkc76gI0Narhi3fsG0F5u+DrRUbAcnysS0VN5ws/I08P+Iw
	 hz9Y1YiI8sjww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BEEC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 09:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766664280.15695.7474536500344124368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23969bed1465ee4549452a868f1c609dcc9fb0450a94dc6f5e91e89e2a9d78d
Date: Thu, 06 Jun 2024 09:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717666642
