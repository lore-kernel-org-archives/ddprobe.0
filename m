Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B99528382
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746107994; cv=none; b=IYk0pVLPHxgqeK+6mTFnATFHKlBl7WisA/RDIXWw01EUbBZmmapFDnuEq2qPKh9Cj2HvhCRCHJbANTEicdZaodjlYkoytN1HGRQ4PEnuR4nJx4SCwbGFHHkmiJvULUODyRgv9aPa/Fs2kwQOqWCvpcguqGojuymsLzuN0DtCLmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746107994; c=relaxed/simple;
	bh=+BFvXTlAGheWH9Mnl6dxW/phZ5CXasG8rNiw/LJHkYA=;
	h=To:Subject:From:Message-Id:Date; b=pGOAWJrEWQ/j8pfizsptlJN6HHVIdJhcQc5Fbr4gq2uoAKjZvSzdj3dwE2CIXYBLYwQ8TWXskojhDeLOgY75pnIp7Fu/39X5mi9k0a/SFd1zd7cfUXg5NO3vt6cNMhB3HFPuqjoYPpX4vOUpmT9k/gCts3744hCeT+tIB6wU/7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPPD8q4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPPD8q4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03F1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746107993;
	bh=+BFvXTlAGheWH9Mnl6dxW/phZ5CXasG8rNiw/LJHkYA=;
	h=To:Subject:From:Date:From;
	b=bPPD8q4y3WHp/JeaWCVsyB8zGdXsMsE/fbCls410YS5awPniGI98k+Hy/HU4U/1FW
	 JxOUqqG5pncIiWw+sVY0WJ7Jye5oSl6bgQprcmtGQiqKGycThXXLRX4eNfIiHMq2I7
	 qgoQA2o4A8hPXImL4vL2wvYQ4WLRR8nQzokz8wy6exDjMg3YmRY9ZXaHyOghB5RY4u
	 8T9Hiz4Ajj3Y6LG+hnNzW/gZE066V5CaOBjrLudBp3k0Z09CITbJfvLkCQE+G1ewDu
	 G4eHCTbRzRTjRDY5ZxNaBhk3jOLR10Yf6tKBzf+HI2uljsglzVuNeXjFUEdlrzA00t
	 Vkq1grVUev+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E357C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610799357.15643.6865918898991459396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3865d516a9cc9d98c3ad0a1f25a191a16ec30cbc62f3c603c07c56c646ea63d0
Date: Thu, 01 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746107993
