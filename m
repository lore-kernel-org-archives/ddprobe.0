Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF5A47D92F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779109234; cv=none; b=GNwNT1sIGZVFttsJpVjz18nf81XwqTYmG3wkaRgGHiqvWUwh0msS/Gn+6a1w7Bp2NJ4eYBe3fJ7Fb87ahq5a5HVUSg7G6LPZCdIxOT4gOinW81Dpwc/Ys4IOkvvxnZvdGFgvHSlpPc149C627pChCtuJ15kSzzXoOFrEKGHhFmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779109234; c=relaxed/simple;
	bh=ip639CDj6kCQToJWjkWynrrph2peIF/RVguXfzaSHzY=;
	h=To:Subject:From:Message-Id:Date; b=dS3B5xQLqf2gl/lPcWS2qqwe4tFNUeZajzAsm8CmgY643s43Y+uDbHNgzw9jDNvZvUbacybAOYpl5/v2OWlKs0+yudY3qsrI42gPOdHtriqNG5l84UzBY76vx5wIcXjzNMTJbjcD2ER6owDl6oMRy6U/qo5E3xdVWLLybx1IGjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgCbjf/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgCbjf/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F66C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779109233;
	bh=ip639CDj6kCQToJWjkWynrrph2peIF/RVguXfzaSHzY=;
	h=To:Subject:From:Date:From;
	b=NgCbjf/23jFVXCADNBByhB/CpwPSnX2i9w0L9cUC+5HOw/oAdRYcE2VtGeSr37PA4
	 7Ub1oaCNFwGF7stI/OlFlz4VmssQY7ZcG51zCn9DDz4BvvqvGxdnHARqJAfOPwp/JD
	 PSSHaAiaIEeEmuG+6bx6RYXDAkt+7oZRa6Q5ot2lv0DMbl7K/gWT6ltm79OtYf0LMe
	 JY9WXHwsWmb7maioJd6+7tnJ1wyPsZmeuylqibTlPHkta527qnSd3kjms4h/AffOBn
	 uSqcnAZvP4gp+6N9zWqEJeWC6kftPdrQD+8PY5AdG5HYIfUEWHNOXcf27rUBGo6Iij
	 4kPGyAjjk/0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BD4CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910923372.11178.15409277720726801350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a015feaab0fa97b75901ec2a6779543c82030335456555f951c27b96be61d0
Date: Mon, 18 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779109233
