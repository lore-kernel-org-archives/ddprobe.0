Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EB12D46C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757393395; cv=none; b=aFoVYEILMmZPQysT5qSsvwpoy4a3k1EZzQL/fk3gD2XIkapKOscMpir0zXKY9ipyWcIkfaSWLuQQEBODxVzFn8dsNvLIS4dPsVheBGGsj49Ox3Wy3PdeZAGZZRLKkLjPv6dqixByHXOGuAc1+tA+qedpSTjQnbDHdp/nI1ILy64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757393395; c=relaxed/simple;
	bh=WbICDdl6+N5h1DIxIMSOWqniSmCptPP8wzdKxZJwCOY=;
	h=To:Subject:From:Message-Id:Date; b=oUk9f+BUYWUYGuo8mJUOBN9TDxk017WbkRCx2NF7hnd7RyWi6buIT+GWNGTBJwsz1zP1S75IY2L+OJTCMn8v6k/RUNxjHsNrlBoLcnGr79QANfR99F6vuJsKOKR1O11jneyxsVvXCYEm7sfD3h16Muw8SpBbAivbUy4vtwYObdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1woYh7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1woYh7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A651FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757393393;
	bh=WbICDdl6+N5h1DIxIMSOWqniSmCptPP8wzdKxZJwCOY=;
	h=To:Subject:From:Date:From;
	b=N1woYh7ca+VT35bAJEey2854YbDo0uBYzV8QOkYnRFEoOY0M5gKOyxuIAPnw586sV
	 Oao63V9I649u0X+nso554mQf4GhINA90eRIPrZ6YgG+3KAbz434wGubbQVlyU8sk+r
	 pTp+Eq6Y/sy5b2hs4USggyYR/B7oEwAzO0ZUBSuKkyYVTP4XyvnXfrGKfUrD0rsEI9
	 wJynxC/PRI4d9l1p+SrrQBWG9XvGvhwxfGgYv8OrvXYv5P2ILIvih5nb4bD1ifhCMw
	 je8eWwj1M1MyUBuZW9tW/8E2/TbPnwgpG1F68eTD1nkkjmFSlGoa5+lMHMs6NoR99r
	 6gYhFQxOjIAsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5ACAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739339359.3477.18376448668680335836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb7921fff07abd222c82691246022425a06397e3db3a7caf192e9146e2dbc6c
Date: Tue, 09 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757393393
