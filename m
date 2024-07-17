Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F9E1CD2B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721250323; cv=none; b=llhjqIrFsPDqjkbTirq/UUP3TERoPjmeNISvuIWFhG9z4FxCrEhEkdXinDWr+lIEy9BrgIi6ESOL/zpdBzCypGQxW3I3J1n2pzu83Vk0BmDu3PjCEyy5qDbvwOGLcf0X3i5AB3QxZpzups8IgKgqQWfSd1Dd7YRRop1eo8GU/iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721250323; c=relaxed/simple;
	bh=spYeBwqXN1LmRDj6AWGeodoR3+O+26cu1Il0HZ6uz6U=;
	h=To:Subject:From:Message-Id:Date; b=hAFYGsCGDWVPUqBfJJngIBL8TnDR0tg4cPpPvitlwAK72VbUFblRzO+to1EZ0fs6y7kI+zrETLnVCLup8+60cI4l4yZDedn/6mBX/sy0aiT++b32T68mi5HtsZmoIlA4DY57UkT+Huy5S2yaue5r2dr/P7Q9jyc7eQgezxlecqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA8l48MW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA8l48MW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF695C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721250322;
	bh=spYeBwqXN1LmRDj6AWGeodoR3+O+26cu1Il0HZ6uz6U=;
	h=To:Subject:From:Date:From;
	b=FA8l48MWlKtKTCyLV6gpX6D+jPghXZ45CXWXgU9fG0MAPqCRp9ydGLh72BoIOEj9A
	 VqAvxMB51LslKuIyegNW3ksTiRbWkcIfcYf6hdspZLQXZk6K3FsQ/uWeY254uupAfJ
	 dvBFlyuOLGMC1Uah+gzFGpa75y92JvlbnSPntwqo7hkeU+U0bAQWyK0ugBzEbK1kbk
	 W3RFPAqHw/AUjGNq0Pnb3CeYf8QeTBIyYsNeV8t99VQfw9/G++wotU2DuQbg/NsCUL
	 KQvXlWfv51yFW71Wg3kPS0kGMUMJgWPg5jrfSCaKJWO1X5YanhgNWPcsZQRt78Lggr
	 /ZQfYnRnKg7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB473C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172125032276.26150.7558429210749817251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f27bd33a4fcd6b479b59275f9387412098f63d280b4993f5af5788f060d0a6
Date: Wed, 17 Jul 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721250322
