Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5002BE7BE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788025234; cv=none; b=uXCShgC6ikQOEX3qErYwvbTAQmVWLTwuFNH8CcP9K/2YMo/YOl58muY6dsjMXthi3bbuXx7dath047LfdtAZw4ZWslX7AA6DRrD2u9jnR8d63xPf2tHzqWVsRaVteEzi4PrcjKH8XwRC8U86TYBSVlY2Wi+0fIPnATf6I8P7QnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788025234; c=relaxed/simple;
	bh=O9amC5ter793CTGkntHHrdPSmT+ToiLMnlJG9mQRKec=;
	h=To:Subject:From:Message-Id:Date; b=UmEs2k9Q/LXaKG/azTlYD+bZxQ5Pd6abcm5oXVZuaLfunL/yNOArCieqaBFOzyPnhrrfJeewMnN0iSP9FLxVYztEDcAXU8z74LuxuvojtBVFel4ECzvJooszYnt5m5hYFp+uu5XHu+aEuojLHfoA6bae1EPHZqnwlPagktfTvf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1FPl6Ma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1FPl6Ma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A41C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788025233;
	bh=O9amC5ter793CTGkntHHrdPSmT+ToiLMnlJG9mQRKec=;
	h=To:Subject:From:Date:From;
	b=H1FPl6MaRbX8JBrqq9LeMjk6z75Q+YmVkMtWt9cftmoSrYbL1Lo5ex1Ve8hKYp0Ys
	 nmgZUSM8O5SwG3o6R9Bj+L9XfbLo9KuOddNexHsmJhHQpv2hnYw8vnK4hIGZ3XOw2l
	 FqK+UM0GV2DQnF37xyOX2mIjlW+K6tXERsos7rSVOAI2QK9zMgEwX5vunDCjbRkTa+
	 0HbpOoOgRM3bxRU7VthoPXhV/TM/K6giXYgLOvgOpvcBTpvfaZ25GQm/DzllROy8fP
	 ld3rDgvDZApYeBFsL6MJ5uVMlsMQQdyCCfKBMyqKXm90wGJZ4EcikGj/KVmPA8HuTb
	 hJIJz4Neln5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3472C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802523369.32716.11747338376270955565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d936cf02ee438decf0f01a8ddf87310b2a31db44cdc6ab383024b6dca15b9b
Date: Sat, 29 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788025233
