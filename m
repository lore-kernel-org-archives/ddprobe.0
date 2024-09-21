Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C59320E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726895754; cv=none; b=JJ7aPAvRAaGAeRCCfb1UE7x4DuZwAEUpt+zI5rtV8L23nJqrkAT+Pv/y/ywYcvpIG2eGxSipzJun27IDd1DQFMKbdHgGEg6AoH1jYDUh2tvYeRtz5s3nKr98piH24mw1cEWVYXdtW6minPApJ/O8yoAOkH20lM3yp5zBb36Mibs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726895754; c=relaxed/simple;
	bh=AM8cfIbe+4s7TfDhuonBIGdyFsnaZKV17p35jRZUdmo=;
	h=To:Subject:From:Message-Id:Date; b=ehywK67kAAejgYTb9OG2Up6P7wWTO+pnKVo5GcpwxR0e9zMRDRf91ZY+ICaYLkKBotVp0e4ALXCdxecZda6T1SX87R1JowCEyHc5i7NZl7wyhjneN89HYaIDRql9vMy3ty6843qw9xhl8LX6WKE2+S2koQ47OyuLFB69qfLJekw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7QWwEWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7QWwEWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82FFC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726895753;
	bh=AM8cfIbe+4s7TfDhuonBIGdyFsnaZKV17p35jRZUdmo=;
	h=To:Subject:From:Date:From;
	b=c7QWwEWQckFK+2xzrkqA1gU1nNAdrI33+yYPwqonksCRYAmQlIDUQG7LaWhlxQIaB
	 S/++H8RpkjE2t7a9QgRjbBW+6zY3vGIFpvt+yDN2gt1AEnfMrCK5BQT3x2MkwcJQ85
	 1Hn+8T9UEsu9ZzyVPlrQjH+EXoMkDQuNJS+GqVCWB56ouNidYdRI7PVkYg+PhyOffH
	 3obxl/dZrnuDuTxhbg0NxpQ9qcJIuWoHuUmNCD3ORcs/XD/niXFvTsjyVGSO8i4jTr
	 1Khuea+bTdZE/kU8BHH92ddH/9fVUAP6lo+XyVYJRr/XB80F0CmqMBQ392m0mhpzuR
	 xYHWSUS228Guw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF9CCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689575362.5218.1669993341856731967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b307a1f09b71d11756828fbecdcb67dbc3d5bd48bc3c77e41f716c921466622b
Date: Sat, 21 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726895753
