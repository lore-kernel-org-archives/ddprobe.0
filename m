Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4EDA1E520F
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756023593; cv=none; b=BELTZ908vaK9bAwRy4AUiSL7yTWebEfuuFGje5sDMrYt4paT2JpUOKJCfPt3PhRBWnhlyjCAV34FjYE500iab4cMajSppd5AJE1SdfE+7vuYmVOwZre9oSx1NcgSpZ8ws1vOUFATXs3E6us+3qm7lGAjvyc69JGzIUZWMZPCFJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756023593; c=relaxed/simple;
	bh=TmxL/9+1pivx1VkH4O9zQ/8VPDi+8bev8V8Fugh6SYU=;
	h=To:Subject:From:Message-Id:Date; b=m1MkcqvPwuTDHFwWW32wdtaxPgKGrTsea5MA9oKOKqcI4tvSgA7v/pL+QIRHChu4s85uQATPFvs107lel/9v3dM47B4UpEO0KBliHWWeATyd7nX15XORH2kdzPnCys+YptrraNPGD023xoKQxx1U9qt+FC3aafpAokUGynQfDe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D66N/efg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D66N/efg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31ABC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756023593;
	bh=TmxL/9+1pivx1VkH4O9zQ/8VPDi+8bev8V8Fugh6SYU=;
	h=To:Subject:From:Date:From;
	b=D66N/efg55tyCt2mrl61j3yBhSrfZfnanmGRxKX8JT5fnYxvIPvxcKyft+KsEnr0l
	 hNzRsHVLey8Aps915RH5yJaHrmdHCifQIqBoWPMJzzGdiiNIW3K0BUs71aXmxuEH05
	 IBknVNAxw1HR2UOjTxv+eOxTf/FLvm6fet+G9l0uQPZiirkuI0nUSk9ARYmWSMyMsE
	 QZnpZLYbWEEZ/ZEsiik4qnGjofsMPwGLosA6J7n/l3w80OR8iSjok0ofkWx/eaZfIf
	 EG2smw2NFaYPVfGjyYllVNN2RGkyGDUEkFn48D/edLIQq9/FBnRjZngRZ3B7v9db2n
	 iM6rGVHc/q4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F847CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602359357.18539.11217037074340233726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f2f0d18c2703d335dea98e810cd59d23149afbae6af53afcf14f31b08a747d
Date: Sun, 24 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756023593
