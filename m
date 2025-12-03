Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3283F3358B2
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764789774; cv=none; b=JlTZIEc0BVr2XF817M03A5Xzmp6+t79lWn25bMnl8V5uc3T0XEarGjbK0s12OC6VBAqhQV6WGNBVBUyLKd6dQrlvyzkjSkfJqkuCVLaShSiCIpwgimHhISiP5E/rSylJIAoOxi8V/Vnil3AagCRHjBySfYYV9FWMQmYmAkvmfvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764789774; c=relaxed/simple;
	bh=7f+gLZuoGgAybOABbg6WcO4QfdeY2eYe992JRbJSxiA=;
	h=To:Subject:From:Message-Id:Date; b=DEYOD9/6bZQKWgWxX4IbIhvxYd41ipl/BotilzQAJz3q/fLBpn1S0ZHEvfs1yj4FRfgES+pUwKwmrE53IpEHX2XDTDR9YnpcYNFsz9CCWJ5z/1czNKmeQ1JYNiyWpWXsjXGy0ZYnpXGB3CUAaHZneAHa8Nw4uf/srHMquFqmHes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhrJKzWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhrJKzWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B607CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764789773;
	bh=7f+gLZuoGgAybOABbg6WcO4QfdeY2eYe992JRbJSxiA=;
	h=To:Subject:From:Date:From;
	b=IhrJKzWue95AhFmeYUOpxYc6+Evr06fhofXs5oOa4bbC2cnKTReb2JoKpQX2mnueP
	 k98BDhbaSCyxdu0cvK5/bBTAIbtds75EL80Qp1J0B2u89MAAvlZIfhgwBA+qugNArv
	 H8BE41//TV8YWeoHqdIZr7ZQL9GXWgQZHDm+pnlK0WAPuCX4kGm0AjAXMkJpJFeXMz
	 rbwVWR2QahXyfT2t3kCmA1wzjYF/YOl3pgpdPr/TvM8NMogR6589JvGX3KHjmjZIb2
	 +eX8AyZCNfy/vMhtD/gNKjEtZZTKcj9qnY0i4kPR6R73ervbgxQHDEG7kR5Uxj9lBy
	 bJFG+8FTxPAyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3534D1BDD4
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478977365.10300.5279018025241856588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b62e6205a30731f28b5138511dc8ce4e65b0b9f7f2ca93368f4d41940b5067
Date: Wed, 03 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764789773
