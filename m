Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F21B8F5B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766203434; cv=none; b=aYbGcEZIJCHhfYXwoaNFz0PbxIiVadmb6KnkuHiCUmduiO5CgZBO4c2K/J0bR326F20ii+DNJmmgd4Off4WljMVM3WyuKICKrO/HtXZRGQ2ex7XFzqj1DepH74d7NJS85rrDNRRc3JJBYqknt+7YyuDM8Lc0rEqQZOq/O9uZ/UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766203434; c=relaxed/simple;
	bh=1mB9a7D3U9Xyc2fj0FMpI4+ibIqSUjj3YLs/JU17FzE=;
	h=To:Subject:From:Message-Id:Date; b=Juak+c43ZOl/L4nz5BK+VF7J8Hl8/2VaOu1BKtwwP0KsLSvAOb7Ry+yOZ4uy3wAdHHTFTUW+QMWfCjJNknkHCVcjTedtpW/iSPYoA8swSRVCbrW/6p6ppW3HqxyjQD2kEtlV4mG1W3xlswjcnEVmoU5KTLNXI5e0ZELml4o9X9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8SBAY7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8SBAY7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C4BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766203433;
	bh=1mB9a7D3U9Xyc2fj0FMpI4+ibIqSUjj3YLs/JU17FzE=;
	h=To:Subject:From:Date:From;
	b=W8SBAY7m4MMhTxvhoPj1nDYvvEff3tCJfyI0G560LBQ2Sf0IDP+uMcdySJsjz7M7A
	 afqx2uragWobYABjWLAKoSo477Is6Kc1zPTenx1FyjSb3o8KcEYRfhHbifq4mn9sMd
	 y5FiBZ2kjTvhR9vByq9NRY0o/l66wb1Bjm+9jAJm+jTCMK+EowxSfWZiyPLPeFLTkq
	 4nLsZilfWY79f9nz73UhuShOc6ylui7JL1Tdf1U5fXPqkNGzQ+BWZSB6kfva2U4HC0
	 U2DfHesCee6YUOWN4jvAO11Uggpljre+lPF9ALTsYk98MIeYDM014kckf7yQZe/f30
	 tcFNUGm6u3eAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C3E668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620343358.28022.15374387595061215535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30375adc1d6f3447cad39ca43898707b9921f754f0352c803a2e93f0ca891c19
Date: Sat, 20 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766203433
