Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B0E431E7C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782943114; cv=none; b=bTBm1rU/5JyyvxAh1ebfIGVJ6cQjY4B3mORhFWRFGwEXrHresmMYhQHSbvXKr0HpROhOPo4D2m/O5eHcy/Sson6ALbluFaiCDzZKBgwiLI7m++T8PuRwjk0Ipy9LeVSaSZR5bTC5B27SPKvvboHiOALqUEJj9ObcW+yNO+LDnPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782943114; c=relaxed/simple;
	bh=cDw8WT8LUL7B35Cc062LPJEGuEX8cX02lkRFEDp+fLM=;
	h=To:Subject:From:Message-Id:Date; b=QrvsXEFICdVPJiYWyNpG4OCFyuwP0MqJry5LYQdI3F790eQEZfOn4r3Iy/yFqqDNHO5wwRAQmzMyqaVe3uqfy4cm+qIp+BV47qQffnDymUjYOYXx+z/VIr5zJfu6H8tec3YlEqtNeXOfAOLBoHc/hv6SmhD7VVEF1/s26n/xems=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQEv3HiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQEv3HiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C429FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782943113;
	bh=cDw8WT8LUL7B35Cc062LPJEGuEX8cX02lkRFEDp+fLM=;
	h=To:Subject:From:Date:From;
	b=OQEv3HiJjATXAHDo8pJWBMZ035TMZvuiUn2XlXiygxGkWDWbDDC7j+H+pCYGhX/O7
	 x+TLIPb2kYHg/V0nC0nqs65cXqFyknhTWHNqWpppENIgAWCPYKNUPhzU3vV2CiNjFK
	 L0tKDXa7UI4kw1AmEB5SL/9SSOIsNh+NUTZn3HLGF5FcQBPIlTWupCc/QCLpwmrhG0
	 lImllIOZvRUv78eAWxwjf2J6H5F0ALx3Z4rCmVYxb4oH4h9RLBeWsnH+vgf9nifMnY
	 5OyIYxcUQGdzVPMEuWtU7fvbGVi19DFbu4Gov2VtMk13/tVdoqHr3ULr7T4BZNJbGn
	 gwSJfHHGXXR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294311368.527.17725954154319461705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e4e4be0a15a9f5a7aadc63ab562e2c08507120bc6ef1158475e05bff79a1b0
Date: Wed, 01 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782943113
