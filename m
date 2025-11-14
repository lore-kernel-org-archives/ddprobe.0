Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458841C862E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763078994; cv=none; b=tGEaVPtC83ebYDoGQh2ZaA1iuPE3UNsLKMBkJ5/XZfTV7ygGEpRc6VriKoqa/yUNlY0sCd9oWa/U5kvGpOtCB0AuRu5y5/0thwTu50SZ23c5UceVvIyLiuKf2ccAgVZUqKVlh05C0MAHLTn7Vb4CI3NYa9S4X8ta/+HmM7qf/Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763078994; c=relaxed/simple;
	bh=B/JSIh+mP1GIpSOvdIKuvouwAtkYI3FFjuJN43+Y2uA=;
	h=To:Subject:From:Message-Id:Date; b=CQyyVq1sqnkHc95nMy9wv3/zy80OdwxVf9zY/hlBzYRWp74ySuIPdF1FzFT/VZYg6XESuIvKus3gt0FohbTHzpGXxMCw410GM81r22Xbfd9sO/eTDCwG5gam1KNYBNYa+V8QtKcPCHSKNBNNM0uzIjWPNrWsytHtFrnLWiya+kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4hZaEES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4hZaEES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5600C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763078993;
	bh=B/JSIh+mP1GIpSOvdIKuvouwAtkYI3FFjuJN43+Y2uA=;
	h=To:Subject:From:Date:From;
	b=b4hZaEESbMLsha8kLbh5yM8xdiPYWW0b6Usz1ptRMS2PCSWWMMWHTgG3c6Dt2cHvi
	 Ps2CyXAPVnkHa2azZm58Cfm/yeWKNsxt9oXw3KzGltccpkKEsI9EXJYTF23sxBoyrM
	 MNkaQ91c4LkIcuySQWarDjBgk3MN5nI8bIN2M3un3DMZnl6V4mV1T2nIGbKQWu2+fm
	 mhDDLIvYsEnzhsXoACPJZk89MhmAzl8wrJIPrlYDXDSHy/p45RYmeGfl8tyulLjodW
	 KnBRS2XmSxOZXhG9o7xEK/DmEte1nhJm6s1NB5FXPonksBnqyVBWEYVeUXnEO0s0XC
	 QAhl4Gifi5idA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99182CDB462
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307899358.19465.1550168658966791818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db77488e8fd36f8094b7d413e63e128900ced1ee577dfcca60ff660c42f23fcd
Date: Fri, 14 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763078993
