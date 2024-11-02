Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2AF1494B3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730588154; cv=none; b=uOlfsRUSyjQIlCOLfdpvt85XhtkzGTkpVSdgRwqbvBD3USybIfKlN6mv5Gp9lpzHo4wXpngg5Mw2cYlEVp4eceb9nXLsL11g2RreRubIHJKD2XTtM+5ON/xZ/uTZRQgugpFCgFiQpAoDJ+sMKnaVBS07/sf5219X9e0QiD8AT1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730588154; c=relaxed/simple;
	bh=NaTJ+3Qc6HhXCCyD8MnYO8diY3+lwUnDgCekbTEcfEw=;
	h=To:Subject:From:Message-Id:Date; b=XSLDKggGiC2RLaenfUocpHX+ERlITY47nSUyujagLQRz+mTMaGvAqUMZ4ZvOiVMCY7Hu7e0CYyNYjLoWNec7eli0UeTjNc6s7R9a/sUDLQInAbhZoLhxhC7MrBBSY7tuebOOqiEuN5xbQzsFRxlvcJrEmeat13ly5V5hH82c84I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hko6aAXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hko6aAXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F115C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730588153;
	bh=NaTJ+3Qc6HhXCCyD8MnYO8diY3+lwUnDgCekbTEcfEw=;
	h=To:Subject:From:Date:From;
	b=hko6aAXtJMJG5hig+4o42Jq4cKcXvFjY/fWDq141L2K335XDXKDrnWewsEsZZDsPi
	 R/tVEBBO/w8X/VZOipLfvujx3VhSh82GMoM4TGg86IRpbEm02OgDi+3JM2ZNr+hDKK
	 UCiwLobhB3ZQJDBuxQ2mV+dAZCpeF9bvAI80A4S57hgSC9eWzh3F1TVEg42tBLGiX0
	 Y6uaH9UjG+iKKlO8SnAfHpRn0txFWk8bUIFUklHnU/2P8zGaBKOMN8ow3ZCamLYGUH
	 YnU5+RYVvpvhJvgb+WgZiiZkEQaR/XS5g9u5XocDmQX6X4n35mrnhXYCKtf2Co0dXJ
	 NR1mNa9dnbc/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91305E67816
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173058815358.29447.7382021035413449790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ef63fd3b8fee16e62c403903e878b5262d1fd2456845bedd9ba615421f3823
Date: Sat, 02 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730588153
