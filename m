Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2466C28DF25
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754083194; cv=none; b=WvR6GHDVOgirY3j2oLiMNINOF10K4HN3LfwgToJF7bqbOTES1YyC/tMPVfEAH0K0Yunf8X6znvTMJsYpyZBOVgsEt35IGkbBWLBKQrGiuFT7DPFB589YBfUvLQLadIMEveKWl0K8/XD295x4QKi8JWBlQGmIHAbEYLS4MCHR/mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754083194; c=relaxed/simple;
	bh=ILqkBlnEUDHhjSv3l9yPTXECDPZvzMojmd1rV/W7akg=;
	h=To:Subject:From:Message-Id:Date; b=QdrM1luWW2DUcnaoSyu+ZZeM3za+rLdJtjwhWGfV9UUn98oj03eFbK0KNIDcJqelZeg+x6GLxWG9ZSLG6Vzs2E8yBVwiN6n6mSFLFh5bZTFxEbztRC1YOjdYdndUpfyDogYZpfr9liq0M4fTQu8BiwFGvzaYeqHBWFq6YUFvE8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXOqqLY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXOqqLY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB098C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754083193;
	bh=ILqkBlnEUDHhjSv3l9yPTXECDPZvzMojmd1rV/W7akg=;
	h=To:Subject:From:Date:From;
	b=XXOqqLY/ywBjNhCD9fWJnUVwjni/XJo3UC6W9m644IluhPzAuIKJiYuKd83H01g6m
	 BWHOejNiM+ovRsDVDlIbl4dX9agtA4ENXj55u+Uh5QKXdjPbot2GZSqUnC+/SYqSPp
	 9W6+L0JHWFnPYTggK1Z/O/S9gJvgitBemALdfOWdytVdEOS9CMtJ0PI7L5wkLjWVNA
	 wdT1PVggHt0r0lhX3gKU7Cpn7prUwFBvVn5cZDrPNwOy/n8Xi+d8r7vhTK2i3obTc0
	 WUCzOzt0rkWApjxU9hFAXVPWb0Re8jQtBHar2g5eYqCZlFFQ4sR7SUZhtzCw8SHH4y
	 bpwqC+2NCJEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B348C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408319362.23295.5445937598937819150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb76c171b04bfce87b8915f7f5d4e756a44aa9d44a690441cc7a1a66bb56f94
Date: Fri, 01 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754083193
