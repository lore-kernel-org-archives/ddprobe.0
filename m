Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119AF1C700D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753559394; cv=none; b=udgiTgC3naJoQnegFIn57QVjiUvYB4oZw0jVZDhKVvDm/EmosoCgOl7IldyjpuR/komTDcYKQ77lrjP832e86y/WdPHfdJesvho/o9BAc51sl2D/nZaYEyrylHzI/+ya0vNtSxgpR2WvWReodGBwafSBt7sdPihdZ4L41wBF4LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753559394; c=relaxed/simple;
	bh=oGQa9g5EHYz7/4mrkdhgcBdB76NttFC5gU6TREQWj2I=;
	h=To:Subject:From:Message-Id:Date; b=Fco/5CaouUMvsrIKAdSeZ3JyxwD+H8xnlAacRK0A/V7lj2Q/qOfMZRBRQLBZDLYOob+oKOom90KIbkJXMj/mmZV9suGAGzkwZBvPMgu0S2AuO0oDg70tpkZnQoNvluMGsIxoFtia6+qTU3e9j0gO4Q+d8JNiastZcibI4KySFAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkhI6Pv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkhI6Pv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A570AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753559393;
	bh=oGQa9g5EHYz7/4mrkdhgcBdB76NttFC5gU6TREQWj2I=;
	h=To:Subject:From:Date:From;
	b=tkhI6Pv6TrLKwt/zXS5WwzUUriAr/vHdNox+sxFu8M/nTmEkxfOkXc3VwC4eDTKot
	 msIRzrBjZbFYQmVhem8nc1ERVXqSchbt6ngFWfU+AVqHFgy8uwDnxqjeEeLgRYIF/R
	 nncwfZM3xHKTMEqdSBOcs22QLoMOeLS9MSh7MNBTUS61UzZOleV5HnyOahPAjWhnKu
	 wsDwn/SmtixBPFRyiE9y37ahmveUCGIoOXbQI2tu64WpIEbAG7Slb17nl8GUseDYZo
	 GhR6yuEqa/l98Z8IGEIaH68zscfdjhiFx44tve3dgMrgPfTklLpMxi1eM/uH2YfP05
	 INjEVKFHjVSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92805C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355939358.16812.14033257563153618597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9899e9491db91a0d57dc7351f213582e2c3cb0828bdadb43f283b8dec6b2e5
Date: Sat, 26 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753559393
