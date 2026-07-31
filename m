Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0E336212D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785528034; cv=none; b=k3iDalecoF6v2FyIl32+7Cfq3RZMK79xSWdAb1RSYrCm5dLlcAi+c5mY6vt9jQdLTUziSf/rye/VI1BjWcuQRPtS7zwBYNLQd47ae5P3VKuJP2npwMYnm1HVjs6m5SB7MiPuou2WJNMbWL39iKfF4Ul6WOwEBa0o7hnfSPOhYbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785528034; c=relaxed/simple;
	bh=8kmPXJ+OXhBpxcv4gcsfFdgcmQWMbbEET9xB9fAy1Ys=;
	h=To:Subject:From:Message-Id:Date; b=Q/2D1ZhWIVNPaT8TZuTwhZPohMt121M/ZtDULbs9ltaTH2mf2WUHfyvwTnler+gu1lZIOG04VlRdnQBkV9Xt48hejbnMiHcQSJdPJgnFjHEh9hfIpwoTjwP+qdVd1YA4GSCEmlGfX9/eSNlnsMoLq77LJoyHDfmvnR9ZknxyPEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhWmnku4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhWmnku4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01E1C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785528033;
	bh=8kmPXJ+OXhBpxcv4gcsfFdgcmQWMbbEET9xB9fAy1Ys=;
	h=To:Subject:From:Date:From;
	b=UhWmnku4Tc21ijVHpWuAzEFFENhObNcg0PDJyPd6ZMDaho0R77IotigzYdferPake
	 RRNwgRO+cHtxjMoOUjXvE7K0pnbBbAtP0pDDm6xUQIaroF9Pt9bUalYDAQuVA9K5H4
	 aHZWMKvFflbKOoPM5L5h928kpNWjSVzZ5K8n2+6GnvN9jbm3b64Vt0ByxeO+49OtxG
	 kb8p1I4PaBxLtUXfKj3kblBcPvu3cfQgEnMRBRu3ZRrm/5VVOv7Drcnc4s4k0w44d/
	 w65jz/TgXHEzoSqvSJxCRhggW/m+375lQgaIudmbiNlk71CHo8dZZqssz+9onLR+X3
	 yos/o9Mz57EMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF66C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552803368.10165.17477760138281034461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b5edf634b35bab71b42a1d4457466f2032624bb84850aa6d7351d358fa0f8c
Date: Fri, 31 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785528033
