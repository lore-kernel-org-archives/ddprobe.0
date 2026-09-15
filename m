Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121733921DD
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789438834; cv=none; b=mEfJekUKGnjW+LvLN8zfhxWfuboCvoas7ZHxDIEUj7SRhQcIK9DKsBS9umjujSoOKF67I3Wh+D01icrmskX3pxOBV0bORyFx1aulJSQtmZfZttgDgccAJ+/5hlqTfLykwIv0+AOFF8VpvzTpct+bkiJ+qDBAMRHL04hcZxxq6wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789438834; c=relaxed/simple;
	bh=6ECwl4PIazu1jhKE7LOX7gAAABL8F/MC08NzCN3n6PQ=;
	h=To:Subject:From:Message-Id:Date; b=FgiobUUB8Bxvvb7WFVCkmAwmBcgBe+ZdecisY4CwsghxESLZrN9r6+q7lExw930JtG9DWzHgvSpIT/pyEnn9lnkJF9aP8wbiTik2Fkqm/dI6XmDMARz+07UlruIxdZD66fuBl4IftwENQvehp4rWAufoXsw9Hi4GNsDJo85lOW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8jnf3/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8jnf3/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D69C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789438833;
	bh=6ECwl4PIazu1jhKE7LOX7gAAABL8F/MC08NzCN3n6PQ=;
	h=To:Subject:From:Date:From;
	b=T8jnf3/ZbYYJybKOOpGY009nhg28ZNTFppYpiccRgbm5eEEFLg4/N8yMkLVox9OyI
	 pUS23FZalVQ/ruVloI6rTUBpFxFL7SdkNKpNITiC0SK/Bid4GrqQDJ7620NAsmtkHD
	 HA3s6e2ujWJlvktoQPloji7GJin9vqtUBKPPkvQZ4iFvt12C81XqVAU67mMRV4kUg6
	 q6dPiQuQd1NXve+lg71pM4IqNYZWc7YTlkZ/28Y2ex6CfWeGxq8s9KqkH+RKHULg31
	 RRXaIXA5rDuqBCn95jXxkIbPOeOgmKED8BnQgduG6Ef9ZAPoeaKkTESjA9XAAaJ7So
	 /VmrDMIs5epzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A912FC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943883368.7221.16328933763502482277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fcf3e09d48aec98ca721de1a441fd94d3ea61d2323af78119b851cf7a641d3
Date: Tue, 15 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789438833
