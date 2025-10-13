Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7084F34BA39
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760326194; cv=none; b=gpbZ2cqblKbGfoUd7CnnJ91zyS+MxBLcOGbnFfokul9VrxfHPjz6npAfE7sblsF5531tVNF7+R1uCj6m3cyzuNc5PJ4u5//ri2el55j6vj82/NRcwVetUC49h95rlpEffjTwxnQnYWj1eP0jcVs83/uTpYhguLeuoyHvppKZMH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760326194; c=relaxed/simple;
	bh=Zy1DRpaixk7RU8O/BzsbghXhX5d3b+n8HEIXqmZH41I=;
	h=To:Subject:From:Message-Id:Date; b=OGRDuooAQ4zZFqhr5nTkaIPeY4n9YyvYeVxG2/52Yo7txrziPpl0NV2J911XIEhSRzqBrAaqw8xX1ehLEh9FZxXksbx93ETdTBupI5YqKH4KQkQxlNevNTIy5O6cjFwHTP0cJwVByU3Qf1GZg8SIz3f8Qz/I3LwjHV8NSUIqACo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDpfZ1uK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDpfZ1uK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7013C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760326193;
	bh=Zy1DRpaixk7RU8O/BzsbghXhX5d3b+n8HEIXqmZH41I=;
	h=To:Subject:From:Date:From;
	b=mDpfZ1uKu8EE73OLjpM9g7pgQvMe03j1NbWf1mqWrg2yy22jBhu/orA7kRdcKbEwQ
	 qwFlbELfl6i/QnyprX/TPqvMeXmrMkMEoBSE9WuHUuh/fKdtRv/rbwVkezeMxLDYmE
	 Um+el4aA8WiSL3eTwUTUoavf/SaROwQRWoIPb70cUdhTdBLkSXmxcgPi/YwQ5kzW/S
	 MBfK36WoqfCaKuQtpL3s6+3gaR7Xfn6EdsyhFsBxb4Ev8tJ7oZWDXFmKweeKcNpF0E
	 dPO543jsIJno7aPcnsWR76dFx1nsLFID3zZZBYvzgImEcHudRDg3kdWYDNhKVyMtJI
	 uosy0UVrPkYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94047CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032619357.21720.4210654554325293575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9cd101d1868779de2298983a5740fadf827d5a2dcfddec09c8056007929751
Date: Mon, 13 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760326193
