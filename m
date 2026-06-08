Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CAC38F233
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780926274; cv=none; b=t9nX75S15a9UyuBvhNKR/Caa0dBA+/cw4miTMT9gndVxsyVWSg3YfdCk9monCghFwgxnKhhTbEylBINuSR8wQcV8fhzeGFpSSc/ojdQmp7sXvR4Dd5G7AsnUMiLDF+kJg31NPdyTn8DOlTTgMJiwZuzsODRUIptLUINCf0ofGYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780926274; c=relaxed/simple;
	bh=sUUMXw5c0b9COiuAQhCW8qnEYS4rZxZrrGJKHTcPSIs=;
	h=To:Subject:From:Message-Id:Date; b=JGqJw5m87HCYh3YrJHiLV70mh0UVj8FrK62EYrVF/DxaCJR5M+t+UKdDCKCwcjC/d66QP/RYqt9UxzD1eLz2VcRX74hz7ktvSA2LnMebpRrfybv1nv7HnMjKfPKbw/OOvSvmkEll1vCBdYCcrcc4njLh+MtLOmEcnOkpW9emzYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNw6d6Zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNw6d6Zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22B6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780926273;
	bh=sUUMXw5c0b9COiuAQhCW8qnEYS4rZxZrrGJKHTcPSIs=;
	h=To:Subject:From:Date:From;
	b=gNw6d6Zc8NSBx3WvmUdBHIyb8Ny+aPgcx9qR2iv5azgTW8PGKXErG0/PcCt9MKkyp
	 dJ8xU0ULkw8gdvd0kvBzcLLWQqXIC4VUmGhRd+7i7VnKG3x9HN6x2ZyEnJ+yUuHPuT
	 0RrMlTraqrbxmphTdJJCFk+TYbwYYwuAnh1y2dIiWF+7LGNn3KLXzZGdBFVo8nhQI6
	 gLKESdcXqblgeKoW6+8gITfcTAyFTEjsNaut8cnaOTsymppJJIKjKTZ1T2lU3yEWPd
	 TbxE2sRFkNA2mG4I98T7XAFAJqmuQfvH2UOjEPBjl4MPhXyLxdgBepzZbe7xnChDXA
	 6BK+6McF4RfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38C5CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092627372.22050.9829752206299527187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3bcd85f8f1bd9bec755c21a9da964415a3774b58d23205c5a4902166251878
Date: Mon, 08 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780926273
