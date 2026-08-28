Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A2C330650
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787947234; cv=none; b=m5OE4ArVhd+L2RqjwVcjLCo2S0IsXV9CK0STegARGGNJTMtEzC3ldHy0u8iLswQJ/H2a9fppT9nCau1ZtRWoBZ2VzBtUQbvtUoMrQuJLj2Lq8IvoVZPMJv0enrhfF7DIZZbEZAgxJWJcfNpZgaDqbDzDZT8/Mt7xZBwBPrauvr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787947234; c=relaxed/simple;
	bh=lBrKxZCwLTF/JVOVz6E2pA+feVB7yzQDh6AaM16YUCk=;
	h=To:Subject:From:Message-Id:Date; b=M8eUfhMsRWAWNgrXzIjn5OVFD3ISXWGgDk6DNbf3y9iwN5H8rqk4sU0CtHu7A3N1IHStRC8wRJQAXLQ+w16dxJ0cggFpOXgfdM+TTdoGOS0PekYaf2B8FXzs6JqbICbiUGBcvRcYvNaBzTFz6dqbadU5d7AlrDdoNypbwvkFcfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeV19iDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeV19iDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3315C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787947233;
	bh=lBrKxZCwLTF/JVOVz6E2pA+feVB7yzQDh6AaM16YUCk=;
	h=To:Subject:From:Date:From;
	b=TeV19iDbr3OLX/ztpt8GlHOxlhEJRwdHRSRKOKS+0LA6pX+yAx/yTRQbS/UopbtQX
	 vU3F+JbT8SgFJfqQ2Iv4X+G1BTuFqGp/gSHsRFAat92bPIT2Lbtuu3Rq61JYvC072j
	 hB2g5HUOA8ZVCmxeXZ/pqddMe9Y+KEIKjIzXTlYOXe4QRdNfR8+//ncn/UxVD1QYru
	 sz/KPZBLZOZO6kc547HxUEvoIo+H8sIogn3D/5Vt8oDDqFGWZAcSpjh7vGAJ9NUmhT
	 iJCNFdqfL2/Y8MPJSPc9/PIo8Y3Xjj80ko2YPK3y/nHUEwmYlUj2Z8sJx72/Hwa7Z/
	 +qsejC8LUw7xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AB9C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794723368.26169.749499505496023365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372ae73067e37988f1c97e0410a6dcfa3cbf6a0272beab64655f8e7c1bce527c
Date: Fri, 28 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787947233
