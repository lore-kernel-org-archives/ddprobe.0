Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA93154BEC
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735302954; cv=none; b=sIN4+7UWxSblv3YKn+XGcev6OdOwzKKIDB+zOvSady2D2eQjHqpyrct+Ru1BZpPrrT8AM9++E6Dit+potcFgYAifXQPMfDt7S7+QoApdCilzR9HheaIbnGr5Zt8EBSXjU6ojoq5VZF0SnBZ5E6eK+qVxifSFAEuKXaPR2ReIGw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735302954; c=relaxed/simple;
	bh=/5aGL+FjsDdnh3Ss2Mvt15RUKvWpovjf9UkrrGFlyyA=;
	h=To:Subject:From:Message-Id:Date; b=nq31bemAL04jY7WEayw3DM/901+KpFO//9YayEX8r8SRp2tHMcEDpr2vTHCvufawYZh8LEIEX4eL8YN+5TpR7tnSbgb/LWOhpHIvOgowg056p8WxJcZ3b+QWd+qKAywmqES3VoY5V5NN8dgsxa2aBvQ0T467hWnANkmEiX0uETc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEMMyCFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEMMyCFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B9FC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735302953;
	bh=/5aGL+FjsDdnh3Ss2Mvt15RUKvWpovjf9UkrrGFlyyA=;
	h=To:Subject:From:Date:From;
	b=HEMMyCFYE7PliEXqPv5DcthVY0nvqg7cI0ZpBoNePLCQfEZTz3URQ+dP9UPaO+qam
	 13+CjBEfklHV/7IWqc7jb0pMWwkqc9YOL6md2sidC8xv7ssiNpjeUH/30J7H1lyqMK
	 +L8Cxw0ABVnM/g/v1gmyiPozR2Rl/Qqx6bZYb+8Jwd67r8PSyKKLlWi0ntyfaAb6Dx
	 tRRQeg6i9LMHw17Q/rO9jf4A/y3GFKyXLV0whVfgc/fO05wKoQY9394AET58e+5Fxa
	 G4C96z+OnJD8maAyeExPONKpP2XY9Dc9jkG47xsTh4Yr++xQjJoZZ98tDjSO6BoewS
	 NDfFlCWhXmf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D12E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530295358.10756.10167282330722642615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738179bee5278080806903cac64e4079d8c985994e3a47fff84402f1c4846221
Date: Fri, 27 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735302953
