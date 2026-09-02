Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842F94AD7ED
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788387634; cv=none; b=P13Hoo5kZgXyTC7+sbqUzodsBhBhuj3zrR1pMFybVjBOMyt8E9Vs93jq3cSfNM6WO3dI0S/At8EK2q9mVeXuMX2qg1JXHF2CdpNdLnniHrlev6Fr3wvrS+j4AoFuVoc3bwJvdmqim1zHUTurcNkiA4Y7YyWRG9vv4y9VF0zptDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788387634; c=relaxed/simple;
	bh=gsAsWmUy6CM4+C+Chc24nMbNXpG9oLDWYgj8CftXkVA=;
	h=To:Subject:From:Message-Id:Date; b=nYsw6e6fpUjoj4PPW/wbMdndPAMwyCe20vm5BSTL22UktoGkpgmEVIQD+DJlj2t/Jl8uvagOgbTSXGocY+ALaC30H2PY3Ua/BbTVyk8fKeV0GZbHPJ7rQkYrPdMWWrva+Fg6VjWW3vrz7mQg0UkNwbn0n43Wu9oQYzcFAgVsZEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5pjRXND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5pjRXND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBA3C4AF09
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788387633;
	bh=gsAsWmUy6CM4+C+Chc24nMbNXpG9oLDWYgj8CftXkVA=;
	h=To:Subject:From:Date:From;
	b=K5pjRXNDG+dDi9AEoM/M76vF/RyAMMiGmO5tJ89syu2RJJeTTYPMrXjbTq4ucFSLi
	 B0nW5OGChDXOSDnvWBds0tQfWYaKkBSmn+I+iDDy+0Xey916Ld9vvgY5T1t+9SYb2Q
	 DwlKBol6+CQLLma+0TsAOnTPl0YMyqs0pROsf3i6x3p0oEOCRuPj1IIQ1//QfKCmwF
	 dtCht9kCp42HNQw2vURFkcvng5r9oqWHDkdHF9/wHEVHXIO7o/i0xtcYjUSsTioh3O
	 WJh42uwCR+hVqQ9Nnt0bpB3p6o+3pZ8nFc3VdN/cn1ayxkSrA3fvmErX+44wSeWk9C
	 Pm5F4kkgXv2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D1C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838763368.3550.17461146320116405934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa44a078e5e70bffe9235961a543529c86ec39216a2b648d198a7d02d5868f25
Date: Wed, 02 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788387633
