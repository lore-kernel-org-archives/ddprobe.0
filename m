Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138ED2EFD8B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752164994; cv=none; b=oaFiQnTVebBBrvmgAtMz++wxMidKSleiH2DHFc2DZJB+Kktmn97T3eEH0BiB3MO4HkApe60NAh3ynFFkdZcfnJuZ6rd0vy1Fzt4F8+on2NeCuN7oRFdPc/R1Hzcw8CSh1pheF6lt0eRr7JlqLqWFsYt4e/8/2Lx0bRcUwWReGfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752164994; c=relaxed/simple;
	bh=K8Mbek1rYtyPfdi6BPE5IXQgldfv1Adm17eJkJP3wc0=;
	h=To:Subject:From:Message-Id:Date; b=WnoDY7c7Tg+ZDy01hGiYPbtsYpN9wfUFqWpDsZAloJTmGbUItYyG7iBoVeip+eia9JJ3opMHa7HDiB2P1biyCygYas7hR0xS5eETnIFNedqz83Hk1u4cTRJwyLs+Gs65PleTlZ2GAhytnOffOueWGrQLdELvtMO9FXkGMxneUl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBkVP9Xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBkVP9Xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01C3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752164993;
	bh=K8Mbek1rYtyPfdi6BPE5IXQgldfv1Adm17eJkJP3wc0=;
	h=To:Subject:From:Date:From;
	b=FBkVP9Xapjq0YQX0mpEGpB0r0FPFLOWWpABB+jrfNHvi8JWvwCEnah50/6q2OzACw
	 jfMaFLqmdJj/pQAkDEDxGC2zE4HIEfGavnuF86oF9NrhlUcK7ERQdPrgPP7EmSXmA+
	 lDP2w68ku/A1F4PgwcgR3UeRn8Vwlu/ZzILlD1nH6oV46Y4815lyIa4Djko5czgXTe
	 AA2KG7/Z6ptTxfudbzfv3HIIJXKn4JTSQP1ICwgQyIPoTabnEufVKpHFxnWY6iOtJw
	 mUXvLe43vpcg2pOezPlLfD33NjowK0q/rdl0IqdjfPqjWt4pno2gS/eb0Ygz3der5H
	 VfKjjKMdvvkFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F966C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216499357.1834.5838755895188059037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7ac1fb9c01eb0c0bc61926d52de8d44cc568526144b71f1daf40200cc70099
Date: Thu, 10 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752164993
