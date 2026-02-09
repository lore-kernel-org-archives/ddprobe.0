Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2D4225408
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770642234; cv=none; b=KjDi53PjbhiAvBSy8KQzYrS68ki31wGaVQjj5QTofUrrJjc6MseSLLkB63YJLOETvVESZ9fzxHHHFJkYTMt3bHpkX+c64cTkVFNInYLCGx1dKWUW3DlVZRmRr34PHBEWQJfsE6vtZ6WOAP0vHTJz+585kthmIHIUzIebTfgQZ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770642234; c=relaxed/simple;
	bh=kpD+5vdSdAg6QAVoEij6l89q4ju3H92MUxL3+FeHmFc=;
	h=To:Subject:From:Message-Id:Date; b=ePWuDeUoLbjFT1bj6xXxwZOFrr9Uo+bZRvK78IAY5BBNZs3l3EYjMpYQdCixIl1BhQ+cXpvpZWt/XRcMi0paK2rr9QC6MGmgcsJl82IDUATX0/a/u2j8u7YXI+3DUMJdpi5uoc/dQ9lYwnqphOxJtAHYVp+30F+bZh+dxgpuO+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwdH7HPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwdH7HPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ADEC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770642233;
	bh=kpD+5vdSdAg6QAVoEij6l89q4ju3H92MUxL3+FeHmFc=;
	h=To:Subject:From:Date:From;
	b=RwdH7HPS0SUIJFDHWzI5QZlZFD/+hWd3kiL3SYsTZ+Kj2UtyerdcpgWLHG8x5wSrc
	 0r7UDPQvTgQ+mJ4UgwPCcaaEs3NQWg26lz2PJFw56rGIE8Yn822Zj06imKPGiJPNKI
	 HFEcrw2QHFE/99+KpmfFA62DIhSmBVMKJbHCdEu1YinhfXFGM8My5L5z3q/L3rwA4S
	 8kmJHBMyaKq87qaH8lA2M3cqPkbK3mJQK+Bn6I1qhTN7QNgxlS1OYfRNety0kbU4qb
	 Piry+tAs6RTjHnZhqISieitzJx+FATlnEEmYYj2lnkI5Z24xvM2nDD0RjH7EaNKtuw
	 KsvEyVQxMLAUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62B5E81BB1
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064223366.24213.17619769300163321138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03b5a5db11d19f774f3537684c4ae7b1021b09c97f23e0f6d96671aa5ebffad
Date: Mon, 09 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770642233
