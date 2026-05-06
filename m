Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6E81EA84
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778094454; cv=none; b=pUtM0d8wEHJpu3/kEVDT2It4aEgtCt1zuyKQ/aXZ8HBxcL02LZhspNagqVYMkdVl2Nt+d5U4skbOH9RVXMmJFj6t+ZF40wBBte8/FsCDVKy/Og/De7eJ2gYCTdm7hIq33DXVZaBzUiNWVy62WdxLDE+8te+4aOC4YZAJvqA8o9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778094454; c=relaxed/simple;
	bh=mwxoYKTLOLZzYUXTMfdV++cUmanQnmGsCZnHnpQwgg4=;
	h=To:Subject:From:Message-Id:Date; b=URN/ZM1DStREVM6a0n01CtdezTEhG/ChcqajrFIjuYVg3y3JnRPcl6lTMNXvzg7Wv88id/oel3+XY4s7+NGxfVYVJoLrOn5PFEjCnWVifKI7HIAfhN/Ou9/rIskVUCff0bnThJ1VFLZFcia6fe/qDjzaWjubNk3T7vZtMJbmz3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIwq0+w/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIwq0+w/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C075DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778094453;
	bh=mwxoYKTLOLZzYUXTMfdV++cUmanQnmGsCZnHnpQwgg4=;
	h=To:Subject:From:Date:From;
	b=mIwq0+w/Ma9hNr0MdI+w3Xng+bfC75+1pH2qU/NpoqCx76pdurSjMN1z0sGkBdkX1
	 i4UOvsgCEkPPc3dJfQQhqeSEI/e8RPn3ceBe2s+F9drsOx9Rq6uiWXXYsu0cuASrDi
	 /l1gvLYBO9BLEVA4DCoEx8JdQUNmuvzJ1ta7lkCoV0Ynn8VCZeBwe5Y81lZCbcSlmq
	 rr2ifFF7POk5OvXiNo0qThkYITO3jGGFPAY5FWZVZMhD5O0Nt80kyxYZL4MqFS0awm
	 GhwUghYRiMji2nW2yLO4ezRbxkmowSXalItOt4F/2TCujW7l2eBAvqyDhv91exqft3
	 UXY6IBuUIBFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC985CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809445369.18183.9084844203003466346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09228f41e825a199aaecde385d4282e84af7fb1d9da7f44e884e7976381e1f45
Date: Wed, 06 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778094453
