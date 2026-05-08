Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4D31BC08F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778208454; cv=none; b=fFEJy6gH/+ZNGkcL+As4P7/dsayEOEZ/Z22j5eO3+xlpU3quHwhaQL8+x+pd+689SGlE+nRgYLfxOmEmS/6ixQhN4VGxHTqLvykYPLtQxofP/HS21rsSaPQ1bdF36ydIQmNDkAphoIUuDLyB74Ek8lWtBp/9+m8rQUXGO+OuqIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778208454; c=relaxed/simple;
	bh=V9xo/b4sZQw+Md86InPOkhoVutMaaiudOHmIP81Li60=;
	h=To:Subject:From:Message-Id:Date; b=HCnQmNZiBQxSq9xmopWHR3sj+m2shqAhwVE/j/F+3/0fwWfidz1A5NDbmB5Yaf+wIIgXnOqmRQCagfKJ9/10eWWj6xB6S13WUqXLa6kKNaMN27PdxgMy6SAuUBBVlgeBr2Ql0yOH8sfAOt9zI4QUwV0GtnZ9m3eQSowBzblq1qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEtEB4gq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEtEB4gq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13B0C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778208453;
	bh=V9xo/b4sZQw+Md86InPOkhoVutMaaiudOHmIP81Li60=;
	h=To:Subject:From:Date:From;
	b=bEtEB4gqT7gLGDadb+HDI+ICMKU3GJEufXjAWm3OWqC+nqBxS/FLlL9r0x5/XTH8y
	 U8o5EIu+YQd6IGDphCzRZt6yqz6Pf/ndrJxYdr7ROtNfmXK1Pjyt7ilfCxm/yZzsYm
	 z5jLY8DKSl5AJL+V0cXr+7PiPzrqkp0Ir4z9FksSCd2up2HOb4yF7nyBL0y6Pb3MLm
	 PE6focH3aPV84xY2ZVNXVOoGEQsvbkzYMaxAgOpHaK2N4+za7BeIHyU+LMdsG4mUYl
	 S+jP58iISLFocXhfdB6INdjtvbjdSeWcIrcX4i6IR8l2VEEQAvkYwIFz2HLXdrSaFS
	 /6KXaW4LL+8DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3C5CD3427
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820845368.4661.7879187735211232645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7f3a156bb798a0fa24d0f3e5cb509b7268bf607049faf83214ce1aac725864
Date: Fri, 08 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778208453
