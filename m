Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1252D879E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784992234; cv=none; b=Cih/oteitWjxOzQII6Gl5bZ/zMxPTy45yFNC38LB0EgRFnyipOjy9+qGRugI5ZCQuID6UkjWTH6k2NSojT/ApdmhBkFfJqbfVf1NSDh0K2pPl2f7HdgMoPwKXG7bJfp3bFHxLJUVk9aKelY7whYOKyLmPGtVJ3xaIkq5MDUfWIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784992234; c=relaxed/simple;
	bh=FoKzEb9UJv7/Tutx8Y/y2PtxvhYygZWWO54v1nwjFFE=;
	h=To:Subject:From:Message-Id:Date; b=Rz9SDSq48BQsURVwcaBSh1SDK63JpA/QaEHo/XGaB80Y4f3ub2Yv7YTrHRjIBoN3PgQNSw/2J4t8W85IVGrZC61K5x1z1d5EeSyIypaD24JfOzNP75OonifWnxovosxmMmEqr4SoDmKQ3La09SyoLI5f1cezuWy5n1ne2yHXUtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+1hZspo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+1hZspo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAC7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784992233;
	bh=FoKzEb9UJv7/Tutx8Y/y2PtxvhYygZWWO54v1nwjFFE=;
	h=To:Subject:From:Date:From;
	b=C+1hZspomp6tOqnAmof5LLDt9tElSeKqQV2TFx+bWWngaSjz1+1JgRGG2pmVVamal
	 LnJpTTtzgvVWlgN8Ticblg9mmpQ7eGGhuPetfV8KjlT7xHo8vyYXC2LMBG/D20iXly
	 sKjXtfS72JlKqaU0CKh64X4lZZnhccVf2MpVQuDH54MjLyFKgJqIEynk0nagowkncd
	 YALLpH+/4gUWHFU9P25XTTHXyXRLnJS85ueLQ/H9UsF4PB1Lw+YSZRuaV3vvCGoNaJ
	 dWqGFbjRtg0Bx+IPjIR6e5l57/3dp/nVKejQXEgg2liKsfaz+CBvWZHPstZATQ2ZWS
	 57boXtQ3xnnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9710C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499223368.12714.6990770337755481882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e815e95b14630ca69f57972726ea506443bb6bbeb4fbdb327828873633fa5d
Date: Sat, 25 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784992233
