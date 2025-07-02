Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34A31DD529
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751446194; cv=none; b=IUJ18kH6hLXcUztrSXtZW5j6yGiWOeeNg4D+9BrhYE6n191xvB1I11g0BOCqvUQteb6/Zzi1qJq1a0S+mg1CcJJ2Qdwt46OTJztECqjz7gCOIjg2ScRv5H5lAsEybeXThSqVF9vTy7yNSZasPAOMDER+56oeKybSGBuE1UD8hpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751446194; c=relaxed/simple;
	bh=xnaUGzw0K8C+3KROIvP1ARSocWDaC2cmZlrCmoy/qsg=;
	h=To:Subject:From:Message-Id:Date; b=suNgNrRYDvuY+3+83xkAIFGmOLxOixZa1dp4qjFfs3+0QFYDYRo0wBrvBYfYdOYYHaPc22qALky/HtF0/6iKngp6JWuLy3Fi30nsZWvsE/0KWRZzicLeCUOKXHCnKVgnlhEEeQl1ztKIUPkxuQa+pGtsUz4Pdlk/zG7t9Y25ygI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIdZ2jrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIdZ2jrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1DDC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751446193;
	bh=xnaUGzw0K8C+3KROIvP1ARSocWDaC2cmZlrCmoy/qsg=;
	h=To:Subject:From:Date:From;
	b=rIdZ2jrYs/1xFIAVPBqt9iR4plhsbv+FCFyZW1+XIvJMAZpndYDYZ9QLAi49fJPrt
	 0UclfFKVDoemhCfLRrvRvOFm1NMlbDOWZPLqQATAJb2ITXCch87uaaOWR54LUwXwmA
	 wBluCuniQ+0V7rzCJ/ZdRcPtsiUqnlfBUtJ4wAr9uQRaIOg73nYZ1CEnQsW+QadWxU
	 SyJBRmdFN7aVV0lfo1EPbdAVKOY47B6y/niKGdcZEEeoZzO0AmCK4T2qkdi/4MqOMI
	 v+qt2B7mQST1gnx3qLJ9dtLUz191/ENia6DU8aKn9irmc50XVpSPkGNi5Donqbowjw
	 ZdNMsI8axETGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E1C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144619357.18327.17058333940326154944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d635baba044aab2e53e1f1b5373a78c0f69eacf565be8b6a8609d01cd0c3d3fe
Date: Wed, 02 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751446193
