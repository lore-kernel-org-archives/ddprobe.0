Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D08A3F4138
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791627034; cv=none; b=lF+7B5SVbaBGPO93YtIX53C6TxVS+J7fYv5jNozQJ3NBGKM+mIleDRfx3gBbE3vd/Gr0jRFdXtPS97ASRd6SCR1YOiEd4UpdliSTmQu/G7Dl8upNOxfk1UHKAp6i8cOTar5z4sF2wa2cK2BWDNM9hi13svNr1YjMARoxcYuOxLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791627034; c=relaxed/simple;
	bh=FWmAqYLvGjvi9wKz3RhQfA0Ycl9IojOb0rPMlxN7tEQ=;
	h=To:Subject:From:Message-Id:Date; b=kMJSVuRJ0n2uWoUJiQ+ejEmyXcRvPwrAIyk+QOruKyfTEKb/LYXnyUo71LQQHOM9L6GYfGj/H/KNuRFmxv0EI3HVGgv/Hat+WnbPxRWGu+w+mci+2w8voAJxHsDEX8jhvJHPJWdv8DNY72hlVEDG+6xpqAbybreFfAFmLuNUQOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7AFjKyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7AFjKyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D145AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791627033;
	bh=FWmAqYLvGjvi9wKz3RhQfA0Ycl9IojOb0rPMlxN7tEQ=;
	h=To:Subject:From:Date:From;
	b=f7AFjKyD4amAfth0DXEmzOsxpTtXeL1dXp9JnG9OfOQPWAe7/v8B0vSHAjIpsHOHb
	 0ObZk7MDbbuBZZiFelPuRvkd+bFG6+ngSmyWI4EaCMwWOzUP78RCE9cHuqyoXZ15Yg
	 m350rGcjoF0OBcIm06u/Bu/POZ99Om+0U2sgqjENFI3mbUo3Lmk9mRaeuV2GMTiwjv
	 htnkkzDy0ewYY+c6dtgLx8M7Tik+Pz/hNGb7OmNmKGoj8KMehjz7n4M3zLRSOFhfJB
	 XkTz7dm+PEjgLcfO7/5psAb4PlbO8wNlewIGfyfw6MvDITIwHIStwdAvM80x28wYO7
	 dDM+PbJm4FVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD362CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162703368.11609.10601567750001091142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227e9324c6a4da5b84d28c26db2b65b0f39a3256d5cb47addb475806c3fdbd15
Date: Sat, 10 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791627033
