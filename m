Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FBE489882
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785903034; cv=none; b=XlDz999u96H66b1sGREhODsh4mXkn9GGiJOGUZN6PDRg9vVB7r0uNE57bUCrjPUTN55NBtrV2oY/3D1M4NE1XCSAvcldptM2bo9F2HkBvIjfjs2uuOV0HgEbQ9VOXasESEfPcLC4c5zp2Z/ukRhbyu7wwFplJLDH2t1iuYy1MgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785903034; c=relaxed/simple;
	bh=Uev+bz/dsZi7DGykMLRRTb+SDs2gE+dll6IOVussSrM=;
	h=To:Subject:From:Message-Id:Date; b=B0lvwFxzGEViyKYmi0vnGvAnVgLefjsalDcxj4dv6aYKFNGrZGp8avLJ8NAFt0q0TMVRoVBkHTg+YFz30LcPMZWTNEg738rVSVgcS4SucygFHNNzvAxek56lUuiQcw0HynSCDsPHEUnJDp/w/WOUIxUOdefR1RiW6rfr232rgrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggCMNGxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggCMNGxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87E3C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785903033;
	bh=Uev+bz/dsZi7DGykMLRRTb+SDs2gE+dll6IOVussSrM=;
	h=To:Subject:From:Date:From;
	b=ggCMNGxkWYwXhdd/59G6kYWn02N60bIFUZmndiO6jRPc788pRehVpCMsOWIJC8kE2
	 imei1bq/8f3sD9dnyr0G6l1WTevu1YMJiozlDLTjdJJ4vSH0ZdcfeC//SXC8rQJCD1
	 yGoZnFZcqgOucEOBd79iYbEdp77bV+nl2SsOJkhmpzoGV4xTzkkGEhf2WP/YcewoMJ
	 FGSSzYFUEoPx54L/Om+sQqLAxvbKTXeUaD9M1TJMlrEIEw3ZxDm2hRfDen8nW2Ebqv
	 fOV273VvywVKEEJdy/vQ0FGLwqyPg2U+Hm6WX6yv42Sp0raFh/Nds63ts/SCLmKMAn
	 YDJmIsddRtNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16B6C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590303371.18748.1716097602362748985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bd187d48d98adddb890eef761a70f9e2c1316e2d9555644e4dadcf4e6695e6
Date: Wed, 05 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785903033
