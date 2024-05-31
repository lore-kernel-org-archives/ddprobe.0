Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6755381A
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717174463; cv=none; b=srAIWK/vqvCv099kteeL54gV4MpApqpdAZocqxpgh3SRPP4872IfK8v+URBkB0IZUJHj5c0Zee2qH/msLcyU9eEqtTiOaYtfS5Rlaf2Q43oQ+Dv6E9mwPYPl0TPk9JJb2t5LMvl7cll96VuuslWYu+3TP9W5nYEisZSS004z+4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717174463; c=relaxed/simple;
	bh=nt7kn7p/9kFhcFiLy1gB24dexd53q/wjfhjJEtXbkOY=;
	h=To:Subject:From:Message-Id:Date; b=dDgqryBTDSgI0S5Z73IPecMMJcWtOVy9MI/X52i30V86fD7oAKIYPWMKbi8f92eqgG5WsClQrcqqEl+gWjHwQERgyS5looysd7gkp04R6gcHN7MZUpQnL8/9SZjpfV3KvGVjas0uR8U9VgXcfC1QEujMek7zo/wiq4F3o3SweAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUrS13MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUrS13MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE69FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717174462;
	bh=nt7kn7p/9kFhcFiLy1gB24dexd53q/wjfhjJEtXbkOY=;
	h=To:Subject:From:Date:From;
	b=VUrS13MQEXr/D/tBzbG5fWP3iMY+8Cin1HlvECr6xmh3X7OaAfxMxnOSIMwtSDrVz
	 J3g9eAcQP+GBZPlj9vef3maINoK5uKztX0dtFBvDFk6Ywi7mQaNbUEDkJq5qSOHmbN
	 nKa+KV3xztFYQ48zwDNhYp/LSeRNy+5z8IucNYPa7rm15njIDvmeG28XrgYsfKg4C2
	 YssxhlQ9/bAnnHWp6AY7HIS2RWwhISs0bonfiOGF0xQ4pJlzNh20SOHBhdb6axxczW
	 pYkWzs0vUJC+9yUiTAFjn0gayo/9f4p1oknuKsSIma7WtXzmOD4MuVnRW/6IN85GWI
	 rnpON/LmBWyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5DCC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717446275.3449.17447179918366615112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2adeb81449d34dda6d24e140b67c691352ad1b2435c5402f729ceb9b18c61aa8
Date: Fri, 31 May 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717174462
