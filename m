Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15899238166
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762850994; cv=none; b=TE4poaolv6Upqysa8k1rlCoC+1IAdyCT25XGUznzIxQXEnc40fB11JSwPNQg7vu0pm5B0q6QZnASwaiqWDecpxdkaKgBRwr9LnRNlRju+E7ftJBiiqX3fBG4A4jFpz6p+KuO+kJZf7uwiyOWrzNx9Qz3kH29IKF8q6/kxACQGPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762850994; c=relaxed/simple;
	bh=3qAyM8loZcM7cPWfN890v7/pCxjTSZIrcLQmQVIeCiE=;
	h=To:Subject:From:Message-Id:Date; b=T5X5O4f/8eupg+0kDO1pttzPYl7idl0zor4Y/RfcnjaDDRRZG7HMrgtjLaqY35N5hxqHm9n3Q8SB4mCGNSEKM89yXRTilV8LPu4IdWxt1Jb7yLhUTtvAJlVil7HGCfYLHmv7PrbEYy1MV9TGUlF/jYXt+er3ARPrPBJjF9FFvyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTZc+Hva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTZc+Hva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9B3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762850993;
	bh=3qAyM8loZcM7cPWfN890v7/pCxjTSZIrcLQmQVIeCiE=;
	h=To:Subject:From:Date:From;
	b=cTZc+HvaTsW7noaIUZdjulihHoKNNVae6emKExsKt+/agEmoGTgT8GOwSCoHNTaHl
	 PXr+j03VXG8Occ5pxTmieOqfY8+EUf7Brxu62JSbd8NMDB92t/bjecsD5R0o+xE5ql
	 hCvqwGfNORPNDypgt3iQvTy6Qtbaanxx3FB89vYRucfV+C7PevvlwvAePGcsmJ31u/
	 vwivIsrG7ftio4kmXn9/nNL0kEdo83wKO1Us7MUxtB7Ug3ULZuiGDpZ/XpJxu9Nj3I
	 A+dRfbjpVXbPf7j/KT+FJv3SnT/7L6wGzCa2l5lCYI/NfRp+1g91HDg36X330PhIiY
	 Za27oLEN5bfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCBACCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285099363.4107.11861654011686758121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf02ebe1c17946916cc3ae6a956b49bc145521849703e94646b11fdc7fecdc4
Date: Tue, 11 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762850993
