Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE1881AA8
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775929654; cv=none; b=u1LcR5wtE26j3srfXxoerU4JsW/XAgpFGtJehNGNmZQu2edPH7QYslFesj8+ppNFZd+XiC2kb4SdgGh317G0Fc4DGg97blXxludFIWlSP7flhSpqrJalvIO0HtWki3W4xC3weQHWI56o+hiUPP9kjdzYp808DD9fdJ4P9WIVtFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775929654; c=relaxed/simple;
	bh=wOlLPBjyZkgGN48WmaWXgdfTCdUBWj+XHELw8lItKf8=;
	h=To:Subject:From:Message-Id:Date; b=OOMslcV4ivSaGh/ObwuszvmgbbiJFxTXCLnEscCf6ZxWfy2jJpJs7CgnwGOgBItOKzSm3zI4wW+h4AEj5R0c1IaBa0CkQwJGH8kAX0u40fehZs6ihNYcDVFjyhdoKawVToqcoc+TdLquDko7fQA2CA/FC/SyswsEIjqDVJRQh0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxzEKPA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxzEKPA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE3EC2BC87
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775929653;
	bh=wOlLPBjyZkgGN48WmaWXgdfTCdUBWj+XHELw8lItKf8=;
	h=To:Subject:From:Date:From;
	b=PxzEKPA0COp7QESD1jYYk4UYvmQjFPlDMzabj6yb9/1KB/tBB/dWtxY5TEuj9ZHN6
	 c8weRMzUgKdOlGfiWva0rzVoOBIXDD7g2HXv339DFJW94/YkKSguSdFb9Z/h6Ya5GM
	 61bKEBwn2HqsjRz+XrGDY5br0zCYEd6jBS+LZGkk3p7pyz/WGv/JzfCy9kiQXs0oW1
	 EDvOP33cUhn7GwiNqnpHB0ouvW6fvDTJUxhnseORp7u4nVFnGVDHn7z9SiWGO3ehXW
	 t1f3iXeeKDzay3sS4GxCnySuXAZX+kC6TowX7+7HQdj8WZAaJidq8sGf4tINytX3dK
	 KaUmODq0JCe3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92EEF3ED5B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592965368.6870.16230572068000811506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8659a487fcace37a6e8b3918d24f59f8e9994bb86681a41c9954c7a7f72377d6
Date: Sat, 11 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775929653
