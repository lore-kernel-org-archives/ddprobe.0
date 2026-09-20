Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2B5475339
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789939835; cv=none; b=ljCXQNLOsTkkOI6EEBljRGkXz0pUFxUfYuVc0B035vb0btltKkPUH9k6C8FFKt11mkAczXAIxEmIidMFVK8xVys+nq0Dd9XiOZkNv91iyjE7359Jo2VlpTdjYBgtGQ8g0z2GFrMoE1cOQWzv1I4KYWC+iG/ylFooh5fvWZ3cr2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789939835; c=relaxed/simple;
	bh=EDzeo+ungEo6bYQOGo2OTCgDr+rNSXNr+QYerjqK5so=;
	h=To:Subject:From:Message-Id:Date; b=iIa8T3N6DKFUZC6UiwdVm2DmpBRESgZIYsVuPevspuUElhkI1L5foUVGdHrNoYdtXU2wRFc3JXwT4h8oHjaropk6nUOswBXsDCPT6cp2FVoiJTb8saM2KyIuUBzl1pjMCdk9krfNdg4ej1NgevppXZEOxzfGORnVk2LzsGxoTFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGrBYeN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGrBYeN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE27C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789939833;
	bh=EDzeo+ungEo6bYQOGo2OTCgDr+rNSXNr+QYerjqK5so=;
	h=To:Subject:From:Date:From;
	b=JGrBYeN+dX+ix0V2dIGvSF/a7O5aIV5UrOGIOkf1gG+u6cp0FzTk4pMHxR2lyOeFw
	 FXxzlvZ+TkNAN6qGMCZEypKxrBKmdI+SEZE8/BnzG4bfn2kY3/UmpmJ5DYzbhKVBKX
	 Ks8S+o6SDsebPFTzvhpUXeoaCDWTB47+KT+JQB0luDbpq/zv+J0UT0fjIBlIx44VQB
	 sWTKvCJsC5JYLI1LYX2UAuCmPu0jHnDvRmY6cAqUbwTn+8TQXA1dIzkdj7eTZPv7Mc
	 smHQbOpsO0Tc+azTOf++n9GY1kFb4LJsgJiW1nkQAdLfDvpbefS/OpuQL8rof+7fq9
	 VUL2zRwt1qwog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A7C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993983369.10500.4809064138574986614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571319b8b5ac46462031635f194d46a089d7a9972379c0a0a0379192b065c05d
Date: Sun, 20 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789939833
