Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603DD2C11F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788041434; cv=none; b=ePyvJvL0DuP1oyDWvlxcjuqy0hl/AFhW6AGoSIDA8+HjJ/clW8HDDn0eKuWaDo1mcCfq+d5Bi/XfdU7QU35ssDOyg3YGkKk6Kn0t6An8wIva/6BbEUlwNkKrLCX0j9zkmw44l8k88G1epqwmFGiVpoOGL50fVpsyHAUPMxsgIFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788041434; c=relaxed/simple;
	bh=5jo3+Zg9ZAyevmoVTjw4HigQU6bQt0pzp81JwbdVyko=;
	h=To:Subject:From:Message-Id:Date; b=WKYz/5KcbibO9vmlcpB4qeM3DVJnFf8WwxUG2JG7New7NMk/1n4gI4uibb8rcywoUFzq+AFFyAsr5tzYunHgsQcrgCfAGM8lvlAG3Zn75cpCZAu/ZdKYtRLkDc/hf5EpRHtFGhi2pu8A/l65pms5/dcRu7PDhaUprvE1+2xZJD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAKgsrNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAKgsrNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93E1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788041433;
	bh=5jo3+Zg9ZAyevmoVTjw4HigQU6bQt0pzp81JwbdVyko=;
	h=To:Subject:From:Date:From;
	b=sAKgsrNGqx6c0/dTK8uAogHY7KGFFxImibXclW6MTOBhc0CtlrIB3Aj5Dz28531fd
	 ekl/b936oey/R7OdKPOERZj+aROXyTtcmztvWkdnAIRd4+rPxyxqZu3LCTLT3EQjnH
	 9z/M5JiARxvFL2X7cPVOijM06rVPirpDB3FZBDL4CZacUz1blDCc/ssgHQDqGk/PD5
	 t9BpyjKM4v/oIX8i9OrhTEH62KVJJUpCBH9kgQE315gyRR5EUWLVylLeYIV92O9GBD
	 dX/cXeuXCghuKM9PIlL1qb8B9Lz5SWmCkUifi252oq0estd6pt0thAp9mcHEgTQwqa
	 IibIhL4xXShUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B102DC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804143368.27322.13732005059499056237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dee6c49450820fe749985bd872b0d78d2dd28704e40421bd7f18ed3b71f179
Date: Sat, 29 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788041433
