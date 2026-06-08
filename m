Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4536A3C379F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780927474; cv=none; b=joWP5u9fZNn8HTBoRdq4/dBvADbjf5nHKGXMVm2IuFxX7e2f9FpNpC2cbMx9zlqfx2YTcSkG2x3R2mhLcHfGFgcP/cDZHOX4T8c+6EkuAV+hcSq5qmsx9Dgw28znGRA0sPvtMK9JYml9clzkyvzKOg0BYqOoGabuh/iN5BIRnoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780927474; c=relaxed/simple;
	bh=Q162trbg8IFGFaCWXjB8yYScDzyhFB1pdWGhJNQ3BfA=;
	h=To:Subject:From:Message-Id:Date; b=V+1aRK5rkjrOV2e414YDZvqF0Yz8lVKtxfqELmyNjPlxecrzI29mb28As2rvylstA8A7AvFlK+f9fjMiusVmwgAC6BfGIA/jYqfgHCIO2BV9IfX5tq4Z7Qrzf3BRFGTWHVDM9UYoBQvNdOwOEEUJE0VVsTkvUxoXg8/pQggDNTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icYJSmd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icYJSmd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBB5C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780927473;
	bh=Q162trbg8IFGFaCWXjB8yYScDzyhFB1pdWGhJNQ3BfA=;
	h=To:Subject:From:Date:From;
	b=icYJSmd/3xK/JBc5KeVLG3ST3HMJvW0XQ2Md20xWMYS3JqLRZH10tJXSyFjpG7Y3J
	 oXPTw6RJxEHvCv9zgoBK06zjUv4QuCu+LcIz2jb8pnQKgfTGlZ50YNCwcrWUIcR/0e
	 k2z282XTnd4qtb7jwj/E/WfhAixH7f39fb/0AmsEh7DlVliYiuDdsrqjkqRG1Q6e1s
	 YVsuIVEqIkPQgmgL4PfI6p8t61M72MELL2lu55BUy+qraPr/PQFLo3QjSyxBGnLzwa
	 HLuogdd8uwf8xFD69gsAaP1VykY6QlOmRDonbf2etujXutEGKRGelr/19pISgI/kxg
	 goNgGD2G1c0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA087CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092747368.16400.2541371783022971705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e897f59a8f79273184ab965c8c7cf64cdc7342848a442e28bed6d705166cd061
Date: Mon, 08 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780927473
