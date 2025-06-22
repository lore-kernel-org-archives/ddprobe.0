Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C4FEAC6
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750627795; cv=none; b=FM04eSDlV2Wb9Y5atIod6or3X34Ie/vJwN4d9YgR/H35s/XSRxFannB+nmr0V8AYKKDkMz1xedsytkF5adv/ZL9JwE5XGXI4oSJGXpXgRt3JfOVMVYL9hb/7I3/v8bocelyXTkOOoLODXzhrN6jPuBGHk0bZjDJ2t3CIxX1jqyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750627795; c=relaxed/simple;
	bh=bV1EgQrzEH5YZIY9FjLTUDQw8+BoCJu+WB107O7awrg=;
	h=To:Subject:From:Message-Id:Date; b=aqA5zXk1Zh78MFPv367+iygTvwfGjE+WJRJKitiv0mof0x5jX3HvIMlX1bdehFlwn4U5ysGGBGPsYztEguETtindTo2NNlnefO/aXLtV4myhN6YfK87bZ3BUZewPOtNyKEAR2gwMXzLwBhgV2hnFrHkyaiPZ00KYQycScXsf3v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSPNuKtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSPNuKtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750627793;
	bh=bV1EgQrzEH5YZIY9FjLTUDQw8+BoCJu+WB107O7awrg=;
	h=To:Subject:From:Date:From;
	b=WSPNuKtk6utrNM9h3yKSkU31+FnH2Ggme1XkRAq/Xtv922SvifRg9zZcHnSGpMoy9
	 DQrGJeb0h3d9b3wTVwSqiU9nCwkYldPIULAftQUffrIxawV+/EoZCSn+F4+bMZvNhQ
	 ABdY9cIZ+B8lxPGInKwNN3poFnc0bbOFlYXIaHx8hBpHHwNhSS5Vi/dGfF6/7PF0De
	 5Ot8rGFEmQs406ZxC5kiVKg9PmQU0iA9YCaKbOmGIIdzdm0kMrxcw8qGpCE/LN7G+S
	 8d3qyBW9J+Nh2HmJAZvDAR/a0nniZBBe3Fj3hKZ8Wgwx8CXctDsbCjk4jT441RBqsg
	 sPVSoyWRjBr7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064CC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062779358.5465.5488711932100560169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f575b732c8e2b31347fdc1d2176b1cc8da556e96b01bb5c5e9828a5e734e072c
Date: Sun, 22 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750627793
